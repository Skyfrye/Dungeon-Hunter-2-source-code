; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034df7c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZNK6glitch2io11CFileSystem9existFileERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::io::CFileSystem::existFile(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&) const
; decoder-mode: arm
0034df7c  10 40 2d e9                                      push {r4, lr}
0034df80  14 10 91 e5                                      ldr r1, [r1, #0x14]
0034df84  00 30 90 e5                                      ldr r3, [r0]
0034df88  0f e0 a0 e1                                      mov lr, pc
0034df8c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0034df90  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056c058, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystemC2Ev
; demangled: glitch::io::CFileSystem::CFileSystem()
; decoder-mode: arm
0056c058  40 10 9f e5                                      ldr r1, [pc, #0x40]
0056c05c  40 c0 9f e5                                      ldr ip, [pc, #0x40]
0056c060  00 20 a0 e3                                      mov r2, #0
0056c064  01 10 8f e0                                      add r1, pc, r1
0056c068  0c c0 91 e7                                      ldr ip, [r1, ip]
0056c06c  28 20 80 e5                                      str r2, [r0, #0x28]
0056c070  04 20 80 e5                                      str r2, [r0, #4]
0056c074  08 c0 8c e2                                      add ip, ip, #8
0056c078  00 c0 80 e5                                      str ip, [r0]
0056c07c  08 20 80 e5                                      str r2, [r0, #8]
0056c080  0c 20 80 e5                                      str r2, [r0, #0xc]
0056c084  10 20 80 e5                                      str r2, [r0, #0x10]
0056c088  14 20 80 e5                                      str r2, [r0, #0x14]
0056c08c  18 20 80 e5                                      str r2, [r0, #0x18]
0056c090  1c 20 80 e5                                      str r2, [r0, #0x1c]
0056c094  20 20 80 e5                                      str r2, [r0, #0x20]
0056c098  24 20 80 e5                                      str r2, [r0, #0x24]
0056c09c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0056c0a0  2c 8a 42 00 18 09 00 00                          .byte 0x2c, 0x8a, 0x42, 0x00, 0x18, 0x09, 0x00, 0x00

; FUNCTION 0x0056c0a8, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystemC1Ev
; demangled: glitch::io::CFileSystem::CFileSystem()
; decoder-mode: arm
0056c0a8  40 10 9f e5                                      ldr r1, [pc, #0x40]
0056c0ac  40 c0 9f e5                                      ldr ip, [pc, #0x40]
0056c0b0  00 20 a0 e3                                      mov r2, #0
0056c0b4  01 10 8f e0                                      add r1, pc, r1
0056c0b8  0c c0 91 e7                                      ldr ip, [r1, ip]
0056c0bc  28 20 80 e5                                      str r2, [r0, #0x28]
0056c0c0  04 20 80 e5                                      str r2, [r0, #4]
0056c0c4  08 c0 8c e2                                      add ip, ip, #8
0056c0c8  00 c0 80 e5                                      str ip, [r0]
0056c0cc  08 20 80 e5                                      str r2, [r0, #8]
0056c0d0  0c 20 80 e5                                      str r2, [r0, #0xc]
0056c0d4  10 20 80 e5                                      str r2, [r0, #0x10]
0056c0d8  14 20 80 e5                                      str r2, [r0, #0x14]
0056c0dc  18 20 80 e5                                      str r2, [r0, #0x18]
0056c0e0  1c 20 80 e5                                      str r2, [r0, #0x1c]
0056c0e4  20 20 80 e5                                      str r2, [r0, #0x20]
0056c0e8  24 20 80 e5                                      str r2, [r0, #0x24]
0056c0ec  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0056c0f0  dc 89 42 00 18 09 00 00                          .byte 0xdc, 0x89, 0x42, 0x00, 0x18, 0x09, 0x00, 0x00

; FUNCTION 0x0056c0f8, declared_size=284, range_size=284, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem29createAndOpenFileFromArchivesEPKc
; demangled: glitch::io::CFileSystem::createAndOpenFileFromArchives(char const*)
; decoder-mode: arm
0056c0f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c0fc  08 30 90 e5                                      ldr r3, [r0, #8]
0056c100  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0056c104  00 50 a0 e1                                      mov r5, r0
0056c108  01 60 a0 e1                                      mov r6, r1
0056c10c  02 20 63 e0                                      rsb r2, r3, r2
0056c110  22 21 b0 e1                                      lsrs r2, r2, #2
0056c114  10 00 00 0a                                      beq #0x56c15c
0056c118  00 40 a0 e3                                      mov r4, #0
0056c11c  04 00 00 ea                                      b #0x56c134
0056c120  08 30 95 e5                                      ldr r3, [r5, #8]
0056c124  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0056c128  02 20 63 e0                                      rsb r2, r3, r2
0056c12c  42 01 54 e1                                      cmp r4, r2, asr #2
0056c130  09 00 00 2a                                      bhs #0x56c15c
0056c134  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0056c138  06 10 a0 e1                                      mov r1, r6
0056c13c  01 40 84 e2                                      add r4, r4, #1
0056c140  03 00 a0 e1                                      mov r0, r3
0056c144  00 30 93 e5                                      ldr r3, [r3]
0056c148  0f e0 a0 e1                                      mov lr, pc
0056c14c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056c150  00 00 50 e3                                      cmp r0, #0
0056c154  f1 ff ff 0a                                      beq #0x56c120
0056c158  70 80 bd e8                                      pop {r4, r5, r6, pc}
0056c15c  14 30 95 e5                                      ldr r3, [r5, #0x14]
0056c160  18 20 95 e5                                      ldr r2, [r5, #0x18]
0056c164  02 20 63 e0                                      rsb r2, r3, r2
0056c168  22 21 b0 e1                                      lsrs r2, r2, #2
0056c16c  10 00 00 0a                                      beq #0x56c1b4
0056c170  00 40 a0 e3                                      mov r4, #0
0056c174  04 00 00 ea                                      b #0x56c18c
0056c178  14 30 95 e5                                      ldr r3, [r5, #0x14]
0056c17c  18 20 95 e5                                      ldr r2, [r5, #0x18]
0056c180  02 20 63 e0                                      rsb r2, r3, r2
0056c184  42 01 54 e1                                      cmp r4, r2, asr #2
0056c188  09 00 00 2a                                      bhs #0x56c1b4
0056c18c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0056c190  06 10 a0 e1                                      mov r1, r6
0056c194  01 40 84 e2                                      add r4, r4, #1
0056c198  03 00 a0 e1                                      mov r0, r3
0056c19c  00 30 93 e5                                      ldr r3, [r3]
0056c1a0  0f e0 a0 e1                                      mov lr, pc
0056c1a4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056c1a8  00 00 50 e3                                      cmp r0, #0
0056c1ac  f1 ff ff 0a                                      beq #0x56c178
0056c1b0  e8 ff ff ea                                      b #0x56c158
0056c1b4  20 30 95 e5                                      ldr r3, [r5, #0x20]
0056c1b8  24 20 95 e5                                      ldr r2, [r5, #0x24]
0056c1bc  02 20 63 e0                                      rsb r2, r3, r2
0056c1c0  22 21 b0 e1                                      lsrs r2, r2, #2
0056c1c4  10 00 00 0a                                      beq #0x56c20c
0056c1c8  00 40 a0 e3                                      mov r4, #0
0056c1cc  04 00 00 ea                                      b #0x56c1e4
0056c1d0  20 30 95 e5                                      ldr r3, [r5, #0x20]
0056c1d4  24 20 95 e5                                      ldr r2, [r5, #0x24]
0056c1d8  02 20 63 e0                                      rsb r2, r3, r2
0056c1dc  42 01 54 e1                                      cmp r4, r2, asr #2
0056c1e0  09 00 00 2a                                      bhs #0x56c20c
0056c1e4  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0056c1e8  06 10 a0 e1                                      mov r1, r6
0056c1ec  01 40 84 e2                                      add r4, r4, #1
0056c1f0  03 00 a0 e1                                      mov r0, r3
0056c1f4  00 30 93 e5                                      ldr r3, [r3]
0056c1f8  0f e0 a0 e1                                      mov lr, pc
0056c1fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056c200  00 00 50 e3                                      cmp r0, #0
0056c204  f1 ff ff 0a                                      beq #0x56c1d0
0056c208  d2 ff ff ea                                      b #0x56c158
0056c20c  00 00 a0 e3                                      mov r0, #0
0056c210  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056c214, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem19getWorkingDirectoryEv
; demangled: glitch::io::CFileSystem::getWorkingDirectory()
; decoder-mode: arm
0056c214  0c 30 9f e5                                      ldr r3, [pc, #0xc]
0056c218  0c 20 9f e5                                      ldr r2, [pc, #0xc]
0056c21c  03 30 8f e0                                      add r3, pc, r3
0056c220  02 00 93 e7                                      ldr r0, [r3, r2]
0056c224  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0056c228  74 88 42 00 68 0e 00 00                          .byte 0x74, 0x88, 0x42, 0x00, 0x68, 0x0e, 0x00, 0x00

; FUNCTION 0x0056c230, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem15createXMLReaderEPKc
; demangled: glitch::io::CFileSystem::createXMLReader(char const*)
; decoder-mode: arm
0056c230  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c234  00 30 90 e5                                      ldr r3, [r0]
0056c238  00 40 a0 e1                                      mov r4, r0
0056c23c  0f e0 a0 e1                                      mov lr, pc
0056c240  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056c244  00 50 50 e2                                      subs r5, r0, #0
0056c248  05 40 a0 01                                      moveq r4, r5
0056c24c  07 00 00 0a                                      beq #0x56c270
0056c250  04 00 a0 e1                                      mov r0, r4
0056c254  00 30 94 e5                                      ldr r3, [r4]
0056c258  05 10 a0 e1                                      mov r1, r5
0056c25c  0f e0 a0 e1                                      mov lr, pc
0056c260  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0056c264  00 40 a0 e1                                      mov r4, r0
0056c268  05 00 a0 e1                                      mov r0, r5
0056c26c  c4 c4 f6 eb                                      bl #0x31d584
0056c270  04 00 a0 e1                                      mov r0, r4
0056c274  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056c278, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem15createXMLWriterEPKc
; demangled: glitch::io::CFileSystem::createXMLWriter(char const*)
; decoder-mode: arm
0056c278  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c27c  00 20 a0 e3                                      mov r2, #0
0056c280  00 30 90 e5                                      ldr r3, [r0]
0056c284  00 40 a0 e1                                      mov r4, r0
0056c288  0f e0 a0 e1                                      mov lr, pc
0056c28c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0056c290  00 50 a0 e1                                      mov r5, r0
0056c294  00 30 94 e5                                      ldr r3, [r4]
0056c298  05 10 a0 e1                                      mov r1, r5
0056c29c  04 00 a0 e1                                      mov r0, r4
0056c2a0  0f e0 a0 e1                                      mov lr, pc
0056c2a4  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0056c2a8  00 40 a0 e1                                      mov r4, r0
0056c2ac  05 00 a0 e1                                      mov r0, r5
0056c2b0  b3 c4 f6 eb                                      bl #0x31d584
0056c2b4  04 00 a0 e1                                      mov r0, r4
0056c2b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056c348, declared_size=36, range_size=36, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZNK6glitch2io11CFileSystem15getAbsolutePathERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::io::CFileSystem::getAbsolutePath(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&) const
; decoder-mode: arm
0056c348  10 40 2d e9                                      push {r4, lr}
0056c34c  08 d0 4d e2                                      sub sp, sp, #8
0056c350  14 10 92 e5                                      ldr r1, [r2, #0x14]
0056c354  00 40 a0 e1                                      mov r4, r0
0056c358  04 20 8d e2                                      add r2, sp, #4
0056c35c  36 e7 f6 eb                                      bl #0x32603c
0056c360  04 00 a0 e1                                      mov r0, r4
0056c364  08 d0 8d e2                                      add sp, sp, #8
0056c368  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056c3ec, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem21createEmptyAttributesEPNS_5video12IVideoDriverE
; demangled: glitch::io::CFileSystem::createEmptyAttributes(glitch::video::IVideoDriver*)
; decoder-mode: arm
0056c3ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c3f0  5c 00 a0 e3                                      mov r0, #0x5c
0056c3f4  01 50 a0 e1                                      mov r5, r1
0056c3f8  00 10 a0 e3                                      mov r1, #0
0056c3fc  6a 1f ff eb                                      bl #0x5341ac
0056c400  05 10 a0 e1                                      mov r1, r5
0056c404  00 40 a0 e1                                      mov r4, r0
0056c408  da d9 ff eb                                      bl #0x562b78
0056c40c  04 00 a0 e1                                      mov r0, r4
0056c410  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056c414, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem15createXMLWriterEPNS0_10IWriteFileE
; demangled: glitch::io::CFileSystem::createXMLWriter(glitch::io::IWriteFile*)
; decoder-mode: arm
0056c414  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c418  14 00 a0 e3                                      mov r0, #0x14
0056c41c  01 50 a0 e1                                      mov r5, r1
0056c420  00 10 a0 e3                                      mov r1, #0
0056c424  60 1f ff eb                                      bl #0x5341ac
0056c428  05 10 a0 e1                                      mov r1, r5
0056c42c  00 40 a0 e1                                      mov r4, r0
0056c430  ef 27 00 eb                                      bl #0x5763f4
0056c434  04 00 a0 e1                                      mov r0, r4
0056c438  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056c43c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem19createXMLReaderUTF8EPNS0_9IReadFileE
; demangled: glitch::io::CFileSystem::createXMLReaderUTF8(glitch::io::IReadFile*)
; decoder-mode: arm
0056c43c  00 00 51 e2                                      subs r0, r1, #0
0056c440  00 00 00 0a                                      beq #0x56c448
0056c444  89 27 00 ea                                      b #0x576270
0056c448  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056c44c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem19createXMLReaderUTF8EPKc
; demangled: glitch::io::CFileSystem::createXMLReaderUTF8(char const*)
; decoder-mode: arm
0056c44c  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c450  00 30 90 e5                                      ldr r3, [r0]
0056c454  0f e0 a0 e1                                      mov lr, pc
0056c458  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056c45c  00 50 50 e2                                      subs r5, r0, #0
0056c460  05 40 a0 01                                      moveq r4, r5
0056c464  03 00 00 0a                                      beq #0x56c478
0056c468  80 27 00 eb                                      bl #0x576270
0056c46c  00 40 a0 e1                                      mov r4, r0
0056c470  05 00 a0 e1                                      mov r0, r5
0056c474  42 c4 f6 eb                                      bl #0x31d584
0056c478  04 00 a0 e1                                      mov r0, r4
0056c47c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056c480, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem15createXMLReaderEPNS0_9IReadFileE
; demangled: glitch::io::CFileSystem::createXMLReader(glitch::io::IReadFile*)
; decoder-mode: arm
0056c480  00 00 51 e2                                      subs r0, r1, #0
0056c484  00 00 00 0a                                      beq #0x56c48c
0056c488  76 23 00 ea                                      b #0x575268
0056c48c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056c4a4, declared_size=32, range_size=32, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZNK6glitch2io11CFileSystem14createFileListEv
; demangled: glitch::io::CFileSystem::createFileList() const
; decoder-mode: arm
0056c4a4  10 40 2d e9                                      push {r4, lr}
0056c4a8  00 10 a0 e3                                      mov r1, #0
0056c4ac  2c 00 a0 e3                                      mov r0, #0x2c
0056c4b0  3d 1f ff eb                                      bl #0x5341ac
0056c4b4  00 40 a0 e1                                      mov r4, r0
0056c4b8  d6 1f 05 eb                                      bl #0x6b4418
0056c4bc  04 00 a0 e1                                      mov r0, r4
0056c4c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056c528, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem24changeWorkingDirectoryToEPKc
; demangled: glitch::io::CFileSystem::changeWorkingDirectoryTo(char const*)
; decoder-mode: arm
0056c528  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c52c  01 00 a0 e1                                      mov r0, r1
0056c530  01 50 a0 e1                                      mov r5, r1
0056c534  09 8a f6 eb                                      bl #0x30ed60
0056c538  28 30 9f e5                                      ldr r3, [pc, #0x28]
0056c53c  01 40 70 e2                                      rsbs r4, r0, #1
0056c540  00 40 a0 33                                      movlo r4, #0
0056c544  00 00 54 e3                                      cmp r4, #0
0056c548  03 30 8f e0                                      add r3, pc, r3
0056c54c  03 00 00 0a                                      beq #0x56c560
0056c550  14 20 9f e5                                      ldr r2, [pc, #0x14]
0056c554  05 10 a0 e1                                      mov r1, r5
0056c558  02 00 93 e7                                      ldr r0, [r3, r2]
0056c55c  ef 87 f6 eb                                      bl #0x30e520
0056c560  04 00 a0 e1                                      mov r0, r4
0056c564  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0056c568  48 85 42 00 68 0e 00 00                          .byte 0x48, 0x85, 0x42, 0x00, 0x68, 0x0e, 0x00, 0x00

; FUNCTION 0x0056c570, declared_size=12, range_size=12, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem18createAndWriteFileEPKcb
; demangled: glitch::io::CFileSystem::createAndWriteFile(char const*, bool)
; decoder-mode: arm
0056c570  01 00 a0 e1                                      mov r0, r1
0056c574  02 10 a0 e1                                      mov r1, r2
0056c578  9d 11 00 ea                                      b #0x570bf4

; FUNCTION 0x0056c57c, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem20createMemoryReadFileEPviPKcb
; demangled: glitch::io::CFileSystem::createMemoryReadFile(void*, int, char const*, bool)
; decoder-mode: arm
0056c57c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056c580  00 40 51 e2                                      subs r4, r1, #0
0056c584  08 d0 4d e2                                      sub sp, sp, #8
0056c588  02 80 a0 e1                                      mov r8, r2
0056c58c  03 70 a0 e1                                      mov r7, r3
0056c590  20 50 dd e5                                      ldrb r5, [sp, #0x20]
0056c594  04 00 a0 01                                      moveq r0, r4
0056c598  09 00 00 0a                                      beq #0x56c5c4
0056c59c  00 10 a0 e3                                      mov r1, #0
0056c5a0  38 00 a0 e3                                      mov r0, #0x38
0056c5a4  00 1f ff eb                                      bl #0x5341ac
0056c5a8  04 10 a0 e1                                      mov r1, r4
0056c5ac  00 60 a0 e1                                      mov r6, r0
0056c5b0  08 20 a0 e1                                      mov r2, r8
0056c5b4  07 30 a0 e1                                      mov r3, r7
0056c5b8  00 50 8d e5                                      str r5, [sp]
0056c5bc  4a 0b 00 eb                                      bl #0x56f2ec
0056c5c0  06 00 a0 e1                                      mov r0, r6
0056c5c4  08 d0 8d e2                                      add sp, sp, #8
0056c5c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0056c6b4, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZNK6glitch2io11CFileSystem10getFileDirERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::io::CFileSystem::getFileDir(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&) const
; decoder-mode: arm
0056c6b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c6b8  2f 10 a0 e3                                      mov r1, #0x2f
0056c6bc  10 d0 4d e2                                      sub sp, sp, #0x10
0056c6c0  00 40 a0 e1                                      mov r4, r0
0056c6c4  02 00 a0 e1                                      mov r0, r2
0056c6c8  02 50 a0 e1                                      mov r5, r2
0056c6cc  db ff ff eb                                      bl #0x56c640
0056c6d0  5c 10 a0 e3                                      mov r1, #0x5c
0056c6d4  00 60 a0 e1                                      mov r6, r0
0056c6d8  05 00 a0 e1                                      mov r0, r5
0056c6dc  d7 ff ff eb                                      bl #0x56c640
0056c6e0  10 10 95 e5                                      ldr r1, [r5, #0x10]
0056c6e4  14 20 95 e5                                      ldr r2, [r5, #0x14]
0056c6e8  06 00 50 e1                                      cmp r0, r6
0056c6ec  00 30 a0 a1                                      movge r3, r0
0056c6f0  06 30 a0 b1                                      movlt r3, r6
0056c6f4  01 20 62 e0                                      rsb r2, r2, r1
0056c6f8  02 00 53 e1                                      cmp r3, r2
0056c6fc  07 00 00 3a                                      blo #0x56c720
0056c700  34 10 9f e5                                      ldr r1, [pc, #0x34]
0056c704  04 00 a0 e1                                      mov r0, r4
0056c708  0c 20 8d e2                                      add r2, sp, #0xc
0056c70c  01 10 8f e0                                      add r1, pc, r1
0056c710  49 e6 f6 eb                                      bl #0x32603c
0056c714  04 00 a0 e1                                      mov r0, r4
0056c718  10 d0 8d e2                                      add sp, sp, #0x10
0056c71c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0056c720  08 c0 8d e2                                      add ip, sp, #8
0056c724  05 10 a0 e1                                      mov r1, r5
0056c728  04 00 a0 e1                                      mov r0, r4
0056c72c  00 20 a0 e3                                      mov r2, #0
0056c730  00 c0 8d e5                                      str ip, [sp]
0056c734  62 ff ff eb                                      bl #0x56c4c4
0056c738  f5 ff ff ea                                      b #0x56c714
; mapping-symbol data/literal pool
0056c73c  94 83 37 00                                      .byte 0x94, 0x83, 0x37, 0x00

; FUNCTION 0x0056c740, declared_size=260, range_size=260, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZNK6glitch2io11CFileSystem15getFileBasenameERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEb
; demangled: glitch::io::CFileSystem::getFileBasename(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, bool) const
; decoder-mode: arm
0056c740  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0056c744  2f 10 a0 e3                                      mov r1, #0x2f
0056c748  14 d0 4d e2                                      sub sp, sp, #0x14
0056c74c  00 50 a0 e1                                      mov r5, r0
0056c750  02 00 a0 e1                                      mov r0, r2
0056c754  02 40 a0 e1                                      mov r4, r2
0056c758  03 70 a0 e1                                      mov r7, r3
0056c75c  b7 ff ff eb                                      bl #0x56c640
0056c760  5c 10 a0 e3                                      mov r1, #0x5c
0056c764  00 60 a0 e1                                      mov r6, r0
0056c768  04 00 a0 e1                                      mov r0, r4
0056c76c  b3 ff ff eb                                      bl #0x56c640
0056c770  06 00 50 e1                                      cmp r0, r6
0056c774  00 60 a0 a1                                      movge r6, r0
0056c778  06 60 a0 b1                                      movlt r6, r6
0056c77c  00 00 57 e3                                      cmp r7, #0
0056c780  10 00 00 0a                                      beq #0x56c7c8
0056c784  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056c788  10 20 94 e5                                      ldr r2, [r4, #0x10]
0056c78c  00 70 a0 e3                                      mov r7, #0
0056c790  02 20 63 e0                                      rsb r2, r3, r2
0056c794  02 00 56 e1                                      cmp r6, r2
0056c798  17 00 00 3a                                      blo #0x56c7fc
0056c79c  00 00 57 e3                                      cmp r7, #0
0056c7a0  1f 00 00 1a                                      bne #0x56c824
0056c7a4  10 50 85 e5                                      str r5, [r5, #0x10]
0056c7a8  14 50 85 e5                                      str r5, [r5, #0x14]
0056c7ac  10 20 94 e5                                      ldr r2, [r4, #0x10]
0056c7b0  05 00 a0 e1                                      mov r0, r5
0056c7b4  14 10 94 e5                                      ldr r1, [r4, #0x14]
0056c7b8  0d e6 f6 eb                                      bl #0x325ff4
0056c7bc  05 00 a0 e1                                      mov r0, r5
0056c7c0  14 d0 8d e2                                      add sp, sp, #0x14
0056c7c4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0056c7c8  04 00 a0 e1                                      mov r0, r4
0056c7cc  2e 10 a0 e3                                      mov r1, #0x2e
0056c7d0  9a ff ff eb                                      bl #0x56c640
0056c7d4  01 00 70 e3                                      cmn r0, #1
0056c7d8  10 20 94 15                                      ldrne r2, [r4, #0x10]
0056c7dc  14 30 94 05                                      ldreq r3, [r4, #0x14]
0056c7e0  10 20 94 05                                      ldreq r2, [r4, #0x10]
0056c7e4  14 30 94 15                                      ldrne r3, [r4, #0x14]
0056c7e8  02 20 63 00                                      rsbeq r2, r3, r2
0056c7ec  02 20 63 10                                      rsbne r2, r3, r2
0056c7f0  02 70 60 10                                      rsbne r7, r0, r2
0056c7f4  02 00 56 e1                                      cmp r6, r2
0056c7f8  e7 ff ff 2a                                      bhs #0x56c79c
0056c7fc  06 30 e0 e1                                      mvn r3, r6
0056c800  02 20 83 e0                                      add r2, r3, r2
0056c804  02 30 67 e0                                      rsb r3, r7, r2
0056c808  0c c0 8d e2                                      add ip, sp, #0xc
0056c80c  04 10 a0 e1                                      mov r1, r4
0056c810  01 20 86 e2                                      add r2, r6, #1
0056c814  05 00 a0 e1                                      mov r0, r5
0056c818  00 c0 8d e5                                      str ip, [sp]
0056c81c  28 ff ff eb                                      bl #0x56c4c4
0056c820  e5 ff ff ea                                      b #0x56c7bc
0056c824  02 30 67 e0                                      rsb r3, r7, r2
0056c828  08 c0 8d e2                                      add ip, sp, #8
0056c82c  04 10 a0 e1                                      mov r1, r4
0056c830  05 00 a0 e1                                      mov r0, r5
0056c834  00 20 a0 e3                                      mov r2, #0
0056c838  00 c0 8d e5                                      str ip, [sp]
0056c83c  20 ff ff eb                                      bl #0x56c4c4
0056c840  dd ff ff ea                                      b #0x56c7bc

; FUNCTION 0x0056ca70, declared_size=264, range_size=264, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem17addPakFileArchiveEPKcbb
; demangled: glitch::io::CFileSystem::addPakFileArchive(char const*, bool, bool)
; decoder-mode: arm
0056ca70  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056ca74  00 c0 90 e5                                      ldr ip, [r0]
0056ca78  00 40 a0 e1                                      mov r4, r0
0056ca7c  02 80 a0 e1                                      mov r8, r2
0056ca80  03 70 a0 e1                                      mov r7, r3
0056ca84  0f e0 a0 e1                                      mov lr, pc
0056ca88  0c f0 9c e5                                      ldr pc, [ip, #0xc]
0056ca8c  00 60 50 e2                                      subs r6, r0, #0
0056ca90  16 00 00 0a                                      beq #0x56caf0
0056ca94  00 10 a0 e3                                      mov r1, #0
0056ca98  28 00 a0 e3                                      mov r0, #0x28
0056ca9c  c2 1d ff eb                                      bl #0x5341ac
0056caa0  06 10 a0 e1                                      mov r1, r6
0056caa4  00 50 a0 e1                                      mov r5, r0
0056caa8  08 20 a0 e1                                      mov r2, r8
0056caac  07 30 a0 e1                                      mov r3, r7
0056cab0  5d 0d 00 eb                                      bl #0x57002c
0056cab4  00 00 55 e3                                      cmp r5, #0
0056cab8  07 00 00 0a                                      beq #0x56cadc
0056cabc  18 a0 94 e5                                      ldr sl, [r4, #0x18]
0056cac0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0056cac4  03 00 5a e1                                      cmp sl, r3
0056cac8  0a 00 00 0a                                      beq #0x56caf8
0056cacc  00 50 8a e5                                      str r5, [sl]
0056cad0  18 30 94 e5                                      ldr r3, [r4, #0x18]
0056cad4  04 30 83 e2                                      add r3, r3, #4
0056cad8  18 30 84 e5                                      str r3, [r4, #0x18]
0056cadc  06 00 a0 e1                                      mov r0, r6
0056cae0  a7 c2 f6 eb                                      bl #0x31d584
0056cae4  00 00 55 e2                                      subs r0, r5, #0
0056cae8  01 00 a0 13                                      movne r0, #1
0056caec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056caf0  06 00 a0 e1                                      mov r0, r6
0056caf4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056caf8  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cafc  0a 30 63 e0                                      rsb r3, r3, sl
0056cb00  43 31 a0 e1                                      asr r3, r3, #2
0056cb04  01 00 53 e3                                      cmp r3, #1
0056cb08  03 80 83 20                                      addhs r8, r3, r3
0056cb0c  01 80 83 32                                      addlo r8, r3, #1
0056cb10  07 01 78 e3                                      cmn r8, #0xc0000001
0056cb14  15 00 00 8a                                      bhi #0x56cb70
0056cb18  08 00 53 e1                                      cmp r3, r8
0056cb1c  08 81 a0 91                                      lslls r8, r8, #2
0056cb20  12 00 00 8a                                      bhi #0x56cb70
0056cb24  00 10 a0 e3                                      mov r1, #0
0056cb28  08 00 a0 e1                                      mov r0, r8
0056cb2c  8d 8e f6 eb                                      bl #0x310568
0056cb30  14 10 94 e5                                      ldr r1, [r4, #0x14]
0056cb34  00 70 a0 e1                                      mov r7, r0
0056cb38  01 a0 5a e0                                      subs sl, sl, r1
0056cb3c  00 a0 a0 01                                      moveq sl, r0
0056cb40  02 00 00 0a                                      beq #0x56cb50
0056cb44  0a 20 a0 e1                                      mov r2, sl
0056cb48  fa 84 f6 eb                                      bl #0x30df38
0056cb4c  0a a0 80 e0                                      add sl, r0, sl
0056cb50  04 50 8a e4                                      str r5, [sl], #4
0056cb54  14 00 94 e5                                      ldr r0, [r4, #0x14]
0056cb58  08 80 87 e0                                      add r8, r7, r8
0056cb5c  3b 8e f6 eb                                      bl #0x310450
0056cb60  1c 80 84 e5                                      str r8, [r4, #0x1c]
0056cb64  18 a0 84 e5                                      str sl, [r4, #0x18]
0056cb68  14 70 84 e5                                      str r7, [r4, #0x14]
0056cb6c  da ff ff ea                                      b #0x56cadc
0056cb70  03 80 e0 e3                                      mvn r8, #3
0056cb74  ea ff ff ea                                      b #0x56cb24

; FUNCTION 0x0056cb78, declared_size=204, range_size=204, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem5clearEv
; demangled: glitch::io::CFileSystem::clear()
; decoder-mode: arm
0056cb78  70 40 2d e9                                      push {r4, r5, r6, lr}
0056cb7c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0056cb80  08 30 90 e5                                      ldr r3, [r0, #8]
0056cb84  00 40 a0 e1                                      mov r4, r0
0056cb88  02 10 63 e0                                      rsb r1, r3, r2
0056cb8c  21 11 b0 e1                                      lsrs r1, r1, #2
0056cb90  08 00 00 0a                                      beq #0x56cbb8
0056cb94  00 50 a0 e3                                      mov r5, #0
0056cb98  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0056cb9c  78 c2 f6 eb                                      bl #0x31d584
0056cba0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0056cba4  08 30 94 e5                                      ldr r3, [r4, #8]
0056cba8  01 50 85 e2                                      add r5, r5, #1
0056cbac  02 10 63 e0                                      rsb r1, r3, r2
0056cbb0  41 01 55 e1                                      cmp r5, r1, asr #2
0056cbb4  f7 ff ff 3a                                      blo #0x56cb98
0056cbb8  03 00 52 e1                                      cmp r2, r3
0056cbbc  0c 30 84 15                                      strne r3, [r4, #0xc]
0056cbc0  18 20 94 e5                                      ldr r2, [r4, #0x18]
0056cbc4  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cbc8  02 10 63 e0                                      rsb r1, r3, r2
0056cbcc  21 11 b0 e1                                      lsrs r1, r1, #2
0056cbd0  08 00 00 0a                                      beq #0x56cbf8
0056cbd4  00 50 a0 e3                                      mov r5, #0
0056cbd8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0056cbdc  68 c2 f6 eb                                      bl #0x31d584
0056cbe0  18 20 94 e5                                      ldr r2, [r4, #0x18]
0056cbe4  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cbe8  01 50 85 e2                                      add r5, r5, #1
0056cbec  02 10 63 e0                                      rsb r1, r3, r2
0056cbf0  41 01 55 e1                                      cmp r5, r1, asr #2
0056cbf4  f7 ff ff 3a                                      blo #0x56cbd8
0056cbf8  03 00 52 e1                                      cmp r2, r3
0056cbfc  18 30 84 15                                      strne r3, [r4, #0x18]
0056cc00  24 20 94 e5                                      ldr r2, [r4, #0x24]
0056cc04  20 30 94 e5                                      ldr r3, [r4, #0x20]
0056cc08  02 10 63 e0                                      rsb r1, r3, r2
0056cc0c  21 11 b0 e1                                      lsrs r1, r1, #2
0056cc10  08 00 00 0a                                      beq #0x56cc38
0056cc14  00 50 a0 e3                                      mov r5, #0
0056cc18  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0056cc1c  58 c2 f6 eb                                      bl #0x31d584
0056cc20  24 20 94 e5                                      ldr r2, [r4, #0x24]
0056cc24  20 30 94 e5                                      ldr r3, [r4, #0x20]
0056cc28  01 50 85 e2                                      add r5, r5, #1
0056cc2c  02 10 63 e0                                      rsb r1, r3, r2
0056cc30  41 01 55 e1                                      cmp r5, r1, asr #2
0056cc34  f7 ff ff 3a                                      blo #0x56cc18
0056cc38  03 00 52 e1                                      cmp r2, r3
0056cc3c  24 30 84 15                                      strne r3, [r4, #0x24]
0056cc40  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056cc44, declared_size=100, range_size=100, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystemD1Ev
; demangled: glitch::io::CFileSystem::~CFileSystem()
; decoder-mode: arm
0056cc44  54 30 9f e5                                      ldr r3, [pc, #0x54]
0056cc48  54 20 9f e5                                      ldr r2, [pc, #0x54]
0056cc4c  10 40 2d e9                                      push {r4, lr}
0056cc50  03 30 8f e0                                      add r3, pc, r3
0056cc54  02 20 93 e7                                      ldr r2, [r3, r2]
0056cc58  00 40 a0 e1                                      mov r4, r0
0056cc5c  08 20 82 e2                                      add r2, r2, #8
0056cc60  00 20 80 e5                                      str r2, [r0]
0056cc64  c3 ff ff eb                                      bl #0x56cb78
0056cc68  20 00 94 e5                                      ldr r0, [r4, #0x20]
0056cc6c  00 00 50 e3                                      cmp r0, #0
0056cc70  00 00 00 0a                                      beq #0x56cc78
0056cc74  f5 8d f6 eb                                      bl #0x310450
0056cc78  14 00 94 e5                                      ldr r0, [r4, #0x14]
0056cc7c  00 00 50 e3                                      cmp r0, #0
0056cc80  00 00 00 0a                                      beq #0x56cc88
0056cc84  f1 8d f6 eb                                      bl #0x310450
0056cc88  08 00 94 e5                                      ldr r0, [r4, #8]
0056cc8c  00 00 50 e3                                      cmp r0, #0
0056cc90  00 00 00 0a                                      beq #0x56cc98
0056cc94  ed 8d f6 eb                                      bl #0x310450
0056cc98  04 00 a0 e1                                      mov r0, r4
0056cc9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0056cca0  40 7e 42 00 18 09 00 00                          .byte 0x40, 0x7e, 0x42, 0x00, 0x18, 0x09, 0x00, 0x00

; FUNCTION 0x0056cca8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystemD0Ev
; demangled: glitch::io::CFileSystem::~CFileSystem()
; decoder-mode: arm
0056cca8  10 40 2d e9                                      push {r4, lr}
0056ccac  00 40 a0 e1                                      mov r4, r0
0056ccb0  e3 ff ff eb                                      bl #0x56cc44
0056ccb4  04 00 a0 e1                                      mov r0, r4
0056ccb8  7c 85 f6 eb                                      bl #0x30e2b0
0056ccbc  04 00 a0 e1                                      mov r0, r4
0056ccc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056ccc4, declared_size=100, range_size=100, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystemD2Ev
; demangled: glitch::io::CFileSystem::~CFileSystem()
; decoder-mode: arm
0056ccc4  54 30 9f e5                                      ldr r3, [pc, #0x54]
0056ccc8  54 20 9f e5                                      ldr r2, [pc, #0x54]
0056cccc  10 40 2d e9                                      push {r4, lr}
0056ccd0  03 30 8f e0                                      add r3, pc, r3
0056ccd4  02 20 93 e7                                      ldr r2, [r3, r2]
0056ccd8  00 40 a0 e1                                      mov r4, r0
0056ccdc  08 20 82 e2                                      add r2, r2, #8
0056cce0  00 20 80 e5                                      str r2, [r0]
0056cce4  a3 ff ff eb                                      bl #0x56cb78
0056cce8  20 00 94 e5                                      ldr r0, [r4, #0x20]
0056ccec  00 00 50 e3                                      cmp r0, #0
0056ccf0  00 00 00 0a                                      beq #0x56ccf8
0056ccf4  d5 8d f6 eb                                      bl #0x310450
0056ccf8  14 00 94 e5                                      ldr r0, [r4, #0x14]
0056ccfc  00 00 50 e3                                      cmp r0, #0
0056cd00  00 00 00 0a                                      beq #0x56cd08
0056cd04  d1 8d f6 eb                                      bl #0x310450
0056cd08  08 00 94 e5                                      ldr r0, [r4, #8]
0056cd0c  00 00 50 e3                                      cmp r0, #0
0056cd10  00 00 00 0a                                      beq #0x56cd18
0056cd14  cd 8d f6 eb                                      bl #0x310450
0056cd18  04 00 a0 e1                                      mov r0, r4
0056cd1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0056cd20  c0 7d 42 00 18 09 00 00                          .byte 0xc0, 0x7d, 0x42, 0x00, 0x18, 0x09, 0x00, 0x00

; FUNCTION 0x0056ce60, declared_size=512, range_size=512, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem17removeFileArchiveEPKc
; demangled: glitch::io::CFileSystem::removeFileArchive(char const*)
; decoder-mode: arm
0056ce60  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056ce64  08 30 90 e5                                      ldr r3, [r0, #8]
0056ce68  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0056ce6c  00 40 a0 e1                                      mov r4, r0
0056ce70  01 70 a0 e1                                      mov r7, r1
0056ce74  02 20 63 e0                                      rsb r2, r3, r2
0056ce78  42 21 a0 e1                                      asr r2, r2, #2
0056ce7c  01 60 52 e2                                      subs r6, r2, #1
0056ce80  25 00 00 4a                                      bmi #0x56cf1c
0056ce84  07 21 42 e2                                      sub r2, r2, #0xc0000001
0056ce88  02 51 a0 e1                                      lsl r5, r2, #2
0056ce8c  03 00 00 ea                                      b #0x56cea0
0056ce90  01 60 56 e2                                      subs r6, r6, #1
0056ce94  04 50 45 e2                                      sub r5, r5, #4
0056ce98  1f 00 00 4a                                      bmi #0x56cf1c
0056ce9c  08 30 94 e5                                      ldr r3, [r4, #8]
0056cea0  05 30 93 e7                                      ldr r3, [r3, r5]
0056cea4  08 10 93 e5                                      ldr r1, [r3, #8]
0056cea8  00 00 51 e3                                      cmp r1, #0
0056ceac  04 00 00 0a                                      beq #0x56cec4
0056ceb0  01 00 a0 e1                                      mov r0, r1
0056ceb4  00 30 91 e5                                      ldr r3, [r1]
0056ceb8  0f e0 a0 e1                                      mov lr, pc
0056cebc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0056cec0  00 10 a0 e1                                      mov r1, r0
0056cec4  07 00 a0 e1                                      mov r0, r7
0056cec8  13 85 f6 eb                                      bl #0x30e31c
0056cecc  00 00 50 e3                                      cmp r0, #0
0056ced0  ee ff ff 1a                                      bne #0x56ce90
0056ced4  08 30 94 e5                                      ldr r3, [r4, #8]
0056ced8  05 00 93 e7                                      ldr r0, [r3, r5]
0056cedc  a8 c1 f6 eb                                      bl #0x31d584
0056cee0  08 00 94 e5                                      ldr r0, [r4, #8]
0056cee4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0056cee8  05 00 80 e0                                      add r0, r0, r5
0056ceec  04 10 80 e2                                      add r1, r0, #4
0056cef0  03 00 51 e1                                      cmp r1, r3
0056cef4  04 00 00 0a                                      beq #0x56cf0c
0056cef8  01 20 53 e0                                      subs r2, r3, r1
0056cefc  03 10 a0 01                                      moveq r1, r3
0056cf00  01 00 00 0a                                      beq #0x56cf0c
0056cf04  0b 84 f6 eb                                      bl #0x30df38
0056cf08  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0056cf0c  04 10 41 e2                                      sub r1, r1, #4
0056cf10  0c 10 84 e5                                      str r1, [r4, #0xc]
0056cf14  01 00 a0 e3                                      mov r0, #1
0056cf18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056cf1c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cf20  18 50 94 e5                                      ldr r5, [r4, #0x18]
0056cf24  05 50 63 e0                                      rsb r5, r3, r5
0056cf28  45 51 a0 e1                                      asr r5, r5, #2
0056cf2c  01 60 55 e2                                      subs r6, r5, #1
0056cf30  25 00 00 4a                                      bmi #0x56cfcc
0056cf34  07 51 45 e2                                      sub r5, r5, #0xc0000001
0056cf38  05 51 a0 e1                                      lsl r5, r5, #2
0056cf3c  03 00 00 ea                                      b #0x56cf50
0056cf40  01 60 56 e2                                      subs r6, r6, #1
0056cf44  04 50 45 e2                                      sub r5, r5, #4
0056cf48  1f 00 00 4a                                      bmi #0x56cfcc
0056cf4c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cf50  05 30 93 e7                                      ldr r3, [r3, r5]
0056cf54  08 10 93 e5                                      ldr r1, [r3, #8]
0056cf58  00 00 51 e3                                      cmp r1, #0
0056cf5c  04 00 00 0a                                      beq #0x56cf74
0056cf60  01 00 a0 e1                                      mov r0, r1
0056cf64  00 30 91 e5                                      ldr r3, [r1]
0056cf68  0f e0 a0 e1                                      mov lr, pc
0056cf6c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0056cf70  00 10 a0 e1                                      mov r1, r0
0056cf74  07 00 a0 e1                                      mov r0, r7
0056cf78  e7 84 f6 eb                                      bl #0x30e31c
0056cf7c  00 00 50 e3                                      cmp r0, #0
0056cf80  ee ff ff 1a                                      bne #0x56cf40
0056cf84  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cf88  05 00 93 e7                                      ldr r0, [r3, r5]
0056cf8c  7c c1 f6 eb                                      bl #0x31d584
0056cf90  14 00 94 e5                                      ldr r0, [r4, #0x14]
0056cf94  18 30 94 e5                                      ldr r3, [r4, #0x18]
0056cf98  05 00 80 e0                                      add r0, r0, r5
0056cf9c  04 10 80 e2                                      add r1, r0, #4
0056cfa0  03 00 51 e1                                      cmp r1, r3
0056cfa4  04 00 00 0a                                      beq #0x56cfbc
0056cfa8  01 20 53 e0                                      subs r2, r3, r1
0056cfac  03 10 a0 01                                      moveq r1, r3
0056cfb0  01 00 00 0a                                      beq #0x56cfbc
0056cfb4  df 83 f6 eb                                      bl #0x30df38
0056cfb8  18 10 94 e5                                      ldr r1, [r4, #0x18]
0056cfbc  04 10 41 e2                                      sub r1, r1, #4
0056cfc0  18 10 84 e5                                      str r1, [r4, #0x18]
0056cfc4  01 00 a0 e3                                      mov r0, #1
0056cfc8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056cfcc  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0056cfd0  24 50 94 e5                                      ldr r5, [r4, #0x24]
0056cfd4  05 50 6a e0                                      rsb r5, sl, r5
0056cfd8  45 51 a0 e1                                      asr r5, r5, #2
0056cfdc  01 60 55 e2                                      subs r6, r5, #1
0056cfe0  1c 00 00 4a                                      bmi #0x56d058
0056cfe4  07 51 45 e2                                      sub r5, r5, #0xc0000001
0056cfe8  05 51 a0 e1                                      lsl r5, r5, #2
0056cfec  02 00 00 ea                                      b #0x56cffc
0056cff0  01 60 56 e2                                      subs r6, r6, #1
0056cff4  04 50 45 e2                                      sub r5, r5, #4
0056cff8  16 00 00 4a                                      bmi #0x56d058
0056cffc  05 80 9a e7                                      ldr r8, [sl, r5]
0056d000  07 00 a0 e1                                      mov r0, r7
0056d004  38 10 98 e5                                      ldr r1, [r8, #0x38]
0056d008  c3 84 f6 eb                                      bl #0x30e31c
0056d00c  00 00 50 e3                                      cmp r0, #0
0056d010  f6 ff ff 1a                                      bne #0x56cff0
0056d014  08 00 a0 e1                                      mov r0, r8
0056d018  59 c1 f6 eb                                      bl #0x31d584
0056d01c  20 00 94 e5                                      ldr r0, [r4, #0x20]
0056d020  24 30 94 e5                                      ldr r3, [r4, #0x24]
0056d024  05 00 80 e0                                      add r0, r0, r5
0056d028  04 10 80 e2                                      add r1, r0, #4
0056d02c  03 00 51 e1                                      cmp r1, r3
0056d030  04 00 00 0a                                      beq #0x56d048
0056d034  01 20 53 e0                                      subs r2, r3, r1
0056d038  03 10 a0 01                                      moveq r1, r3
0056d03c  01 00 00 0a                                      beq #0x56d048
0056d040  bc 83 f6 eb                                      bl #0x30df38
0056d044  24 10 94 e5                                      ldr r1, [r4, #0x24]
0056d048  04 10 41 e2                                      sub r1, r1, #4
0056d04c  24 10 84 e5                                      str r1, [r4, #0x24]
0056d050  01 00 a0 e3                                      mov r0, #1
0056d054  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056d058  00 00 a0 e3                                      mov r0, #0
0056d05c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0056d180, declared_size=320, range_size=320, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem20addFolderFileArchiveEPKcbb
; demangled: glitch::io::CFileSystem::addFolderFileArchive(char const*, bool, bool)
; decoder-mode: arm
0056d180  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056d184  00 60 a0 e1                                      mov r6, r0
0056d188  20 40 90 e5                                      ldr r4, [r0, #0x20]
0056d18c  24 00 90 e5                                      ldr r0, [r0, #0x24]
0056d190  08 d0 4d e2                                      sub sp, sp, #8
0056d194  01 50 a0 e1                                      mov r5, r1
0056d198  00 00 64 e0                                      rsb r0, r4, r0
0056d19c  40 01 a0 e1                                      asr r0, r0, #2
0056d1a0  01 a0 50 e2                                      subs sl, r0, #1
0056d1a4  02 70 a0 e1                                      mov r7, r2
0056d1a8  03 80 a0 e1                                      mov r8, r3
0056d1ac  0d 00 00 4a                                      bmi #0x56d1e8
0056d1b0  07 01 40 e2                                      sub r0, r0, #0xc0000001
0056d1b4  00 91 a0 e1                                      lsl sb, r0, #2
0056d1b8  01 00 00 ea                                      b #0x56d1c4
0056d1bc  01 a0 5a e2                                      subs sl, sl, #1
0056d1c0  08 00 00 4a                                      bmi #0x56d1e8
0056d1c4  09 30 94 e7                                      ldr r3, [r4, sb]
0056d1c8  05 00 a0 e1                                      mov r0, r5
0056d1cc  04 90 49 e2                                      sub sb, sb, #4
0056d1d0  38 10 93 e5                                      ldr r1, [r3, #0x38]
0056d1d4  50 84 f6 eb                                      bl #0x30e31c
0056d1d8  00 00 50 e3                                      cmp r0, #0
0056d1dc  f6 ff ff 1a                                      bne #0x56d1bc
0056d1e0  08 d0 8d e2                                      add sp, sp, #8
0056d1e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056d1e8  00 10 a0 e3                                      mov r1, #0
0056d1ec  3c 00 a0 e3                                      mov r0, #0x3c
0056d1f0  ed 1b ff eb                                      bl #0x5341ac
0056d1f4  05 20 a0 e1                                      mov r2, r5
0056d1f8  00 40 a0 e1                                      mov r4, r0
0056d1fc  07 30 a0 e1                                      mov r3, r7
0056d200  06 10 a0 e1                                      mov r1, r6
0056d204  00 80 8d e5                                      str r8, [sp]
0056d208  bb 2b 00 eb                                      bl #0x5780fc
0056d20c  00 00 54 e3                                      cmp r4, #0
0056d210  07 00 00 0a                                      beq #0x56d234
0056d214  24 80 96 e5                                      ldr r8, [r6, #0x24]
0056d218  28 30 96 e5                                      ldr r3, [r6, #0x28]
0056d21c  03 00 58 e1                                      cmp r8, r3
0056d220  06 00 00 0a                                      beq #0x56d240
0056d224  00 40 88 e5                                      str r4, [r8]
0056d228  24 30 96 e5                                      ldr r3, [r6, #0x24]
0056d22c  04 30 83 e2                                      add r3, r3, #4
0056d230  24 30 86 e5                                      str r3, [r6, #0x24]
0056d234  00 00 54 e2                                      subs r0, r4, #0
0056d238  01 00 a0 13                                      movne r0, #1
0056d23c  e7 ff ff ea                                      b #0x56d1e0
0056d240  20 30 96 e5                                      ldr r3, [r6, #0x20]
0056d244  08 30 63 e0                                      rsb r3, r3, r8
0056d248  43 31 a0 e1                                      asr r3, r3, #2
0056d24c  01 00 53 e3                                      cmp r3, #1
0056d250  03 50 83 20                                      addhs r5, r3, r3
0056d254  01 50 83 32                                      addlo r5, r3, #1
0056d258  07 01 75 e3                                      cmn r5, #0xc0000001
0056d25c  15 00 00 8a                                      bhi #0x56d2b8
0056d260  05 00 53 e1                                      cmp r3, r5
0056d264  05 51 a0 91                                      lslls r5, r5, #2
0056d268  12 00 00 8a                                      bhi #0x56d2b8
0056d26c  00 10 a0 e3                                      mov r1, #0
0056d270  05 00 a0 e1                                      mov r0, r5
0056d274  bb 8c f6 eb                                      bl #0x310568
0056d278  20 10 96 e5                                      ldr r1, [r6, #0x20]
0056d27c  00 70 a0 e1                                      mov r7, r0
0056d280  01 80 58 e0                                      subs r8, r8, r1
0056d284  00 80 a0 01                                      moveq r8, r0
0056d288  02 00 00 0a                                      beq #0x56d298
0056d28c  08 20 a0 e1                                      mov r2, r8
0056d290  28 83 f6 eb                                      bl #0x30df38
0056d294  08 80 80 e0                                      add r8, r0, r8
0056d298  04 40 88 e4                                      str r4, [r8], #4
0056d29c  20 00 96 e5                                      ldr r0, [r6, #0x20]
0056d2a0  05 50 87 e0                                      add r5, r7, r5
0056d2a4  69 8c f6 eb                                      bl #0x310450
0056d2a8  28 50 86 e5                                      str r5, [r6, #0x28]
0056d2ac  24 80 86 e5                                      str r8, [r6, #0x24]
0056d2b0  20 70 86 e5                                      str r7, [r6, #0x20]
0056d2b4  de ff ff ea                                      b #0x56d234
0056d2b8  03 50 e0 e3                                      mvn r5, #3
0056d2bc  ea ff ff ea                                      b #0x56d26c

; FUNCTION 0x0056d2c0, declared_size=276, range_size=276, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem17addZipFileArchiveEPKcbb
; demangled: glitch::io::CFileSystem::addZipFileArchive(char const*, bool, bool)
; decoder-mode: arm
0056d2c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056d2c4  00 c0 90 e5                                      ldr ip, [r0]
0056d2c8  00 40 a0 e1                                      mov r4, r0
0056d2cc  02 80 a0 e1                                      mov r8, r2
0056d2d0  03 70 a0 e1                                      mov r7, r3
0056d2d4  0f e0 a0 e1                                      mov lr, pc
0056d2d8  0c f0 9c e5                                      ldr pc, [ip, #0xc]
0056d2dc  00 60 50 e2                                      subs r6, r0, #0
0056d2e0  19 00 00 0a                                      beq #0x56d34c
0056d2e4  00 10 a0 e3                                      mov r1, #0
0056d2e8  20 00 a0 e3                                      mov r0, #0x20
0056d2ec  ae 1b ff eb                                      bl #0x5341ac
0056d2f0  06 10 a0 e1                                      mov r1, r6
0056d2f4  00 50 a0 e1                                      mov r5, r0
0056d2f8  08 20 a0 e1                                      mov r2, r8
0056d2fc  07 30 a0 e1                                      mov r3, r7
0056d300  27 2b 00 eb                                      bl #0x577fa4
0056d304  00 00 55 e3                                      cmp r5, #0
0056d308  0a 00 00 0a                                      beq #0x56d338
0056d30c  10 30 95 e5                                      ldr r3, [r5, #0x10]
0056d310  01 30 83 e3                                      orr r3, r3, #1
0056d314  10 30 85 e5                                      str r3, [r5, #0x10]
0056d318  0c a0 94 e5                                      ldr sl, [r4, #0xc]
0056d31c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0056d320  03 00 5a e1                                      cmp sl, r3
0056d324  0a 00 00 0a                                      beq #0x56d354
0056d328  00 50 8a e5                                      str r5, [sl]
0056d32c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0056d330  04 30 83 e2                                      add r3, r3, #4
0056d334  0c 30 84 e5                                      str r3, [r4, #0xc]
0056d338  06 00 a0 e1                                      mov r0, r6
0056d33c  90 c0 f6 eb                                      bl #0x31d584
0056d340  00 00 55 e2                                      subs r0, r5, #0
0056d344  01 00 a0 13                                      movne r0, #1
0056d348  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056d34c  06 00 a0 e1                                      mov r0, r6
0056d350  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056d354  08 30 94 e5                                      ldr r3, [r4, #8]
0056d358  0a 30 63 e0                                      rsb r3, r3, sl
0056d35c  43 31 a0 e1                                      asr r3, r3, #2
0056d360  01 00 53 e3                                      cmp r3, #1
0056d364  03 80 83 20                                      addhs r8, r3, r3
0056d368  01 80 83 32                                      addlo r8, r3, #1
0056d36c  07 01 78 e3                                      cmn r8, #0xc0000001
0056d370  15 00 00 8a                                      bhi #0x56d3cc
0056d374  08 00 53 e1                                      cmp r3, r8
0056d378  08 81 a0 91                                      lslls r8, r8, #2
0056d37c  12 00 00 8a                                      bhi #0x56d3cc
0056d380  00 10 a0 e3                                      mov r1, #0
0056d384  08 00 a0 e1                                      mov r0, r8
0056d388  76 8c f6 eb                                      bl #0x310568
0056d38c  08 10 94 e5                                      ldr r1, [r4, #8]
0056d390  00 70 a0 e1                                      mov r7, r0
0056d394  01 a0 5a e0                                      subs sl, sl, r1
0056d398  00 a0 a0 01                                      moveq sl, r0
0056d39c  02 00 00 0a                                      beq #0x56d3ac
0056d3a0  0a 20 a0 e1                                      mov r2, sl
0056d3a4  e3 82 f6 eb                                      bl #0x30df38
0056d3a8  0a a0 80 e0                                      add sl, r0, sl
0056d3ac  04 50 8a e4                                      str r5, [sl], #4
0056d3b0  08 00 94 e5                                      ldr r0, [r4, #8]
0056d3b4  08 80 87 e0                                      add r8, r7, r8
0056d3b8  24 8c f6 eb                                      bl #0x310450
0056d3bc  10 80 84 e5                                      str r8, [r4, #0x10]
0056d3c0  0c a0 84 e5                                      str sl, [r4, #0xc]
0056d3c4  08 70 84 e5                                      str r7, [r4, #8]
0056d3c8  da ff ff ea                                      b #0x56d338
0056d3cc  03 80 e0 e3                                      mvn r8, #3
0056d3d0  ea ff ff ea                                      b #0x56d380

; FUNCTION 0x0056d4e0, declared_size=976, range_size=976, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem17createAndOpenFileEPKc
; demangled: glitch::io::CFileSystem::createAndOpenFile(char const*)
; decoder-mode: arm
0056d4e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056d4e4  b8 43 9f e5                                      ldr r4, [pc, #0x3b8]
0056d4e8  b8 53 9f e5                                      ldr r5, [pc, #0x3b8]
0056d4ec  e4 d0 4d e2                                      sub sp, sp, #0xe4
0056d4f0  04 40 8f e0                                      add r4, pc, r4
0056d4f4  05 30 94 e7                                      ldr r3, [r4, r5]
0056d4f8  00 80 a0 e1                                      mov r8, r0
0056d4fc  01 70 a0 e1                                      mov r7, r1
0056d500  00 30 93 e5                                      ldr r3, [r3]
0056d504  dc 30 8d e5                                      str r3, [sp, #0xdc]
0056d508  fa fa ff eb                                      bl #0x56c0f8
0056d50c  00 60 50 e2                                      subs r6, r0, #0
0056d510  07 00 00 0a                                      beq #0x56d534
0056d514  05 30 94 e7                                      ldr r3, [r4, r5]
0056d518  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
0056d51c  06 00 a0 e1                                      mov r0, r6
0056d520  00 30 93 e5                                      ldr r3, [r3]
0056d524  03 00 52 e1                                      cmp r2, r3
0056d528  dc 00 00 1a                                      bne #0x56d8a0
0056d52c  e4 d0 8d e2                                      add sp, sp, #0xe4
0056d530  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056d534  07 00 a0 e1                                      mov r0, r7
0056d538  9d 0c 00 eb                                      bl #0x5707b4
0056d53c  00 60 50 e2                                      subs r6, r0, #0
0056d540  f3 ff ff 1a                                      bne #0x56d514
0056d544  c4 b0 8d e2                                      add fp, sp, #0xc4
0056d548  07 10 a0 e1                                      mov r1, r7
0056d54c  78 20 8d e2                                      add r2, sp, #0x78
0056d550  0b 00 a0 e1                                      mov r0, fp
0056d554  b8 e2 f6 eb                                      bl #0x32603c
0056d558  4c 33 9f e5                                      ldr r3, [pc, #0x34c]
0056d55c  ac 20 8d e2                                      add r2, sp, #0xac
0056d560  34 70 8d e5                                      str r7, [sp, #0x34]
0056d564  03 30 8f e0                                      add r3, pc, r3
0056d568  10 30 8d e5                                      str r3, [sp, #0x10]
0056d56c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0056d570  70 30 8d e2                                      add r3, sp, #0x70
0056d574  0c 30 8d e5                                      str r3, [sp, #0xc]
0056d578  01 c0 8c e2                                      add ip, ip, #1
0056d57c  38 30 8d e2                                      add r3, sp, #0x38
0056d580  14 c0 8d e5                                      str ip, [sp, #0x14]
0056d584  64 c0 8d e2                                      add ip, sp, #0x64
0056d588  18 30 8d e5                                      str r3, [sp, #0x18]
0056d58c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0056d590  60 30 8d e2                                      add r3, sp, #0x60
0056d594  5c c0 8d e2                                      add ip, sp, #0x5c
0056d598  20 30 8d e5                                      str r3, [sp, #0x20]
0056d59c  24 c0 8d e5                                      str ip, [sp, #0x24]
0056d5a0  58 30 8d e2                                      add r3, sp, #0x58
0056d5a4  68 c0 8d e2                                      add ip, sp, #0x68
0056d5a8  05 70 a0 e1                                      mov r7, r5
0056d5ac  00 90 e0 e3                                      mvn sb, #0
0056d5b0  28 30 8d e5                                      str r3, [sp, #0x28]
0056d5b4  2c c0 8d e5                                      str ip, [sp, #0x2c]
0056d5b8  30 60 8d e5                                      str r6, [sp, #0x30]
0056d5bc  04 a0 a0 e1                                      mov sl, r4
0056d5c0  02 50 a0 e1                                      mov r5, r2
0056d5c4  35 00 00 ea                                      b #0x56d6a0
0056d5c8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0056d5cc  01 30 43 e2                                      sub r3, r3, #1
0056d5d0  03 00 59 e1                                      cmp sb, r3
0056d5d4  09 30 a0 31                                      movlo r3, sb
0056d5d8  5c c0 8d e5                                      str ip, [sp, #0x5c]
0056d5dc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0056d5e0  01 60 83 e2                                      add r6, r3, #1
0056d5e4  06 60 84 e0                                      add r6, r4, r6
0056d5e8  58 c0 8d e5                                      str ip, [sp, #0x58]
0056d5ec  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0056d5f0  18 00 9d e5                                      ldr r0, [sp, #0x18]
0056d5f4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0056d5f8  00 c0 8d e5                                      str ip, [sp]
0056d5fc  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0056d600  20 20 9d e5                                      ldr r2, [sp, #0x20]
0056d604  24 30 9d e5                                      ldr r3, [sp, #0x24]
0056d608  64 60 8d e5                                      str r6, [sp, #0x64]
0056d60c  60 40 8d e5                                      str r4, [sp, #0x60]
0056d610  04 c0 8d e5                                      str ip, [sp, #4]
0056d614  1a 07 fa eb                                      bl #0x3ef284
0056d618  38 90 9d e5                                      ldr sb, [sp, #0x38]
0056d61c  09 00 54 e1                                      cmp r4, sb
0056d620  06 90 a0 01                                      moveq sb, r6
0056d624  01 90 49 12                                      subne sb, sb, #1
0056d628  09 00 56 e1                                      cmp r6, sb
0056d62c  1f 00 00 0a                                      beq #0x56d6b0
0056d630  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
0056d634  09 90 63 e0                                      rsb sb, r3, sb
0056d638  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0056d63c  09 30 a0 e1                                      mov r3, sb
0056d640  0b 10 a0 e1                                      mov r1, fp
0056d644  00 20 a0 e3                                      mov r2, #0
0056d648  05 00 a0 e1                                      mov r0, r5
0056d64c  00 c0 8d e5                                      str ip, [sp]
0056d650  9b fb ff eb                                      bl #0x56c4c4
0056d654  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
0056d658  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
0056d65c  0b 00 a0 e1                                      mov r0, fp
0056d660  48 cd f6 eb                                      bl #0x320b88
0056d664  05 00 a0 e1                                      mov r0, r5
0056d668  13 fb ff eb                                      bl #0x56c2bc
0056d66c  08 00 a0 e1                                      mov r0, r8
0056d670  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
0056d674  9f fa ff eb                                      bl #0x56c0f8
0056d678  00 00 50 e3                                      cmp r0, #0
0056d67c  72 00 00 1a                                      bne #0x56d84c
0056d680  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
0056d684  4a 0c 00 eb                                      bl #0x5707b4
0056d688  01 30 70 e2                                      rsbs r3, r0, #1
0056d68c  00 30 a0 33                                      movlo r3, #0
0056d690  01 00 79 e3                                      cmn sb, #1
0056d694  00 30 a0 03                                      moveq r3, #0
0056d698  00 00 53 e3                                      cmp r3, #0
0056d69c  05 00 00 0a                                      beq #0x56d6b8
0056d6a0  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
0056d6a4  d4 30 9d e5                                      ldr r3, [sp, #0xd4]
0056d6a8  04 30 53 e0                                      subs r3, r3, r4
0056d6ac  c5 ff ff 1a                                      bne #0x56d5c8
0056d6b0  00 90 e0 e3                                      mvn sb, #0
0056d6b4  df ff ff ea                                      b #0x56d638
0056d6b8  00 00 50 e3                                      cmp r0, #0
0056d6bc  0a 40 a0 e1                                      mov r4, sl
0056d6c0  07 50 a0 e1                                      mov r5, r7
0056d6c4  30 60 9d e5                                      ldr r6, [sp, #0x30]
0056d6c8  00 a0 a0 e1                                      mov sl, r0
0056d6cc  34 70 9d e5                                      ldr r7, [sp, #0x34]
0056d6d0  59 00 00 0a                                      beq #0x56d83c
0056d6d4  01 00 79 e3                                      cmn sb, #1
0056d6d8  57 00 00 0a                                      beq #0x56d83c
0056d6dc  0a 00 a0 e1                                      mov r0, sl
0056d6e0  91 25 00 eb                                      bl #0x576d2c
0056d6e4  00 00 50 e3                                      cmp r0, #0
0056d6e8  69 00 00 0a                                      beq #0x56d894
0056d6ec  01 90 89 e2                                      add sb, sb, #1
0056d6f0  01 00 79 e3                                      cmn sb, #1
0056d6f4  50 00 00 0a                                      beq #0x56d83c
0056d6f8  74 30 8d e2                                      add r3, sp, #0x74
0056d6fc  38 20 8d e2                                      add r2, sp, #0x38
0056d700  10 30 8d e5                                      str r3, [sp, #0x10]
0056d704  6c c0 8d e2                                      add ip, sp, #0x6c
0056d708  7c 30 8d e2                                      add r3, sp, #0x7c
0056d70c  07 60 a0 e1                                      mov r6, r7
0056d710  20 b0 8d e5                                      str fp, [sp, #0x20]
0056d714  14 20 8d e5                                      str r2, [sp, #0x14]
0056d718  94 80 8d e2                                      add r8, sp, #0x94
0056d71c  0c c0 8d e5                                      str ip, [sp, #0xc]
0056d720  18 40 8d e5                                      str r4, [sp, #0x18]
0056d724  02 70 a0 e1                                      mov r7, r2
0056d728  1c 50 8d e5                                      str r5, [sp, #0x1c]
0056d72c  03 b0 a0 e1                                      mov fp, r3
0056d730  1e 00 00 ea                                      b #0x56d7b0
0056d734  00 50 a0 e3                                      mov r5, #0
0056d738  00 40 e0 e3                                      mvn r4, #0
0056d73c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0056d740  04 30 69 e0                                      rsb r3, sb, r4
0056d744  09 20 a0 e1                                      mov r2, sb
0056d748  08 10 a0 e1                                      mov r1, r8
0056d74c  0b 00 a0 e1                                      mov r0, fp
0056d750  00 c0 8d e5                                      str ip, [sp]
0056d754  5a fb ff eb                                      bl #0x56c4c4
0056d758  90 10 9d e5                                      ldr r1, [sp, #0x90]
0056d75c  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
0056d760  08 00 a0 e1                                      mov r0, r8
0056d764  07 cd f6 eb                                      bl #0x320b88
0056d768  0b 00 a0 e1                                      mov r0, fp
0056d76c  d2 fa ff eb                                      bl #0x56c2bc
0056d770  0a 00 a0 e1                                      mov r0, sl
0056d774  82 bf f6 eb                                      bl #0x31d584
0056d778  07 00 a0 e1                                      mov r0, r7
0056d77c  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0056d780  a7 2b 00 eb                                      bl #0x578624
0056d784  01 00 74 e3                                      cmn r4, #1
0056d788  00 a0 a0 e1                                      mov sl, r0
0056d78c  38 00 00 0a                                      beq #0x56d874
0056d790  08 00 a0 e1                                      mov r0, r8
0056d794  c8 fa ff eb                                      bl #0x56c2bc
0056d798  07 00 a0 e1                                      mov r0, r7
0056d79c  39 27 00 eb                                      bl #0x577488
0056d7a0  00 00 5a e3                                      cmp sl, #0
0056d7a4  01 00 75 13                                      cmnne r5, #1
0056d7a8  2d 00 00 0a                                      beq #0x56d864
0056d7ac  05 90 a0 e1                                      mov sb, r5
0056d7b0  01 20 a0 e3                                      mov r2, #1
0056d7b4  02 30 a0 e1                                      mov r3, r2
0056d7b8  0a 10 a0 e1                                      mov r1, sl
0056d7bc  07 00 a0 e1                                      mov r0, r7
0056d7c0  f7 29 00 eb                                      bl #0x577fa4
0056d7c4  06 10 a0 e1                                      mov r1, r6
0056d7c8  10 20 9d e5                                      ldr r2, [sp, #0x10]
0056d7cc  08 00 a0 e1                                      mov r0, r8
0056d7d0  19 e2 f6 eb                                      bl #0x32603c
0056d7d4  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
0056d7d8  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0056d7dc  02 30 61 e0                                      rsb r3, r1, r2
0056d7e0  09 00 53 e1                                      cmp r3, sb
0056d7e4  d2 ff ff 9a                                      bls #0x56d734
0056d7e8  01 00 89 e2                                      add r0, sb, #1
0056d7ec  00 00 53 e1                                      cmp r3, r0
0056d7f0  cf ff ff 3a                                      blo #0x56d734
0056d7f4  09 40 81 e0                                      add r4, r1, sb
0056d7f8  04 00 52 e1                                      cmp r2, r4
0056d7fc  02 40 a0 01                                      moveq r4, r2
0056d800  08 00 00 0a                                      beq #0x56d828
0056d804  d9 30 91 e1                                      ldrsb r3, [r1, sb]
0056d808  2f 00 53 e3                                      cmp r3, #0x2f
0056d80c  05 00 00 0a                                      beq #0x56d828
0056d810  01 40 84 e2                                      add r4, r4, #1
0056d814  02 00 54 e1                                      cmp r4, r2
0056d818  02 00 00 0a                                      beq #0x56d828
0056d81c  d0 30 d4 e1                                      ldrsb r3, [r4]
0056d820  2f 00 53 e3                                      cmp r3, #0x2f
0056d824  f9 ff ff 1a                                      bne #0x56d810
0056d828  04 00 52 e1                                      cmp r2, r4
0056d82c  04 40 61 10                                      rsbne r4, r1, r4
0056d830  01 50 84 12                                      addne r5, r4, #1
0056d834  c0 ff ff 1a                                      bne #0x56d73c
0056d838  bd ff ff ea                                      b #0x56d734
0056d83c  0a 60 a0 e1                                      mov r6, sl
0056d840  0b 00 a0 e1                                      mov r0, fp
0056d844  9c fa ff eb                                      bl #0x56c2bc
0056d848  31 ff ff ea                                      b #0x56d514
0056d84c  0a 40 a0 e1                                      mov r4, sl
0056d850  07 50 a0 e1                                      mov r5, r7
0056d854  30 60 9d e5                                      ldr r6, [sp, #0x30]
0056d858  00 a0 a0 e1                                      mov sl, r0
0056d85c  34 70 9d e5                                      ldr r7, [sp, #0x34]
0056d860  9b ff ff ea                                      b #0x56d6d4
0056d864  0a 60 a0 e1                                      mov r6, sl
0056d868  18 40 8d e2                                      add r4, sp, #0x18
0056d86c  30 08 94 e8                                      ldm r4, {r4, r5, fp}
0056d870  f2 ff ff ea                                      b #0x56d840
0056d874  00 60 a0 e1                                      mov r6, r0
0056d878  08 00 a0 e1                                      mov r0, r8
0056d87c  18 40 8d e2                                      add r4, sp, #0x18
0056d880  30 08 94 e8                                      ldm r4, {r4, r5, fp}
0056d884  8c fa ff eb                                      bl #0x56c2bc
0056d888  14 00 9d e5                                      ldr r0, [sp, #0x14]
0056d88c  fd 26 00 eb                                      bl #0x577488
0056d890  ea ff ff ea                                      b #0x56d840
0056d894  0a 00 a0 e1                                      mov r0, sl
0056d898  39 bf f6 eb                                      bl #0x31d584
0056d89c  e7 ff ff ea                                      b #0x56d840
0056d8a0  9a 82 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0056d8a4  a0 75 42 00 ac 40 00 00 f4 36 35 00              .byte 0xa0, 0x75, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x36, 0x35, 0x00

; FUNCTION 0x0056dc40, declared_size=760, range_size=760, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem4openEPKcS3_
; demangled: glitch::io::CFileSystem::open(char const*, char const*)
; decoder-mode: arm
0056dc40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056dc44  dc 42 9f e5                                      ldr r4, [pc, #0x2dc]
0056dc48  dc 62 9f e5                                      ldr r6, [pc, #0x2dc]
0056dc4c  dc 72 9f e5                                      ldr r7, [pc, #0x2dc]
0056dc50  04 40 8f e0                                      add r4, pc, r4
0056dc54  06 c0 94 e7                                      ldr ip, [r4, r6]
0056dc58  07 30 94 e7                                      ldr r3, [r4, r7]
0056dc5c  84 d0 4d e2                                      sub sp, sp, #0x84
0056dc60  10 b0 9c e5                                      ldr fp, [ip, #0x10]
0056dc64  00 30 93 e5                                      ldr r3, [r3]
0056dc68  00 80 a0 e1                                      mov r8, r0
0056dc6c  00 00 5b e3                                      cmp fp, #0
0056dc70  01 50 a0 e1                                      mov r5, r1
0056dc74  7c 30 8d e5                                      str r3, [sp, #0x7c]
0056dc78  02 90 a0 e1                                      mov sb, r2
0056dc7c  35 00 00 0a                                      beq #0x56dd58
0056dc80  d0 30 d1 e1                                      ldrsb r3, [r1]
0056dc84  2e 00 53 e3                                      cmp r3, #0x2e
0056dc88  70 00 00 0a                                      beq #0x56de50
0056dc8c  05 b0 a0 e1                                      mov fp, r5
0056dc90  9c 32 9f e5                                      ldr r3, [pc, #0x29c]
0056dc94  03 a0 94 e7                                      ldr sl, [r4, r3]
0056dc98  0a 00 a0 e1                                      mov r0, sl
0056dc9c  6c 80 f6 eb                                      bl #0x30de54
0056dca0  00 30 50 e2                                      subs r3, r0, #0
0056dca4  0e 00 00 0a                                      beq #0x56dce4
0056dca8  0b 00 a0 e1                                      mov r0, fp
0056dcac  0a 10 a0 e1                                      mov r1, sl
0056dcb0  04 30 8d e5                                      str r3, [sp, #4]
0056dcb4  c6 83 f6 eb                                      bl #0x30ebd4
0056dcb8  00 00 50 e3                                      cmp r0, #0
0056dcbc  04 30 9d e5                                      ldr r3, [sp, #4]
0056dcc0  07 00 00 0a                                      beq #0x56dce4
0056dcc4  03 a0 8a e0                                      add sl, sl, r3
0056dcc8  d1 20 5a e1                                      ldrsb r2, [sl, #-1]
0056dccc  5c 00 52 e3                                      cmp r2, #0x5c
0056dcd0  2f 00 52 13                                      cmpne r2, #0x2f
0056dcd4  00 20 a0 03                                      moveq r2, #0
0056dcd8  01 20 a0 13                                      movne r2, #1
0056dcdc  03 30 82 e0                                      add r3, r2, r3
0056dce0  03 b0 8b e0                                      add fp, fp, r3
0056dce4  64 a0 8d e2                                      add sl, sp, #0x64
0056dce8  0b 10 a0 e1                                      mov r1, fp
0056dcec  0a 00 a0 e1                                      mov r0, sl
0056dcf0  18 20 8d e2                                      add r2, sp, #0x18
0056dcf4  d0 e0 f6 eb                                      bl #0x32603c
0056dcf8  78 30 9d e5                                      ldr r3, [sp, #0x78]
0056dcfc  74 10 9d e5                                      ldr r1, [sp, #0x74]
0056dd00  01 00 53 e1                                      cmp r3, r1
0056dd04  06 00 00 0a                                      beq #0x56dd24
0056dd08  2f 00 a0 e3                                      mov r0, #0x2f
0056dd0c  d0 20 d3 e1                                      ldrsb r2, [r3]
0056dd10  5c 00 52 e3                                      cmp r2, #0x5c
0056dd14  00 00 c3 05                                      strbeq r0, [r3]
0056dd18  01 30 83 e2                                      add r3, r3, #1
0056dd1c  01 00 53 e1                                      cmp r3, r1
0056dd20  f9 ff ff 1a                                      bne #0x56dd0c
0056dd24  0a 00 a0 e1                                      mov r0, sl
0056dd28  86 ff ff eb                                      bl #0x56db48
0056dd2c  06 30 94 e7                                      ldr r3, [r4, r6]
0056dd30  03 00 50 e1                                      cmp r0, r3
0056dd34  3c 50 90 15                                      ldrne r5, [r0, #0x3c]
0056dd38  78 00 9d e5                                      ldr r0, [sp, #0x78]
0056dd3c  00 b0 a0 03                                      moveq fp, #0
0056dd40  01 b0 a0 13                                      movne fp, #1
0056dd44  0a 00 50 e1                                      cmp r0, sl
0056dd48  02 00 00 0a                                      beq #0x56dd58
0056dd4c  00 00 50 e3                                      cmp r0, #0
0056dd50  00 00 00 0a                                      beq #0x56dd58
0056dd54  bd 89 f6 eb                                      bl #0x310450
0056dd58  4c 60 8d e2                                      add r6, sp, #0x4c
0056dd5c  05 10 a0 e1                                      mov r1, r5
0056dd60  06 00 a0 e1                                      mov r0, r6
0056dd64  14 20 8d e2                                      add r2, sp, #0x14
0056dd68  b3 e0 f6 eb                                      bl #0x32603c
0056dd6c  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
0056dd70  60 00 9d e5                                      ldr r0, [sp, #0x60]
0056dd74  00 00 51 e1                                      cmp r1, r0
0056dd78  2d 00 00 0a                                      beq #0x56de34
0056dd7c  80 20 8d e2                                      add r2, sp, #0x80
0056dd80  3a 30 a0 e3                                      mov r3, #0x3a
0056dd84  78 30 62 e5                                      strb r3, [r2, #-0x78]!
0056dd88  0c 30 8d e2                                      add r3, sp, #0xc
0056dd8c  9c 83 f7 eb                                      bl #0x34ec04
0056dd90  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0056dd94  00 30 a0 e1                                      mov r3, r0
0056dd98  02 00 50 e1                                      cmp r0, r2
0056dd9c  24 00 00 0a                                      beq #0x56de34
0056dda0  60 00 9d e5                                      ldr r0, [sp, #0x60]
0056dda4  03 30 60 e0                                      rsb r3, r0, r3
0056dda8  01 00 73 e3                                      cmn r3, #1
0056ddac  20 00 00 0a                                      beq #0x56de34
0056ddb0  09 10 a0 e1                                      mov r1, sb
0056ddb4  d3 81 f6 eb                                      bl #0x30e508
0056ddb8  00 a0 50 e2                                      subs sl, r0, #0
0056ddbc  00 a0 88 05                                      streq sl, [r8]
0056ddc0  0d 00 00 0a                                      beq #0x56ddfc
0056ddc4  00 10 a0 e3                                      mov r1, #0
0056ddc8  28 00 a0 e3                                      mov r0, #0x28
0056ddcc  60 90 9d e5                                      ldr sb, [sp, #0x60]
0056ddd0  f5 18 ff eb                                      bl #0x5341ac
0056ddd4  0b 30 a0 e1                                      mov r3, fp
0056ddd8  0a 10 a0 e1                                      mov r1, sl
0056dddc  09 20 a0 e1                                      mov r2, sb
0056dde0  00 50 a0 e1                                      mov r5, r0
0056dde4  ff fa ff eb                                      bl #0x56c9e8
0056dde8  00 00 55 e3                                      cmp r5, #0
0056ddec  00 50 88 e5                                      str r5, [r8]
0056ddf0  00 30 95 15                                      ldrne r3, [r5]
0056ddf4  01 30 83 12                                      addne r3, r3, #1
0056ddf8  00 30 85 15                                      strne r3, [r5]
0056ddfc  60 00 9d e5                                      ldr r0, [sp, #0x60]
0056de00  06 00 50 e1                                      cmp r0, r6
0056de04  02 00 00 0a                                      beq #0x56de14
0056de08  00 00 50 e3                                      cmp r0, #0
0056de0c  00 00 00 0a                                      beq #0x56de14
0056de10  8e 89 f6 eb                                      bl #0x310450
0056de14  07 30 94 e7                                      ldr r3, [r4, r7]
0056de18  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
0056de1c  08 00 a0 e1                                      mov r0, r8
0056de20  00 30 93 e5                                      ldr r3, [r3]
0056de24  03 00 52 e1                                      cmp r2, r3
0056de28  3d 00 00 1a                                      bne #0x56df24
0056de2c  84 d0 8d e2                                      add sp, sp, #0x84
0056de30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056de34  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
0056de38  03 10 94 e7                                      ldr r1, [r4, r3]
0056de3c  d0 30 d1 e1                                      ldrsb r3, [r1]
0056de40  00 00 53 e3                                      cmp r3, #0
0056de44  07 00 00 1a                                      bne #0x56de68
0056de48  60 00 9d e5                                      ldr r0, [sp, #0x60]
0056de4c  d7 ff ff ea                                      b #0x56ddb0
0056de50  d1 30 d1 e1                                      ldrsb r3, [r1, #1]
0056de54  2f 00 53 e3                                      cmp r3, #0x2f
0056de58  5c 00 53 13                                      cmpne r3, #0x5c
0056de5c  02 b0 81 02                                      addeq fp, r1, #2
0056de60  8a ff ff 0a                                      beq #0x56dc90
0056de64  88 ff ff ea                                      b #0x56dc8c
0056de68  34 a0 8d e2                                      add sl, sp, #0x34
0056de6c  10 20 8d e2                                      add r2, sp, #0x10
0056de70  0a 00 a0 e1                                      mov r0, sl
0056de74  70 e0 f6 eb                                      bl #0x32603c
0056de78  44 20 9d e5                                      ldr r2, [sp, #0x44]
0056de7c  48 10 9d e5                                      ldr r1, [sp, #0x48]
0056de80  d1 30 52 e1                                      ldrsb r3, [r2, #-1]
0056de84  5c 00 53 e3                                      cmp r3, #0x5c
0056de88  2f 00 53 13                                      cmpne r3, #0x2f
0056de8c  0e 00 00 1a                                      bne #0x56decc
0056de90  1c 50 8d e2                                      add r5, sp, #0x1c
0056de94  0a 10 a0 e1                                      mov r1, sl
0056de98  06 20 a0 e1                                      mov r2, r6
0056de9c  05 00 a0 e1                                      mov r0, r5
0056dea0  1f 81 f7 eb                                      bl #0x34e324
0056dea4  30 10 9d e5                                      ldr r1, [sp, #0x30]
0056dea8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0056deac  06 00 a0 e1                                      mov r0, r6
0056deb0  34 cb f6 eb                                      bl #0x320b88
0056deb4  05 00 a0 e1                                      mov r0, r5
0056deb8  ff f8 ff eb                                      bl #0x56c2bc
0056debc  0a 00 a0 e1                                      mov r0, sl
0056dec0  fd f8 ff eb                                      bl #0x56c2bc
0056dec4  60 00 9d e5                                      ldr r0, [sp, #0x60]
0056dec8  b8 ff ff ea                                      b #0x56ddb0
0056decc  0a 00 51 e1                                      cmp r1, sl
0056ded0  34 10 9d 15                                      ldrne r1, [sp, #0x34]
0056ded4  10 10 8a 02                                      addeq r1, sl, #0x10
0056ded8  01 10 62 e0                                      rsb r1, r2, r1
0056dedc  01 00 51 e3                                      cmp r1, #1
0056dee0  08 00 00 0a                                      beq #0x56df08
0056dee4  00 30 a0 e3                                      mov r3, #0
0056dee8  01 30 c2 e5                                      strb r3, [r2, #1]
0056deec  44 30 9d e5                                      ldr r3, [sp, #0x44]
0056def0  2f 20 a0 e3                                      mov r2, #0x2f
0056def4  00 20 c3 e5                                      strb r2, [r3]
0056def8  44 30 9d e5                                      ldr r3, [sp, #0x44]
0056defc  01 30 83 e2                                      add r3, r3, #1
0056df00  44 30 8d e5                                      str r3, [sp, #0x44]
0056df04  e1 ff ff ea                                      b #0x56de90
0056df08  0a 00 a0 e1                                      mov r0, sl
0056df0c  11 c9 f6 eb                                      bl #0x320358
0056df10  00 10 a0 e1                                      mov r1, r0
0056df14  0a 00 a0 e1                                      mov r0, sl
0056df18  01 20 fb eb                                      bl #0x435f24
0056df1c  44 20 9d e5                                      ldr r2, [sp, #0x44]
0056df20  ef ff ff ea                                      b #0x56dee4
0056df24  f9 80 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0056df28  40 6e 42 00 b4 47 00 00 ac 40 00 00 68 0e 00 00  .byte 0x40, 0x6e, 0x42, 0x00, 0xb4, 0x47, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0x0e, 0x00, 0x00

; FUNCTION 0x0056df38, declared_size=300, range_size=300, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZNK6glitch2io11CFileSystem9existFileEPKc
; demangled: glitch::io::CFileSystem::existFile(char const*) const
; decoder-mode: arm
0056df38  70 40 2d e9                                      push {r4, r5, r6, lr}
0056df3c  08 30 90 e5                                      ldr r3, [r0, #8]
0056df40  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0056df44  08 d0 4d e2                                      sub sp, sp, #8
0056df48  00 50 a0 e1                                      mov r5, r0
0056df4c  02 20 63 e0                                      rsb r2, r3, r2
0056df50  22 21 b0 e1                                      lsrs r2, r2, #2
0056df54  01 60 a0 e1                                      mov r6, r1
0056df58  0f 00 00 0a                                      beq #0x56df9c
0056df5c  00 40 a0 e3                                      mov r4, #0
0056df60  04 00 00 ea                                      b #0x56df78
0056df64  08 30 95 e5                                      ldr r3, [r5, #8]
0056df68  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0056df6c  02 20 63 e0                                      rsb r2, r3, r2
0056df70  42 01 54 e1                                      cmp r4, r2, asr #2
0056df74  08 00 00 2a                                      bhs #0x56df9c
0056df78  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0056df7c  06 10 a0 e1                                      mov r1, r6
0056df80  66 29 00 eb                                      bl #0x578520
0056df84  01 00 70 e3                                      cmn r0, #1
0056df88  01 40 84 e2                                      add r4, r4, #1
0056df8c  f4 ff ff 0a                                      beq #0x56df64
0056df90  01 00 a0 e3                                      mov r0, #1
0056df94  08 d0 8d e2                                      add sp, sp, #8
0056df98  70 80 bd e8                                      pop {r4, r5, r6, pc}
0056df9c  14 30 95 e5                                      ldr r3, [r5, #0x14]
0056dfa0  18 20 95 e5                                      ldr r2, [r5, #0x18]
0056dfa4  02 20 63 e0                                      rsb r2, r3, r2
0056dfa8  22 21 b0 e1                                      lsrs r2, r2, #2
0056dfac  0d 00 00 0a                                      beq #0x56dfe8
0056dfb0  00 40 a0 e3                                      mov r4, #0
0056dfb4  04 00 00 ea                                      b #0x56dfcc
0056dfb8  14 30 95 e5                                      ldr r3, [r5, #0x14]
0056dfbc  18 20 95 e5                                      ldr r2, [r5, #0x18]
0056dfc0  02 20 63 e0                                      rsb r2, r3, r2
0056dfc4  42 01 54 e1                                      cmp r4, r2, asr #2
0056dfc8  06 00 00 2a                                      bhs #0x56dfe8
0056dfcc  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0056dfd0  06 10 a0 e1                                      mov r1, r6
0056dfd4  b6 08 00 eb                                      bl #0x5702b4
0056dfd8  01 00 70 e3                                      cmn r0, #1
0056dfdc  01 40 84 e2                                      add r4, r4, #1
0056dfe0  f4 ff ff 0a                                      beq #0x56dfb8
0056dfe4  e9 ff ff ea                                      b #0x56df90
0056dfe8  20 30 95 e5                                      ldr r3, [r5, #0x20]
0056dfec  24 20 95 e5                                      ldr r2, [r5, #0x24]
0056dff0  02 20 63 e0                                      rsb r2, r3, r2
0056dff4  22 21 b0 e1                                      lsrs r2, r2, #2
0056dff8  0d 00 00 0a                                      beq #0x56e034
0056dffc  00 40 a0 e3                                      mov r4, #0
0056e000  04 00 00 ea                                      b #0x56e018
0056e004  20 30 95 e5                                      ldr r3, [r5, #0x20]
0056e008  24 20 95 e5                                      ldr r2, [r5, #0x24]
0056e00c  02 20 63 e0                                      rsb r2, r3, r2
0056e010  42 01 54 e1                                      cmp r4, r2, asr #2
0056e014  06 00 00 2a                                      bhs #0x56e034
0056e018  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0056e01c  06 10 a0 e1                                      mov r1, r6
0056e020  67 23 00 eb                                      bl #0x576dc4
0056e024  01 00 70 e3                                      cmn r0, #1
0056e028  01 40 84 e2                                      add r4, r4, #1
0056e02c  f4 ff ff 0a                                      beq #0x56e004
0056e030  d6 ff ff ea                                      b #0x56df90
0056e034  24 20 9f e5                                      ldr r2, [pc, #0x24]
0056e038  04 00 8d e2                                      add r0, sp, #4
0056e03c  06 10 a0 e1                                      mov r1, r6
0056e040  02 20 8f e0                                      add r2, pc, r2
0056e044  fd fe ff eb                                      bl #0x56dc40
0056e048  04 00 9d e5                                      ldr r0, [sp, #4]
0056e04c  00 00 50 e3                                      cmp r0, #0
0056e050  cf ff ff 0a                                      beq #0x56df94
0056e054  f7 83 f7 eb                                      bl #0x34f038
0056e058  01 00 a0 e3                                      mov r0, #1
0056e05c  cc ff ff ea                                      b #0x56df94
; mapping-symbol data/literal pool
0056e060  60 27 35 00                                      .byte 0x60, 0x27, 0x35, 0x00

; FUNCTION 0x0056e064, declared_size=372, range_size=372, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem21getObfuscatedFileNameEPKc
; demangled: glitch::io::CFileSystem::getObfuscatedFileName(char const*)
; decoder-mode: arm
0056e064  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056e068  58 41 9f e5                                      ldr r4, [pc, #0x158]
0056e06c  58 71 9f e5                                      ldr r7, [pc, #0x158]
0056e070  58 61 9f e5                                      ldr r6, [pc, #0x158]
0056e074  04 40 8f e0                                      add r4, pc, r4
0056e078  07 20 94 e7                                      ldr r2, [r4, r7]
0056e07c  06 30 94 e7                                      ldr r3, [r4, r6]
0056e080  20 d0 4d e2                                      sub sp, sp, #0x20
0056e084  10 20 92 e5                                      ldr r2, [r2, #0x10]
0056e088  00 30 93 e5                                      ldr r3, [r3]
0056e08c  00 50 a0 e1                                      mov r5, r0
0056e090  00 00 52 e3                                      cmp r2, #0
0056e094  1c 30 8d e5                                      str r3, [sp, #0x1c]
0056e098  26 00 00 0a                                      beq #0x56e138
0056e09c  d0 30 d0 e1                                      ldrsb r3, [r0]
0056e0a0  2e 00 53 e3                                      cmp r3, #0x2e
0056e0a4  39 00 00 0a                                      beq #0x56e190
0056e0a8  05 a0 a0 e1                                      mov sl, r5
0056e0ac  20 31 9f e5                                      ldr r3, [pc, #0x120]
0056e0b0  03 80 94 e7                                      ldr r8, [r4, r3]
0056e0b4  08 00 a0 e1                                      mov r0, r8
0056e0b8  65 7f f6 eb                                      bl #0x30de54
0056e0bc  00 90 50 e2                                      subs sb, r0, #0
0056e0c0  24 00 00 1a                                      bne #0x56e158
0056e0c4  04 80 8d e2                                      add r8, sp, #4
0056e0c8  0a 10 a0 e1                                      mov r1, sl
0056e0cc  08 00 a0 e1                                      mov r0, r8
0056e0d0  0d 20 a0 e1                                      mov r2, sp
0056e0d4  d8 df f6 eb                                      bl #0x32603c
0056e0d8  18 30 9d e5                                      ldr r3, [sp, #0x18]
0056e0dc  14 10 9d e5                                      ldr r1, [sp, #0x14]
0056e0e0  01 00 53 e1                                      cmp r3, r1
0056e0e4  06 00 00 0a                                      beq #0x56e104
0056e0e8  2f 00 a0 e3                                      mov r0, #0x2f
0056e0ec  d0 20 d3 e1                                      ldrsb r2, [r3]
0056e0f0  5c 00 52 e3                                      cmp r2, #0x5c
0056e0f4  00 00 c3 05                                      strbeq r0, [r3]
0056e0f8  01 30 83 e2                                      add r3, r3, #1
0056e0fc  01 00 53 e1                                      cmp r3, r1
0056e100  f9 ff ff 1a                                      bne #0x56e0ec
0056e104  08 00 a0 e1                                      mov r0, r8
0056e108  8e fe ff eb                                      bl #0x56db48
0056e10c  07 30 94 e7                                      ldr r3, [r4, r7]
0056e110  03 00 50 e1                                      cmp r0, r3
0056e114  23 00 00 0a                                      beq #0x56e1a8
0056e118  18 30 9d e5                                      ldr r3, [sp, #0x18]
0056e11c  3c 50 90 e5                                      ldr r5, [r0, #0x3c]
0056e120  08 00 53 e1                                      cmp r3, r8
0056e124  03 00 00 0a                                      beq #0x56e138
0056e128  00 00 53 e3                                      cmp r3, #0
0056e12c  01 00 00 0a                                      beq #0x56e138
0056e130  03 00 a0 e1                                      mov r0, r3
0056e134  c5 88 f6 eb                                      bl #0x310450
0056e138  06 30 94 e7                                      ldr r3, [r4, r6]
0056e13c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0056e140  05 00 a0 e1                                      mov r0, r5
0056e144  00 30 93 e5                                      ldr r3, [r3]
0056e148  03 00 52 e1                                      cmp r2, r3
0056e14c  1c 00 00 1a                                      bne #0x56e1c4
0056e150  20 d0 8d e2                                      add sp, sp, #0x20
0056e154  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056e158  0a 00 a0 e1                                      mov r0, sl
0056e15c  08 10 a0 e1                                      mov r1, r8
0056e160  9b 82 f6 eb                                      bl #0x30ebd4
0056e164  00 00 50 e3                                      cmp r0, #0
0056e168  d5 ff ff 0a                                      beq #0x56e0c4
0056e16c  09 80 88 e0                                      add r8, r8, sb
0056e170  d1 30 58 e1                                      ldrsb r3, [r8, #-1]
0056e174  5c 00 53 e3                                      cmp r3, #0x5c
0056e178  2f 00 53 13                                      cmpne r3, #0x2f
0056e17c  00 30 a0 03                                      moveq r3, #0
0056e180  01 30 a0 13                                      movne r3, #1
0056e184  09 90 83 e0                                      add sb, r3, sb
0056e188  09 a0 8a e0                                      add sl, sl, sb
0056e18c  cc ff ff ea                                      b #0x56e0c4
0056e190  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
0056e194  2f 00 53 e3                                      cmp r3, #0x2f
0056e198  5c 00 53 13                                      cmpne r3, #0x5c
0056e19c  02 a0 80 02                                      addeq sl, r0, #2
0056e1a0  c1 ff ff 0a                                      beq #0x56e0ac
0056e1a4  bf ff ff ea                                      b #0x56e0a8
0056e1a8  18 00 9d e5                                      ldr r0, [sp, #0x18]
0056e1ac  08 00 50 e1                                      cmp r0, r8
0056e1b0  e0 ff ff 0a                                      beq #0x56e138
0056e1b4  00 00 50 e3                                      cmp r0, #0
0056e1b8  de ff ff 0a                                      beq #0x56e138
0056e1bc  a3 88 f6 eb                                      bl #0x310450
0056e1c0  dc ff ff ea                                      b #0x56e138
0056e1c4  51 80 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0056e1c8  1c 6a 42 00 b4 47 00 00 ac 40 00 00 68 0e 00 00  .byte 0x1c, 0x6a, 0x42, 0x00, 0xb4, 0x47, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0x0e, 0x00, 0x00

; FUNCTION 0x0056e6dc, declared_size=1108, range_size=1108, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem21addObfuscationFileMapEPKchSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::io::CFileSystem::addObfuscationFileMap(char const*, unsigned char, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >)
; decoder-mode: arm
0056e6dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056e6e0  38 c4 9f e5                                      ldr ip, [pc, #0x438]
0056e6e4  38 e4 9f e5                                      ldr lr, [pc, #0x438]
0056e6e8  ec d0 4d e2                                      sub sp, sp, #0xec
0056e6ec  0c c0 8f e0                                      add ip, pc, ip
0056e6f0  18 30 8d e5                                      str r3, [sp, #0x18]
0056e6f4  0e 30 9c e7                                      ldr r3, [ip, lr]
0056e6f8  0c c0 8d e5                                      str ip, [sp, #0xc]
0056e6fc  30 e0 8d e5                                      str lr, [sp, #0x30]
0056e700  00 30 93 e5                                      ldr r3, [r3]
0056e704  08 20 8d e5                                      str r2, [sp, #8]
0056e708  e4 30 8d e5                                      str r3, [sp, #0xe4]
0056e70c  00 30 90 e5                                      ldr r3, [r0]
0056e710  0f e0 a0 e1                                      mov lr, pc
0056e714  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056e718  00 30 90 e5                                      ldr r3, [r0]
0056e71c  00 50 a0 e1                                      mov r5, r0
0056e720  0f e0 a0 e1                                      mov lr, pc
0056e724  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0056e728  00 10 a0 e3                                      mov r1, #0
0056e72c  00 40 a0 e1                                      mov r4, r0
0056e730  01 00 80 e2                                      add r0, r0, #1
0056e734  9b 16 ff eb                                      bl #0x5341a8
0056e738  00 30 95 e5                                      ldr r3, [r5]
0056e73c  00 10 a0 e1                                      mov r1, r0
0056e740  00 70 a0 e1                                      mov r7, r0
0056e744  04 20 a0 e1                                      mov r2, r4
0056e748  05 00 a0 e1                                      mov r0, r5
0056e74c  0f e0 a0 e1                                      mov lr, pc
0056e750  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056e754  05 00 a0 e1                                      mov r0, r5
0056e758  89 bb f6 eb                                      bl #0x31d584
0056e75c  00 50 a0 e3                                      mov r5, #0
0056e760  00 00 54 e3                                      cmp r4, #0
0056e764  04 50 c7 e7                                      strb r5, [r7, r4]
0056e768  33 00 00 0a                                      beq #0x56e83c
0056e76c  ab ba 0a e3                                      movw fp, #0xaaab
0056e770  56 95 05 e3                                      movw sb, #0x5556
0056e774  48 50 cd e5                                      strb r5, [sp, #0x48]
0056e778  49 50 cd e5                                      strb r5, [sp, #0x49]
0056e77c  4a 50 cd e5                                      strb r5, [sp, #0x4a]
0056e780  aa ba 4a e3                                      movt fp, #0xaaaa
0056e784  55 95 45 e3                                      movt sb, #0x5555
0056e788  08 80 9d e5                                      ldr r8, [sp, #8]
0056e78c  00 00 00 ea                                      b #0x56e794
0056e790  08 80 83 e0                                      add r8, r3, r8
0056e794  d5 a0 97 e1                                      ldrsb sl, [r7, r5]
0056e798  9b 05 86 e0                                      umull r0, r6, fp, r5
0056e79c  08 a0 5a e0                                      subs sl, sl, r8
0056e7a0  01 3c a0 43                                      movmi r3, #0x100
0056e7a4  00 30 a0 53                                      movpl r3, #0
0056e7a8  0a a0 83 e0                                      add sl, r3, sl
0056e7ac  a6 60 a0 e1                                      lsr r6, r6, #1
0056e7b0  aa 2f 8a e0                                      add r2, sl, sl, lsr #31
0056e7b4  01 00 02 e2                                      and r0, r2, #1
0056e7b8  aa 3f a0 e1                                      lsr r3, sl, #0x1f
0056e7bc  86 60 86 e0                                      add r6, r6, r6, lsl #1
0056e7c0  05 60 66 e0                                      rsb r6, r6, r5
0056e7c4  c2 20 a0 e1                                      asr r2, r2, #1
0056e7c8  00 30 63 e0                                      rsb r3, r3, r0
0056e7cc  e8 10 8d e2                                      add r1, sp, #0xe8
0056e7d0  92 03 00 e0                                      mul r0, r2, r3
0056e7d4  7a a0 ef e6                                      uxtb sl, sl
0056e7d8  06 30 81 e0                                      add r3, r1, r6
0056e7dc  a0 a0 43 e5                                      strb sl, [r3, #-0xa0]
0056e7e0  08 10 9d e5                                      ldr r1, [sp, #8]
0056e7e4  46 80 f6 eb                                      bl #0x30e904
0056e7e8  d9 04 dd e1                                      ldrsb r0, [sp, #0x49]
0056e7ec  d8 24 dd e1                                      ldrsb r2, [sp, #0x48]
0056e7f0  da 34 dd e1                                      ldrsb r3, [sp, #0x4a]
0056e7f4  01 60 46 e2                                      sub r6, r6, #1
0056e7f8  02 20 80 e0                                      add r2, r0, r2
0056e7fc  03 30 82 e0                                      add r3, r2, r3
0056e800  99 c3 c2 e0                                      smull ip, r2, sb, r3
0056e804  05 a0 c7 e7                                      strb sl, [r7, r5]
0056e808  c3 3f 42 e0                                      sub r3, r2, r3, asr #31
0056e80c  96 31 26 e0                                      mla r6, r6, r1, r3
0056e810  01 50 85 e2                                      add r5, r5, #1
0056e814  08 80 86 e0                                      add r8, r6, r8
0056e818  c8 0f a0 e1                                      asr r0, r8, #0x1f
0056e81c  20 0c a0 e1                                      lsr r0, r0, #0x18
0056e820  00 80 88 e0                                      add r8, r8, r0
0056e824  ff 80 08 e2                                      and r8, r8, #0xff
0056e828  00 80 58 e0                                      subs r8, r8, r0
0056e82c  01 3c a0 43                                      movmi r3, #0x100
0056e830  00 30 a0 53                                      movpl r3, #0
0056e834  05 00 54 e1                                      cmp r4, r5
0056e838  d4 ff ff 1a                                      bne #0x56e790
0056e83c  e4 12 9f e5                                      ldr r1, [pc, #0x2e4]
0056e840  06 40 44 e2                                      sub r4, r4, #6
0056e844  04 40 87 e0                                      add r4, r7, r4
0056e848  01 10 8f e0                                      add r1, pc, r1
0056e84c  04 00 a0 e1                                      mov r0, r4
0056e850  b1 7e f6 eb                                      bl #0x30e31c
0056e854  00 00 50 e3                                      cmp r0, #0
0056e858  ab 00 00 1a                                      bne #0x56eb0c
0056e85c  04 00 57 e1                                      cmp r7, r4
0056e860  9b 00 00 2a                                      bhs #0x56ead4
0056e864  c0 e2 9f e5                                      ldr lr, [pc, #0x2c0]
0056e868  54 00 8d e2                                      add r0, sp, #0x54
0056e86c  08 00 8d e5                                      str r0, [sp, #8]
0056e870  14 e0 8d e5                                      str lr, [sp, #0x14]
0056e874  44 10 8d e2                                      add r1, sp, #0x44
0056e878  9c 20 8d e2                                      add r2, sp, #0x9c
0056e87c  4c 30 8d e2                                      add r3, sp, #0x4c
0056e880  40 c0 8d e2                                      add ip, sp, #0x40
0056e884  3c e0 8d e2                                      add lr, sp, #0x3c
0056e888  18 00 80 e2                                      add r0, r0, #0x18
0056e88c  07 50 a0 e1                                      mov r5, r7
0056e890  1c 10 8d e5                                      str r1, [sp, #0x1c]
0056e894  10 20 8d e5                                      str r2, [sp, #0x10]
0056e898  20 30 8d e5                                      str r3, [sp, #0x20]
0056e89c  84 80 8d e2                                      add r8, sp, #0x84
0056e8a0  24 c0 8d e5                                      str ip, [sp, #0x24]
0056e8a4  28 e0 8d e5                                      str lr, [sp, #0x28]
0056e8a8  2c 00 8d e5                                      str r0, [sp, #0x2c]
0056e8ac  34 70 8d e5                                      str r7, [sp, #0x34]
0056e8b0  1a 00 00 ea                                      b #0x56e920
0056e8b4  0b 00 59 e1                                      cmp sb, fp
0056e8b8  4b 00 00 ba                                      blt #0x56e9ec
0056e8bc  0a 00 a0 e1                                      mov r0, sl
0056e8c0  04 30 8d e5                                      str r3, [sp, #4]
0056e8c4  7c f6 ff eb                                      bl #0x56c2bc
0056e8c8  04 30 9d e5                                      ldr r3, [sp, #4]
0056e8cc  cc 60 8d e2                                      add r6, sp, #0xcc
0056e8d0  28 a0 83 e2                                      add sl, r3, #0x28
0056e8d4  05 20 a0 e1                                      mov r2, r5
0056e8d8  06 00 a0 e1                                      mov r0, r6
0056e8dc  18 10 9d e5                                      ldr r1, [sp, #0x18]
0056e8e0  f2 fb ff eb                                      bl #0x56d8b0
0056e8e4  06 00 5a e1                                      cmp sl, r6
0056e8e8  03 00 00 0a                                      beq #0x56e8fc
0056e8ec  0a 00 a0 e1                                      mov r0, sl
0056e8f0  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
0056e8f4  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
0056e8f8  a2 c8 f6 eb                                      bl #0x320b88
0056e8fc  e0 00 9d e5                                      ldr r0, [sp, #0xe0]
0056e900  06 00 50 e1                                      cmp r0, r6
0056e904  02 00 00 0a                                      beq #0x56e914
0056e908  00 00 50 e3                                      cmp r0, #0
0056e90c  00 00 00 0a                                      beq #0x56e914
0056e910  ce 86 f6 eb                                      bl #0x310450
0056e914  01 50 87 e2                                      add r5, r7, #1
0056e918  05 00 54 e1                                      cmp r4, r5
0056e91c  78 00 00 9a                                      bls #0x56eb04
0056e920  05 00 a0 e1                                      mov r0, r5
0056e924  3a 10 a0 e3                                      mov r1, #0x3a
0056e928  04 20 65 e0                                      rsb r2, r5, r4
0056e92c  22 7f f6 eb                                      bl #0x30e5bc
0056e930  00 00 50 e3                                      cmp r0, #0
0056e934  64 00 00 0a                                      beq #0x56eacc
0056e938  00 00 54 e1                                      cmp r4, r0
0056e93c  44 00 8d e5                                      str r0, [sp, #0x44]
0056e940  6f 00 00 0a                                      beq #0x56eb04
0056e944  00 60 a0 e3                                      mov r6, #0
0056e948  00 60 c0 e5                                      strb r6, [r0]
0056e94c  44 30 9d e5                                      ldr r3, [sp, #0x44]
0056e950  0a 10 a0 e3                                      mov r1, #0xa
0056e954  01 30 83 e2                                      add r3, r3, #1
0056e958  04 20 63 e0                                      rsb r2, r3, r4
0056e95c  03 00 a0 e1                                      mov r0, r3
0056e960  44 30 8d e5                                      str r3, [sp, #0x44]
0056e964  14 7f f6 eb                                      bl #0x30e5bc
0056e968  14 10 9d e5                                      ldr r1, [sp, #0x14]
0056e96c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0056e970  06 00 50 e1                                      cmp r0, r6
0056e974  00 70 a0 11                                      movne r7, r0
0056e978  01 a0 92 e7                                      ldr sl, [r2, r1]
0056e97c  04 70 a0 01                                      moveq r7, r4
0056e980  00 60 c7 e5                                      strb r6, [r7]
0056e984  0a 00 a0 e1                                      mov r0, sl
0056e988  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0056e98c  90 fa ff eb                                      bl #0x56d3d4
0056e990  0a 00 50 e1                                      cmp r0, sl
0056e994  00 60 a0 e1                                      mov r6, r0
0056e998  15 00 00 0a                                      beq #0x56e9f4
0056e99c  b4 a0 8d e2                                      add sl, sp, #0xb4
0056e9a0  44 10 9d e5                                      ldr r1, [sp, #0x44]
0056e9a4  50 20 8d e2                                      add r2, sp, #0x50
0056e9a8  0a 00 a0 e1                                      mov r0, sl
0056e9ac  a2 dd f6 eb                                      bl #0x32603c
0056e9b0  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
0056e9b4  24 10 96 e5                                      ldr r1, [r6, #0x24]
0056e9b8  20 b0 96 e5                                      ldr fp, [r6, #0x20]
0056e9bc  c4 90 9d e5                                      ldr sb, [sp, #0xc4]
0056e9c0  03 00 a0 e1                                      mov r0, r3
0056e9c4  0b b0 61 e0                                      rsb fp, r1, fp
0056e9c8  09 90 63 e0                                      rsb sb, r3, sb
0056e9cc  09 00 5b e1                                      cmp fp, sb
0056e9d0  0b 20 a0 b1                                      movlt r2, fp
0056e9d4  09 20 a0 a1                                      movge r2, sb
0056e9d8  00 7f f6 eb                                      bl #0x30e5e0
0056e9dc  00 00 50 e3                                      cmp r0, #0
0056e9e0  06 30 a0 e1                                      mov r3, r6
0056e9e4  b2 ff ff 0a                                      beq #0x56e8b4
0056e9e8  b3 ff ff aa                                      bge #0x56e8bc
0056e9ec  0a 00 a0 e1                                      mov r0, sl
0056e9f0  31 f6 ff eb                                      bl #0x56c2bc
0056e9f4  20 20 9d e5                                      ldr r2, [sp, #0x20]
0056e9f8  44 10 9d e5                                      ldr r1, [sp, #0x44]
0056e9fc  10 00 9d e5                                      ldr r0, [sp, #0x10]
0056ea00  8d dd f6 eb                                      bl #0x32603c
0056ea04  08 00 a0 e1                                      mov r0, r8
0056ea08  10 10 a0 e3                                      mov r1, #0x10
0056ea0c  94 80 8d e5                                      str r8, [sp, #0x94]
0056ea10  98 80 8d e5                                      str r8, [sp, #0x98]
0056ea14  e3 c7 f6 eb                                      bl #0x3209a8
0056ea18  94 30 9d e5                                      ldr r3, [sp, #0x94]
0056ea1c  00 20 a0 e3                                      mov r2, #0
0056ea20  10 10 9d e5                                      ldr r1, [sp, #0x10]
0056ea24  00 20 c3 e5                                      strb r2, [r3]
0056ea28  08 00 9d e5                                      ldr r0, [sp, #8]
0056ea2c  08 20 a0 e1                                      mov r2, r8
0056ea30  4d f6 ff eb                                      bl #0x56c36c
0056ea34  14 30 9d e5                                      ldr r3, [sp, #0x14]
0056ea38  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0056ea3c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0056ea40  28 20 9d e5                                      ldr r2, [sp, #0x28]
0056ea44  03 10 9c e7                                      ldr r1, [ip, r3]
0056ea48  08 30 9d e5                                      ldr r3, [sp, #8]
0056ea4c  3c 60 8d e5                                      str r6, [sp, #0x3c]
0056ea50  e0 fd ff eb                                      bl #0x56e1d8
0056ea54  80 00 9d e5                                      ldr r0, [sp, #0x80]
0056ea58  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
0056ea5c  40 a0 9d e5                                      ldr sl, [sp, #0x40]
0056ea60  0e 00 50 e1                                      cmp r0, lr
0056ea64  02 00 00 0a                                      beq #0x56ea74
0056ea68  00 00 50 e3                                      cmp r0, #0
0056ea6c  00 00 00 0a                                      beq #0x56ea74
0056ea70  76 86 f6 eb                                      bl #0x310450
0056ea74  68 00 9d e5                                      ldr r0, [sp, #0x68]
0056ea78  08 10 9d e5                                      ldr r1, [sp, #8]
0056ea7c  01 00 50 e1                                      cmp r0, r1
0056ea80  02 00 00 0a                                      beq #0x56ea90
0056ea84  00 00 50 e3                                      cmp r0, #0
0056ea88  00 00 00 0a                                      beq #0x56ea90
0056ea8c  6f 86 f6 eb                                      bl #0x310450
0056ea90  98 00 9d e5                                      ldr r0, [sp, #0x98]
0056ea94  08 00 50 e1                                      cmp r0, r8
0056ea98  02 00 00 0a                                      beq #0x56eaa8
0056ea9c  00 00 50 e3                                      cmp r0, #0
0056eaa0  00 00 00 0a                                      beq #0x56eaa8
0056eaa4  69 86 f6 eb                                      bl #0x310450
0056eaa8  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
0056eaac  10 20 9d e5                                      ldr r2, [sp, #0x10]
0056eab0  02 00 50 e1                                      cmp r0, r2
0056eab4  02 00 00 0a                                      beq #0x56eac4
0056eab8  00 00 50 e3                                      cmp r0, #0
0056eabc  00 00 00 0a                                      beq #0x56eac4
0056eac0  62 86 f6 eb                                      bl #0x310450
0056eac4  0a 30 a0 e1                                      mov r3, sl
0056eac8  7f ff ff ea                                      b #0x56e8cc
0056eacc  34 70 9d e5                                      ldr r7, [sp, #0x34]
0056ead0  44 40 8d e5                                      str r4, [sp, #0x44]
0056ead4  07 00 a0 e1                                      mov r0, r7
0056ead8  f4 7d f6 eb                                      bl #0x30e2b0
0056eadc  01 00 a0 e3                                      mov r0, #1
0056eae0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0056eae4  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0056eae8  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
0056eaec  0c 30 91 e7                                      ldr r3, [r1, ip]
0056eaf0  00 30 93 e5                                      ldr r3, [r3]
0056eaf4  03 00 52 e1                                      cmp r2, r3
0056eaf8  07 00 00 1a                                      bne #0x56eb1c
0056eafc  ec d0 8d e2                                      add sp, sp, #0xec
0056eb00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056eb04  34 70 9d e5                                      ldr r7, [sp, #0x34]
0056eb08  f1 ff ff ea                                      b #0x56ead4
0056eb0c  07 00 a0 e1                                      mov r0, r7
0056eb10  e6 7d f6 eb                                      bl #0x30e2b0
0056eb14  00 00 a0 e3                                      mov r0, #0
0056eb18  f0 ff ff ea                                      b #0x56eae0
0056eb1c  fb 7d f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0056eb20  a4 63 42 00 ac 40 00 00 48 07 37 00 b4 47 00 00  .byte 0xa4, 0x63, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x07, 0x37, 0x00, 0xb4, 0x47, 0x00, 0x00

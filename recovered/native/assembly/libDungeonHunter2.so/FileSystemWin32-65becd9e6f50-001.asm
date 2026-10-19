; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034eba4, declared_size=8, range_size=8, mode=arm
; class-group: FileSystemWin32
; alias: _ZNK15FileSystemWin3211getRootPathEv
; demangled: FileSystemWin32::getRootPath() const
; decoder-mode: arm
0034eba4  2c 00 80 e2                                      add r0, r0, #0x2c
0034eba8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034ebac, declared_size=8, range_size=8, mode=arm
; class-group: FileSystemWin32
; alias: _ZNK15FileSystemWin3216getResourcesPathEv
; demangled: FileSystemWin32::getResourcesPath() const
; decoder-mode: arm
0034ebac  8d 0f 80 e2                                      add r0, r0, #0x234
0034ebb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034ebb4, declared_size=12, range_size=12, mode=arm
; class-group: FileSystemWin32
; alias: _ZNK15FileSystemWin3216getSavefilesPathEv
; demangled: FileSystemWin32::getSavefilesPath() const
; decoder-mode: arm
0034ebb4  43 0e 80 e2                                      add r0, r0, #0x430
0034ebb8  0c 00 80 e2                                      add r0, r0, #0xc
0034ebbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034ebc0, declared_size=4, range_size=4, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin3212copySavefileEPKc
; demangled: FileSystemWin32::copySavefile(char const*)
; decoder-mode: arm
0034ebc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034ebc4, declared_size=8, range_size=8, mode=arm
; class-group: FileSystemWin32
; alias: _ZNK15FileSystemWin3212_getFileInfoEPKcS1_Pv
; demangled: FileSystemWin32::_getFileInfo(char const*, char const*, void*) const
; decoder-mode: arm
0034ebc4  01 00 a0 e3                                      mov r0, #1
0034ebc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034ebcc, declared_size=48, range_size=48, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin329closeFileERP11IFileStream
; demangled: FileSystemWin32::closeFile(IFileStream*&)
; decoder-mode: arm
0034ebcc  00 30 91 e5                                      ldr r3, [r1]
0034ebd0  10 40 2d e9                                      push {r4, lr}
0034ebd4  00 00 53 e3                                      cmp r3, #0
0034ebd8  01 40 a0 e1                                      mov r4, r1
0034ebdc  05 00 00 0a                                      beq #0x34ebf8
0034ebe0  03 00 a0 e1                                      mov r0, r3
0034ebe4  00 30 93 e5                                      ldr r3, [r3]
0034ebe8  0f e0 a0 e1                                      mov lr, pc
0034ebec  04 f0 93 e5                                      ldr pc, [r3, #4]
0034ebf0  00 30 a0 e3                                      mov r3, #0
0034ebf4  00 30 84 e5                                      str r3, [r4]
0034ebf8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0034ebfc, declared_size=4, range_size=4, mode=arm
; class-group: FileSystemWin32
; alias: _ZNK15FileSystemWin3210getFoldersEPKcRSt6vectorISsSaISsEE
; demangled: FileSystemWin32::getFolders(char const*, std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&) const
; decoder-mode: arm
0034ebfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034ec00, declared_size=4, range_size=4, mode=arm
; class-group: FileSystemWin32
; alias: _ZNK15FileSystemWin3215isFileNewerThanEPKcS1_
; demangled: FileSystemWin32::isFileNewerThan(char const*, char const*) const
; decoder-mode: arm
0034ec00  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034f068, declared_size=164, range_size=164, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin329_getPathsEv
; demangled: FileSystemWin32::_getPaths()
; decoder-mode: arm
0034f068  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0034f06c  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0034f070  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0034f074  03 30 8f e0                                      add r3, pc, r3
0034f078  02 60 93 e7                                      ldr r6, [r3, r2]
0034f07c  80 20 9f e5                                      ldr r2, [pc, #0x80]
0034f080  43 df 4d e2                                      sub sp, sp, #0x10c
0034f084  00 50 a0 e1                                      mov r5, r0
0034f088  02 40 93 e7                                      ldr r4, [r3, r2]
0034f08c  00 20 96 e5                                      ldr r2, [r6]
0034f090  2c 00 80 e2                                      add r0, r0, #0x2c
0034f094  00 10 94 e5                                      ldr r1, [r4]
0034f098  04 21 8d e5                                      str r2, [sp, #0x104]
0034f09c  1f fd fe eb                                      bl #0x30e520
0034f0a0  00 10 94 e5                                      ldr r1, [r4]
0034f0a4  13 0e 85 e2                                      add r0, r5, #0x130
0034f0a8  1c fd fe eb                                      bl #0x30e520
0034f0ac  54 10 9f e5                                      ldr r1, [pc, #0x54]
0034f0b0  04 70 8d e2                                      add r7, sp, #4
0034f0b4  00 20 94 e5                                      ldr r2, [r4]
0034f0b8  01 10 8f e0                                      add r1, pc, r1
0034f0bc  07 00 a0 e1                                      mov r0, r7
0034f0c0  87 fe fe eb                                      bl #0x30eae4
0034f0c4  07 10 a0 e1                                      mov r1, r7
0034f0c8  ce 0f 85 e2                                      add r0, r5, #0x338
0034f0cc  13 fd fe eb                                      bl #0x30e520
0034f0d0  43 0e 85 e2                                      add r0, r5, #0x430
0034f0d4  0c 00 80 e2                                      add r0, r0, #0xc
0034f0d8  00 10 94 e5                                      ldr r1, [r4]
0034f0dc  0f fd fe eb                                      bl #0x30e520
0034f0e0  04 21 9d e5                                      ldr r2, [sp, #0x104]
0034f0e4  00 30 96 e5                                      ldr r3, [r6]
0034f0e8  03 00 52 e1                                      cmp r2, r3
0034f0ec  01 00 00 1a                                      bne #0x34f0f8
0034f0f0  43 df 8d e2                                      add sp, sp, #0x10c
0034f0f4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0034f0f8  84 fc fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034f0fc  1c 5a 64 00 ac 40 00 00 00 06 00 00 a0 16 57 00  .byte 0x1c, 0x5a, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0xa0, 0x16, 0x57, 0x00

; FUNCTION 0x0034f10c, declared_size=360, range_size=360, mode=arm
; class-group: FileSystemWin32
; alias: _ZNK15FileSystemWin3214backupSavefileEPKcS1_
; demangled: FileSystemWin32::backupSavefile(char const*, char const*) const
; decoder-mode: arm
0034f10c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0034f110  40 41 9f e5                                      ldr r4, [pc, #0x140]
0034f114  40 31 9f e5                                      ldr r3, [pc, #0x140]
0034f118  40 81 9f e5                                      ldr r8, [pc, #0x140]
0034f11c  04 40 8f e0                                      add r4, pc, r4
0034f120  03 00 94 e7                                      ldr r0, [r4, r3]
0034f124  08 30 94 e7                                      ldr r3, [r4, r8]
0034f128  34 51 9f e5                                      ldr r5, [pc, #0x134]
0034f12c  00 70 90 e5                                      ldr r7, [r0]
0034f130  92 df 4d e2                                      sub sp, sp, #0x248
0034f134  00 c0 93 e5                                      ldr ip, [r3]
0034f138  05 50 8f e0                                      add r5, pc, r5
0034f13c  11 ae 8d e2                                      add sl, sp, #0x110
0034f140  01 30 a0 e1                                      mov r3, r1
0034f144  02 90 a0 e1                                      mov sb, r2
0034f148  05 10 a0 e1                                      mov r1, r5
0034f14c  07 20 a0 e1                                      mov r2, r7
0034f150  0c 60 8d e2                                      add r6, sp, #0xc
0034f154  0a 00 a0 e1                                      mov r0, sl
0034f158  44 c2 8d e5                                      str ip, [sp, #0x244]
0034f15c  60 fe fe eb                                      bl #0x30eae4
0034f160  05 10 a0 e1                                      mov r1, r5
0034f164  07 20 a0 e1                                      mov r2, r7
0034f168  09 30 a0 e1                                      mov r3, sb
0034f16c  06 00 a0 e1                                      mov r0, r6
0034f170  5b fe fe eb                                      bl #0x30eae4
0034f174  06 00 a0 e1                                      mov r0, r6
0034f178  ca fc fe eb                                      bl #0x30e4a8
0034f17c  00 00 50 e3                                      cmp r0, #0
0034f180  1a 00 00 0a                                      beq #0x34f1f0
0034f184  11 fb fe eb                                      bl #0x30ddd0
0034f188  00 30 90 e5                                      ldr r3, [r0]
0034f18c  02 00 53 e3                                      cmp r3, #2
0034f190  16 00 00 0a                                      beq #0x34f1f0
0034f194  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0034f198  8b 5f 8d e2                                      add r5, sp, #0x22c
0034f19c  03 60 94 e7                                      ldr r6, [r4, r3]
0034f1a0  06 00 a0 e1                                      mov r0, r6
0034f1a4  b7 a1 ff eb                                      bl #0x337888
0034f1a8  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0034f1ac  08 20 8d e2                                      add r2, sp, #8
0034f1b0  05 00 a0 e1                                      mov r0, r5
0034f1b4  01 10 8f e0                                      add r1, pc, r1
0034f1b8  cb 13 ff eb                                      bl #0x3140ec
0034f1bc  05 10 a0 e1                                      mov r1, r5
0034f1c0  06 00 a0 e1                                      mov r0, r6
0034f1c4  2f a2 ff eb                                      bl #0x337a88
0034f1c8  05 00 a0 e1                                      mov r0, r5
0034f1cc  20 24 ff eb                                      bl #0x318254
0034f1d0  00 00 a0 e3                                      mov r0, #0
0034f1d4  08 30 94 e7                                      ldr r3, [r4, r8]
0034f1d8  44 22 9d e5                                      ldr r2, [sp, #0x244]
0034f1dc  00 30 93 e5                                      ldr r3, [r3]
0034f1e0  03 00 52 e1                                      cmp r2, r3
0034f1e4  1a 00 00 1a                                      bne #0x34f254
0034f1e8  92 df 8d e2                                      add sp, sp, #0x248
0034f1ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0034f1f0  0a 00 a0 e1                                      mov r0, sl
0034f1f4  06 10 a0 e1                                      mov r1, r6
0034f1f8  19 fd fe eb                                      bl #0x30e664
0034f1fc  00 00 50 e3                                      cmp r0, #0
0034f200  01 00 a0 03                                      moveq r0, #1
0034f204  f2 ff ff 0a                                      beq #0x34f1d4
0034f208  f0 fa fe eb                                      bl #0x30ddd0
0034f20c  00 30 90 e5                                      ldr r3, [r0]
0034f210  50 30 9f e5                                      ldr r3, [pc, #0x50]
0034f214  85 5f 8d e2                                      add r5, sp, #0x214
0034f218  03 60 94 e7                                      ldr r6, [r4, r3]
0034f21c  06 00 a0 e1                                      mov r0, r6
0034f220  98 a1 ff eb                                      bl #0x337888
0034f224  44 10 9f e5                                      ldr r1, [pc, #0x44]
0034f228  04 20 8d e2                                      add r2, sp, #4
0034f22c  05 00 a0 e1                                      mov r0, r5
0034f230  01 10 8f e0                                      add r1, pc, r1
0034f234  ac 13 ff eb                                      bl #0x3140ec
0034f238  05 10 a0 e1                                      mov r1, r5
0034f23c  06 00 a0 e1                                      mov r0, r6
0034f240  10 a2 ff eb                                      bl #0x337a88
0034f244  05 00 a0 e1                                      mov r0, r5
0034f248  01 24 ff eb                                      bl #0x318254
0034f24c  00 00 a0 e3                                      mov r0, #0
0034f250  df ff ff ea                                      b #0x34f1d4
0034f254  2d fc fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034f258  74 59 64 00 00 06 00 00 ac 40 00 00 d0 19 57 00  .byte 0x74, 0x59, 0x64, 0x00, 0x00, 0x06, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd0, 0x19, 0x57, 0x00
0034f268  84 08 00 00 ac 15 57 00 30 15 57 00              .byte 0x84, 0x08, 0x00, 0x00, 0xac, 0x15, 0x57, 0x00, 0x30, 0x15, 0x57, 0x00

; FUNCTION 0x0034f274, declared_size=216, range_size=216, mode=arm
; class-group: FileSystemWin32
; alias: _ZNK15FileSystemWin3214deleteSavefileEPKc
; demangled: FileSystemWin32::deleteSavefile(char const*) const
; decoder-mode: arm
0034f274  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0034f278  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
0034f27c  b4 50 9f e5                                      ldr r5, [pc, #0xb4]
0034f280  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0034f284  04 40 8f e0                                      add r4, pc, r4
0034f288  05 30 94 e7                                      ldr r3, [r4, r5]
0034f28c  02 20 94 e7                                      ldr r2, [r4, r2]
0034f290  4b df 4d e2                                      sub sp, sp, #0x12c
0034f294  00 c0 93 e5                                      ldr ip, [r3]
0034f298  01 30 a0 e1                                      mov r3, r1
0034f29c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0034f2a0  08 60 8d e2                                      add r6, sp, #8
0034f2a4  00 20 92 e5                                      ldr r2, [r2]
0034f2a8  01 10 8f e0                                      add r1, pc, r1
0034f2ac  06 00 a0 e1                                      mov r0, r6
0034f2b0  24 c1 8d e5                                      str ip, [sp, #0x124]
0034f2b4  0a fe fe eb                                      bl #0x30eae4
0034f2b8  06 00 a0 e1                                      mov r0, r6
0034f2bc  79 fc fe eb                                      bl #0x30e4a8
0034f2c0  00 00 50 e3                                      cmp r0, #0
0034f2c4  01 00 a0 03                                      moveq r0, #1
0034f2c8  11 00 00 0a                                      beq #0x34f314
0034f2cc  bf fa fe eb                                      bl #0x30ddd0
0034f2d0  00 30 90 e5                                      ldr r3, [r0]
0034f2d4  68 30 9f e5                                      ldr r3, [pc, #0x68]
0034f2d8  43 6f 8d e2                                      add r6, sp, #0x10c
0034f2dc  03 70 94 e7                                      ldr r7, [r4, r3]
0034f2e0  07 00 a0 e1                                      mov r0, r7
0034f2e4  67 a1 ff eb                                      bl #0x337888
0034f2e8  58 10 9f e5                                      ldr r1, [pc, #0x58]
0034f2ec  04 20 8d e2                                      add r2, sp, #4
0034f2f0  06 00 a0 e1                                      mov r0, r6
0034f2f4  01 10 8f e0                                      add r1, pc, r1
0034f2f8  7b 13 ff eb                                      bl #0x3140ec
0034f2fc  06 10 a0 e1                                      mov r1, r6
0034f300  07 00 a0 e1                                      mov r0, r7
0034f304  df a1 ff eb                                      bl #0x337a88
0034f308  06 00 a0 e1                                      mov r0, r6
0034f30c  d0 23 ff eb                                      bl #0x318254
0034f310  00 00 a0 e3                                      mov r0, #0
0034f314  05 30 94 e7                                      ldr r3, [r4, r5]
0034f318  24 21 9d e5                                      ldr r2, [sp, #0x124]
0034f31c  00 30 93 e5                                      ldr r3, [r3]
0034f320  03 00 52 e1                                      cmp r2, r3
0034f324  01 00 00 1a                                      bne #0x34f330
0034f328  4b df 8d e2                                      add sp, sp, #0x12c
0034f32c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0034f330  f6 fb fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034f334  0c 58 64 00 ac 40 00 00 00 06 00 00 60 18 57 00  .byte 0x0c, 0x58, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x60, 0x18, 0x57, 0x00
0034f344  84 08 00 00 6c 14 57 00                          .byte 0x84, 0x08, 0x00, 0x00, 0x6c, 0x14, 0x57, 0x00

; FUNCTION 0x0034f34c, declared_size=16, range_size=16, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin3212makeFullPathEPKcS1_Pci
; demangled: FileSystemWin32::makeFullPath(char const*, char const*, char*, int)
; decoder-mode: arm
0034f34c  02 00 a0 e1                                      mov r0, r2
0034f350  00 10 a0 e3                                      mov r1, #0
0034f354  03 20 a0 e1                                      mov r2, r3
0034f358  40 fc fe ea                                      b #0x30e460

; FUNCTION 0x0034f35c, declared_size=108, range_size=108, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin3212makeFullPathEPKwS1_Pwi
; demangled: FileSystemWin32::makeFullPath(wchar_t const*, wchar_t const*, wchar_t*, int)
; decoder-mode: arm
0034f35c  70 40 2d e9                                      push {r4, r5, r6, lr}
0034f360  02 40 a0 e1                                      mov r4, r2
0034f364  01 50 a0 e1                                      mov r5, r1
0034f368  03 21 a0 e1                                      lsl r2, r3, #2
0034f36c  00 10 a0 e3                                      mov r1, #0
0034f370  00 60 a0 e1                                      mov r6, r0
0034f374  04 00 a0 e1                                      mov r0, r4
0034f378  38 fc fe eb                                      bl #0x30e460
0034f37c  40 10 9f e5                                      ldr r1, [pc, #0x40]
0034f380  05 00 a0 e1                                      mov r0, r5
0034f384  01 20 a0 e3                                      mov r2, #1
0034f388  01 10 8f e0                                      add r1, pc, r1
0034f38c  f1 fb fe eb                                      bl #0x30e358
0034f390  00 00 50 e3                                      cmp r0, #0
0034f394  06 00 00 0a                                      beq #0x34f3b4
0034f398  06 10 a0 e1                                      mov r1, r6
0034f39c  04 00 a0 e1                                      mov r0, r4
0034f3a0  d5 fa fe eb                                      bl #0x30defc
0034f3a4  04 00 a0 e1                                      mov r0, r4
0034f3a8  05 10 a0 e1                                      mov r1, r5
0034f3ac  70 40 bd e8                                      pop {r4, r5, r6, lr}
0034f3b0  d1 fa fe ea                                      b #0x30defc
0034f3b4  04 00 a0 e1                                      mov r0, r4
0034f3b8  04 10 85 e2                                      add r1, r5, #4
0034f3bc  70 40 bd e8                                      pop {r4, r5, r6, lr}
0034f3c0  cd fa fe ea                                      b #0x30defc
; mapping-symbol data/literal pool
0034f3c4  c8 13 57 00                                      .byte 0xc8, 0x13, 0x57, 0x00

; FUNCTION 0x0034f670, declared_size=52, range_size=52, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin32D1Ev
; demangled: FileSystemWin32::~FileSystemWin32()
; decoder-mode: arm
0034f670  24 30 9f e5                                      ldr r3, [pc, #0x24]
0034f674  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034f678  10 40 2d e9                                      push {r4, lr}
0034f67c  03 30 8f e0                                      add r3, pc, r3
0034f680  02 20 93 e7                                      ldr r2, [r3, r2]
0034f684  00 40 a0 e1                                      mov r4, r0
0034f688  08 20 82 e2                                      add r2, r2, #8
0034f68c  00 20 80 e5                                      str r2, [r0]
0034f690  8e fb ff eb                                      bl #0x34e4d0
0034f694  04 00 a0 e1                                      mov r0, r4
0034f698  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034f69c  14 54 64 00 54 16 00 00                          .byte 0x14, 0x54, 0x64, 0x00, 0x54, 0x16, 0x00, 0x00

; FUNCTION 0x0034f6a4, declared_size=28, range_size=28, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin32D0Ev
; demangled: FileSystemWin32::~FileSystemWin32()
; decoder-mode: arm
0034f6a4  10 40 2d e9                                      push {r4, lr}
0034f6a8  00 40 a0 e1                                      mov r4, r0
0034f6ac  ef ff ff eb                                      bl #0x34f670
0034f6b0  04 00 a0 e1                                      mov r0, r4
0034f6b4  61 03 ff eb                                      bl #0x310440
0034f6b8  04 00 a0 e1                                      mov r0, r4
0034f6bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0034f6c0, declared_size=52, range_size=52, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin32D2Ev
; demangled: FileSystemWin32::~FileSystemWin32()
; decoder-mode: arm
0034f6c0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0034f6c4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034f6c8  10 40 2d e9                                      push {r4, lr}
0034f6cc  03 30 8f e0                                      add r3, pc, r3
0034f6d0  02 20 93 e7                                      ldr r2, [r3, r2]
0034f6d4  00 40 a0 e1                                      mov r4, r0
0034f6d8  08 20 82 e2                                      add r2, r2, #8
0034f6dc  00 20 80 e5                                      str r2, [r0]
0034f6e0  7a fb ff eb                                      bl #0x34e4d0
0034f6e4  04 00 a0 e1                                      mov r0, r4
0034f6e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034f6ec  c4 53 64 00 54 16 00 00                          .byte 0xc4, 0x53, 0x64, 0x00, 0x54, 0x16, 0x00, 0x00

; FUNCTION 0x0034f6f4, declared_size=148, range_size=148, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin32C1Ev
; demangled: FileSystemWin32::FileSystemWin32()
; decoder-mode: arm
0034f6f4  70 40 2d e9                                      push {r4, r5, r6, lr}
0034f6f8  80 60 9f e5                                      ldr r6, [pc, #0x80]
0034f6fc  00 40 a0 e1                                      mov r4, r0
0034f700  8c fb ff eb                                      bl #0x34e538
0034f704  78 30 9f e5                                      ldr r3, [pc, #0x78]
0034f708  06 60 8f e0                                      add r6, pc, r6
0034f70c  41 5f a0 e3                                      mov r5, #0x104
0034f710  03 30 96 e7                                      ldr r3, [r6, r3]
0034f714  04 00 a0 e1                                      mov r0, r4
0034f718  05 20 a0 e1                                      mov r2, r5
0034f71c  08 30 83 e2                                      add r3, r3, #8
0034f720  2c 30 80 e4                                      str r3, [r0], #0x2c
0034f724  00 10 a0 e3                                      mov r1, #0
0034f728  4c fb fe eb                                      bl #0x30e460
0034f72c  05 20 a0 e1                                      mov r2, r5
0034f730  00 10 a0 e3                                      mov r1, #0
0034f734  13 0e 84 e2                                      add r0, r4, #0x130
0034f738  48 fb fe eb                                      bl #0x30e460
0034f73c  05 20 a0 e1                                      mov r2, r5
0034f740  00 10 a0 e3                                      mov r1, #0
0034f744  8d 0f 84 e2                                      add r0, r4, #0x234
0034f748  44 fb fe eb                                      bl #0x30e460
0034f74c  05 20 a0 e1                                      mov r2, r5
0034f750  00 10 a0 e3                                      mov r1, #0
0034f754  ce 0f 84 e2                                      add r0, r4, #0x338
0034f758  40 fb fe eb                                      bl #0x30e460
0034f75c  43 0e 84 e2                                      add r0, r4, #0x430
0034f760  05 20 a0 e1                                      mov r2, r5
0034f764  00 10 a0 e3                                      mov r1, #0
0034f768  0c 00 80 e2                                      add r0, r0, #0xc
0034f76c  3b fb fe eb                                      bl #0x30e460
0034f770  04 00 a0 e1                                      mov r0, r4
0034f774  3b fe ff eb                                      bl #0x34f068
0034f778  04 00 a0 e1                                      mov r0, r4
0034f77c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0034f780  88 53 64 00 54 16 00 00                          .byte 0x88, 0x53, 0x64, 0x00, 0x54, 0x16, 0x00, 0x00

; FUNCTION 0x0034f788, declared_size=148, range_size=148, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin32C2Ev
; demangled: FileSystemWin32::FileSystemWin32()
; decoder-mode: arm
0034f788  70 40 2d e9                                      push {r4, r5, r6, lr}
0034f78c  80 60 9f e5                                      ldr r6, [pc, #0x80]
0034f790  00 40 a0 e1                                      mov r4, r0
0034f794  67 fb ff eb                                      bl #0x34e538
0034f798  78 30 9f e5                                      ldr r3, [pc, #0x78]
0034f79c  06 60 8f e0                                      add r6, pc, r6
0034f7a0  41 5f a0 e3                                      mov r5, #0x104
0034f7a4  03 30 96 e7                                      ldr r3, [r6, r3]
0034f7a8  04 00 a0 e1                                      mov r0, r4
0034f7ac  05 20 a0 e1                                      mov r2, r5
0034f7b0  08 30 83 e2                                      add r3, r3, #8
0034f7b4  2c 30 80 e4                                      str r3, [r0], #0x2c
0034f7b8  00 10 a0 e3                                      mov r1, #0
0034f7bc  27 fb fe eb                                      bl #0x30e460
0034f7c0  05 20 a0 e1                                      mov r2, r5
0034f7c4  00 10 a0 e3                                      mov r1, #0
0034f7c8  13 0e 84 e2                                      add r0, r4, #0x130
0034f7cc  23 fb fe eb                                      bl #0x30e460
0034f7d0  05 20 a0 e1                                      mov r2, r5
0034f7d4  00 10 a0 e3                                      mov r1, #0
0034f7d8  8d 0f 84 e2                                      add r0, r4, #0x234
0034f7dc  1f fb fe eb                                      bl #0x30e460
0034f7e0  05 20 a0 e1                                      mov r2, r5
0034f7e4  00 10 a0 e3                                      mov r1, #0
0034f7e8  ce 0f 84 e2                                      add r0, r4, #0x338
0034f7ec  1b fb fe eb                                      bl #0x30e460
0034f7f0  43 0e 84 e2                                      add r0, r4, #0x430
0034f7f4  05 20 a0 e1                                      mov r2, r5
0034f7f8  00 10 a0 e3                                      mov r1, #0
0034f7fc  0c 00 80 e2                                      add r0, r0, #0xc
0034f800  16 fb fe eb                                      bl #0x30e460
0034f804  04 00 a0 e1                                      mov r0, r4
0034f808  16 fe ff eb                                      bl #0x34f068
0034f80c  04 00 a0 e1                                      mov r0, r4
0034f810  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0034f814  f4 52 64 00 54 16 00 00                          .byte 0xf4, 0x52, 0x64, 0x00, 0x54, 0x16, 0x00, 0x00

; FUNCTION 0x0034f8a4, declared_size=728, range_size=728, mode=arm
; class-group: FileSystemWin32
; alias: _ZNK15FileSystemWin3214formatFilePathERKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE
; demangled: FileSystemWin32::formatFilePath(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&) const
; decoder-mode: arm
0034f8a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034f8a8  00 40 a0 e1                                      mov r4, r0
0034f8ac  10 00 84 e5                                      str r0, [r4, #0x10]
0034f8b0  14 00 84 e5                                      str r0, [r4, #0x14]
0034f8b4  02 30 a0 e1                                      mov r3, r2
0034f8b8  2c d0 4d e2                                      sub sp, sp, #0x2c
0034f8bc  14 10 93 e5                                      ldr r1, [r3, #0x14]
0034f8c0  10 20 92 e5                                      ldr r2, [r2, #0x10]
0034f8c4  ca 59 ff eb                                      bl #0x325ff4
0034f8c8  8c 32 9f e5                                      ldr r3, [pc, #0x28c]
0034f8cc  8c 12 9f e5                                      ldr r1, [pc, #0x28c]
0034f8d0  8c 22 9f e5                                      ldr r2, [pc, #0x28c]
0034f8d4  03 30 8f e0                                      add r3, pc, r3
0034f8d8  01 10 8f e0                                      add r1, pc, r1
0034f8dc  10 10 8d e5                                      str r1, [sp, #0x10]
0034f8e0  01 30 83 e2                                      add r3, r3, #1
0034f8e4  7c b2 9f e5                                      ldr fp, [pc, #0x27c]
0034f8e8  1c 30 8d e5                                      str r3, [sp, #0x1c]
0034f8ec  10 30 9d e5                                      ldr r3, [sp, #0x10]
0034f8f0  02 20 8f e0                                      add r2, pc, r2
0034f8f4  01 20 82 e2                                      add r2, r2, #1
0034f8f8  0b b0 8f e0                                      add fp, pc, fp
0034f8fc  0c 20 8d e5                                      str r2, [sp, #0xc]
0034f900  01 30 83 e2                                      add r3, r3, #1
0034f904  01 20 8b e2                                      add r2, fp, #1
0034f908  10 10 94 e5                                      ldr r1, [r4, #0x10]
0034f90c  14 00 94 e5                                      ldr r0, [r4, #0x14]
0034f910  00 70 a0 e3                                      mov r7, #0
0034f914  14 20 8d e5                                      str r2, [sp, #0x14]
0034f918  18 30 8d e5                                      str r3, [sp, #0x18]
0034f91c  01 30 60 e0                                      rsb r3, r0, r1
0034f920  03 00 57 e1                                      cmp r7, r3
0034f924  02 00 00 3a                                      blo #0x34f934
0034f928  04 00 a0 e1                                      mov r0, r4
0034f92c  2c d0 8d e2                                      add sp, sp, #0x2c
0034f930  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0034f934  28 20 8d e2                                      add r2, sp, #0x28
0034f938  2f 30 a0 e3                                      mov r3, #0x2f
0034f93c  04 30 62 e5                                      strb r3, [r2, #-4]!
0034f940  07 00 80 e0                                      add r0, r0, r7
0034f944  20 30 8d e2                                      add r3, sp, #0x20
0034f948  ad fc ff eb                                      bl #0x34ec04
0034f94c  10 20 94 e5                                      ldr r2, [r4, #0x10]
0034f950  02 00 50 e1                                      cmp r0, r2
0034f954  f3 ff ff 0a                                      beq #0x34f928
0034f958  14 50 94 e5                                      ldr r5, [r4, #0x14]
0034f95c  00 30 65 e0                                      rsb r3, r5, r0
0034f960  01 00 73 e3                                      cmn r3, #1
0034f964  ef ff ff 0a                                      beq #0x34f928
0034f968  02 50 65 e0                                      rsb r5, r5, r2
0034f96c  05 00 53 e1                                      cmp r3, r5
0034f970  01 70 83 e2                                      add r7, r3, #1
0034f974  59 00 00 8a                                      bhi #0x34fae0
0034f978  fe 2f 0f e3                                      movw r2, #0xfffe
0034f97c  ff 2f 4f e3                                      movt r2, #0xffff
0034f980  05 80 63 e0                                      rsb r8, r3, r5
0034f984  01 00 58 e3                                      cmp r8, #1
0034f988  01 80 a0 23                                      movhs r8, #1
0034f98c  02 20 65 e0                                      rsb r2, r5, r2
0034f990  08 20 82 e0                                      add r2, r2, r8
0034f994  00 00 52 e3                                      cmp r2, #0
0034f998  4a 00 00 0a                                      beq #0x34fac8
0034f99c  c8 21 9f e5                                      ldr r2, [pc, #0x1c8]
0034f9a0  14 50 94 e5                                      ldr r5, [r4, #0x14]
0034f9a4  03 80 88 e0                                      add r8, r8, r3
0034f9a8  02 20 8f e0                                      add r2, pc, r2
0034f9ac  02 00 55 e1                                      cmp r5, r2
0034f9b0  08 80 85 e0                                      add r8, r5, r8
0034f9b4  03 60 85 e0                                      add r6, r5, r3
0034f9b8  00 90 a0 83                                      movhi sb, #0
0034f9bc  03 00 00 8a                                      bhi #0x34f9d0
0034f9c0  10 90 94 e5                                      ldr sb, [r4, #0x10]
0034f9c4  02 00 59 e1                                      cmp sb, r2
0034f9c8  00 90 a0 93                                      movls sb, #0
0034f9cc  01 90 a0 83                                      movhi sb, #1
0034f9d0  08 a0 66 e0                                      rsb sl, r6, r8
0034f9d4  00 00 5a e3                                      cmp sl, #0
0034f9d8  11 00 00 da                                      ble #0x34fa24
0034f9dc  01 60 86 e2                                      add r6, r6, #1
0034f9e0  5c 20 a0 e3                                      mov r2, #0x5c
0034f9e4  06 00 58 e1                                      cmp r8, r6
0034f9e8  03 20 c5 e7                                      strb r2, [r5, r3]
0034f9ec  22 00 00 0a                                      beq #0x34fa7c
0034f9f0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0034f9f4  01 20 83 e2                                      add r2, r3, #1
0034f9f8  08 20 52 e0                                      subs r2, r2, r8
0034f9fc  03 00 00 0a                                      beq #0x34fa10
0034fa00  06 00 a0 e1                                      mov r0, r6
0034fa04  08 10 a0 e1                                      mov r1, r8
0034fa08  4a f9 fe eb                                      bl #0x30df38
0034fa0c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0034fa10  06 60 68 e0                                      rsb r6, r8, r6
0034fa14  06 10 83 e0                                      add r1, r3, r6
0034fa18  10 10 84 e5                                      str r1, [r4, #0x10]
0034fa1c  14 00 94 e5                                      ldr r0, [r4, #0x14]
0034fa20  bd ff ff ea                                      b #0x34f91c
0034fa24  00 00 59 e3                                      cmp sb, #0
0034fa28  16 00 00 0a                                      beq #0x34fa88
0034fa2c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0034fa30  02 00 56 e1                                      cmp r6, r2
0034fa34  00 30 a0 33                                      movlo r3, #0
0034fa38  01 30 a0 23                                      movhs r3, #1
0034fa3c  0b 00 58 e1                                      cmp r8, fp
0034fa40  01 30 83 93                                      orrls r3, r3, #1
0034fa44  00 00 53 e3                                      cmp r3, #0
0034fa48  0e 00 00 1a                                      bne #0x34fa88
0034fa4c  0b 00 56 e1                                      cmp r6, fp
0034fa50  28 00 00 8a                                      bhi #0x34faf8
0034fa54  00 00 5a e3                                      cmp sl, #0
0034fa58  0b 50 8a e0                                      add r5, sl, fp
0034fa5c  39 00 00 1a                                      bne #0x34fb48
0034fa60  01 c0 a0 e3                                      mov ip, #1
0034fa64  08 10 a0 e1                                      mov r1, r8
0034fa68  05 20 a0 e1                                      mov r2, r5
0034fa6c  04 00 a0 e1                                      mov r0, r4
0034fa70  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0034fa74  00 c0 8d e5                                      str ip, [sp]
0034fa78  52 fe ff eb                                      bl #0x34f3c8
0034fa7c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0034fa80  14 00 94 e5                                      ldr r0, [r4, #0x14]
0034fa84  a4 ff ff ea                                      b #0x34f91c
0034fa88  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
0034fa8c  01 10 8f e0                                      add r1, pc, r1
0034fa90  01 a0 8a e0                                      add sl, sl, r1
0034fa94  0b 20 5a e0                                      subs r2, sl, fp
0034fa98  01 00 00 0a                                      beq #0x34faa4
0034fa9c  06 00 a0 e1                                      mov r0, r6
0034faa0  70 fb fe eb                                      bl #0x30e868
0034faa4  08 10 a0 e1                                      mov r1, r8
0034faa8  04 00 a0 e1                                      mov r0, r4
0034faac  0a 20 a0 e1                                      mov r2, sl
0034fab0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0034fab4  00 90 8d e5                                      str sb, [sp]
0034fab8  42 fe ff eb                                      bl #0x34f3c8
0034fabc  10 10 94 e5                                      ldr r1, [r4, #0x10]
0034fac0  14 00 94 e5                                      ldr r0, [r4, #0x14]
0034fac4  94 ff ff ea                                      b #0x34f91c
0034fac8  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
0034facc  08 30 8d e5                                      str r3, [sp, #8]
0034fad0  00 00 8f e0                                      add r0, pc, r0
0034fad4  d9 e4 0e eb                                      bl #0x708e40
0034fad8  08 30 9d e5                                      ldr r3, [sp, #8]
0034fadc  ae ff ff ea                                      b #0x34f99c
0034fae0  90 00 9f e5                                      ldr r0, [pc, #0x90]
0034fae4  08 30 8d e5                                      str r3, [sp, #8]
0034fae8  00 00 8f e0                                      add r0, pc, r0
0034faec  ef e4 0e eb                                      bl #0x708eb0
0034faf0  08 30 9d e5                                      ldr r3, [sp, #8]
0034faf4  9f ff ff ea                                      b #0x34f978
0034faf8  08 10 a0 e1                                      mov r1, r8
0034fafc  04 00 a0 e1                                      mov r0, r4
0034fb00  01 c0 a0 e3                                      mov ip, #1
0034fb04  0b 20 8a e0                                      add r2, sl, fp
0034fb08  14 30 9d e5                                      ldr r3, [sp, #0x14]
0034fb0c  00 c0 8d e5                                      str ip, [sp]
0034fb10  2c fe ff eb                                      bl #0x34f3c8
0034fb14  00 00 5a e3                                      cmp sl, #0
0034fb18  14 00 94 e5                                      ldr r0, [r4, #0x14]
0034fb1c  10 10 94 05                                      ldreq r1, [r4, #0x10]
0034fb20  7d ff ff 0a                                      beq #0x34f91c
0034fb24  06 60 65 e0                                      rsb r6, r5, r6
0034fb28  0b 10 65 e0                                      rsb r1, r5, fp
0034fb2c  01 10 80 e0                                      add r1, r0, r1
0034fb30  0a 20 a0 e1                                      mov r2, sl
0034fb34  06 00 80 e0                                      add r0, r0, r6
0034fb38  fe f8 fe eb                                      bl #0x30df38
0034fb3c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0034fb40  14 00 94 e5                                      ldr r0, [r4, #0x14]
0034fb44  74 ff ff ea                                      b #0x34f91c
0034fb48  06 00 a0 e1                                      mov r0, r6
0034fb4c  0a 20 a0 e1                                      mov r2, sl
0034fb50  0b 10 a0 e1                                      mov r1, fp
0034fb54  43 fb fe eb                                      bl #0x30e868
0034fb58  c0 ff ff ea                                      b #0x34fa60
; mapping-symbol data/literal pool
0034fb5c  a4 0e 57 00 a0 0e 57 00 88 0e 57 00 80 0e 57 00  .byte 0xa4, 0x0e, 0x57, 0x00, 0xa0, 0x0e, 0x57, 0x00, 0x88, 0x0e, 0x57, 0x00, 0x80, 0x0e, 0x57, 0x00
0034fb6c  d0 0d 57 00 ec 0c 57 00 88 e9 56 00 70 e9 56 00  .byte 0xd0, 0x0d, 0x57, 0x00, 0xec, 0x0c, 0x57, 0x00, 0x88, 0xe9, 0x56, 0x00, 0x70, 0xe9, 0x56, 0x00

; FUNCTION 0x0034fe50, declared_size=148, range_size=148, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin3213_createHandleEPKcS1_bb
; demangled: FileSystemWin32::_createHandle(char const*, char const*, bool, bool)
; decoder-mode: arm
0034fe50  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0034fe54  01 40 a0 e1                                      mov r4, r1
0034fe58  d0 10 d1 e1                                      ldrsb r1, [r1]
0034fe5c  0c d0 4d e2                                      sub sp, sp, #0xc
0034fe60  02 80 a0 e1                                      mov r8, r2
0034fe64  2e 00 51 e3                                      cmp r1, #0x2e
0034fe68  03 70 a0 e1                                      mov r7, r3
0034fe6c  28 60 dd e5                                      ldrb r6, [sp, #0x28]
0034fe70  0f 00 00 0a                                      beq #0x34feb4
0034fe74  00 a0 a0 e3                                      mov sl, #0
0034fe78  00 10 a0 e3                                      mov r1, #0
0034fe7c  10 00 a0 e3                                      mov r0, #0x10
0034fe80  ba 01 ff eb                                      bl #0x310570
0034fe84  0a 10 84 e0                                      add r1, r4, sl
0034fe88  00 50 a0 e1                                      mov r5, r0
0034fe8c  08 20 a0 e1                                      mov r2, r8
0034fe90  07 30 a0 e1                                      mov r3, r7
0034fe94  00 60 8d e5                                      str r6, [sp]
0034fe98  5e ff ff eb                                      bl #0x34fc18
0034fe9c  04 40 95 e5                                      ldr r4, [r5, #4]
0034fea0  00 00 54 e3                                      cmp r4, #0
0034fea4  05 00 a0 11                                      movne r0, r5
0034fea8  07 00 00 0a                                      beq #0x34fecc
0034feac  0c d0 8d e2                                      add sp, sp, #0xc
0034feb0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0034feb4  d1 30 d4 e1                                      ldrsb r3, [r4, #1]
0034feb8  2f 00 53 e3                                      cmp r3, #0x2f
0034febc  5c 00 53 13                                      cmpne r3, #0x5c
0034fec0  02 a0 a0 03                                      moveq sl, #2
0034fec4  eb ff ff 0a                                      beq #0x34fe78
0034fec8  e9 ff ff ea                                      b #0x34fe74
0034fecc  05 00 a0 e1                                      mov r0, r5
0034fed0  00 30 95 e5                                      ldr r3, [r5]
0034fed4  0f e0 a0 e1                                      mov lr, pc
0034fed8  04 f0 93 e5                                      ldr pc, [r3, #4]
0034fedc  04 00 a0 e1                                      mov r0, r4
0034fee0  f1 ff ff ea                                      b #0x34feac

; FUNCTION 0x0034fee4, declared_size=68, range_size=68, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin3212openSavefileEPKcb
; demangled: FileSystemWin32::openSavefile(char const*, bool)
; decoder-mode: arm
0034fee4  70 40 2d e9                                      push {r4, r5, r6, lr}
0034fee8  00 60 a0 e1                                      mov r6, r0
0034feec  08 d0 4d e2                                      sub sp, sp, #8
0034fef0  01 00 a0 e1                                      mov r0, r1
0034fef4  01 40 a0 e1                                      mov r4, r1
0034fef8  02 50 a0 e1                                      mov r5, r2
0034fefc  7e 13 ff eb                                      bl #0x314cfc
0034ff00  43 1e 86 e2                                      add r1, r6, #0x430
0034ff04  00 c0 a0 e3                                      mov ip, #0
0034ff08  06 00 a0 e1                                      mov r0, r6
0034ff0c  0c 10 81 e2                                      add r1, r1, #0xc
0034ff10  04 20 a0 e1                                      mov r2, r4
0034ff14  05 30 a0 e1                                      mov r3, r5
0034ff18  00 c0 8d e5                                      str ip, [sp]
0034ff1c  cb ff ff eb                                      bl #0x34fe50
0034ff20  08 d0 8d e2                                      add sp, sp, #8
0034ff24  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0034ff28, declared_size=92, range_size=92, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin3212openResourceEPKc
; demangled: FileSystemWin32::openResource(char const*)
; decoder-mode: arm
0034ff28  30 40 2d e9                                      push {r4, r5, lr}
0034ff2c  00 c0 a0 e3                                      mov ip, #0
0034ff30  01 40 a0 e1                                      mov r4, r1
0034ff34  0c d0 4d e2                                      sub sp, sp, #0xc
0034ff38  0c 30 a0 e1                                      mov r3, ip
0034ff3c  8d 1f 80 e2                                      add r1, r0, #0x234
0034ff40  04 20 a0 e1                                      mov r2, r4
0034ff44  00 c0 8d e5                                      str ip, [sp]
0034ff48  00 50 a0 e1                                      mov r5, r0
0034ff4c  bf ff ff eb                                      bl #0x34fe50
0034ff50  00 c0 50 e2                                      subs ip, r0, #0
0034ff54  02 00 00 0a                                      beq #0x34ff64
0034ff58  0c 00 a0 e1                                      mov r0, ip
0034ff5c  0c d0 8d e2                                      add sp, sp, #0xc
0034ff60  30 80 bd e8                                      pop {r4, r5, pc}
0034ff64  0c 30 a0 e1                                      mov r3, ip
0034ff68  05 00 a0 e1                                      mov r0, r5
0034ff6c  04 20 a0 e1                                      mov r2, r4
0034ff70  ce 1f 85 e2                                      add r1, r5, #0x338
0034ff74  00 c0 8d e5                                      str ip, [sp]
0034ff78  b4 ff ff eb                                      bl #0x34fe50
0034ff7c  00 c0 a0 e1                                      mov ip, r0
0034ff80  f4 ff ff ea                                      b #0x34ff58

; FUNCTION 0x0034ff84, declared_size=44, range_size=44, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin3213openTraceFileEPKc
; demangled: FileSystemWin32::openTraceFile(char const*)
; decoder-mode: arm
0034ff84  04 e0 2d e5                                      str lr, [sp, #-4]!
0034ff88  01 c0 a0 e3                                      mov ip, #1
0034ff8c  01 20 a0 e1                                      mov r2, r1
0034ff90  43 1e 80 e2                                      add r1, r0, #0x430
0034ff94  0c d0 4d e2                                      sub sp, sp, #0xc
0034ff98  0c 10 81 e2                                      add r1, r1, #0xc
0034ff9c  0c 30 a0 e1                                      mov r3, ip
0034ffa0  00 c0 8d e5                                      str ip, [sp]
0034ffa4  a9 ff ff eb                                      bl #0x34fe50
0034ffa8  0c d0 8d e2                                      add sp, sp, #0xc
0034ffac  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0034ffb0, declared_size=140, range_size=140, mode=arm
; class-group: FileSystemWin32
; alias: _ZN15FileSystemWin328openFileEPKcbb
; demangled: FileSystemWin32::openFile(char const*, bool, bool)
; decoder-mode: arm
0034ffb0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0034ffb4  74 c0 9f e5                                      ldr ip, [pc, #0x74]
0034ffb8  00 50 a0 e1                                      mov r5, r0
0034ffbc  70 00 9f e5                                      ldr r0, [pc, #0x70]
0034ffc0  0c c0 8f e0                                      add ip, pc, ip
0034ffc4  0c d0 4d e2                                      sub sp, sp, #0xc
0034ffc8  00 00 9c e7                                      ldr r0, [ip, r0]
0034ffcc  02 70 a0 e1                                      mov r7, r2
0034ffd0  03 60 a0 e1                                      mov r6, r3
0034ffd4  01 40 a0 e1                                      mov r4, r1
0034ffd8  a6 41 ff eb                                      bl #0x320678
0034ffdc  00 00 50 e3                                      cmp r0, #0
0034ffe0  0b 00 00 0a                                      beq #0x350014
0034ffe4  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0034ffe8  00 c0 a0 e3                                      mov ip, #0
0034ffec  0c 30 a0 e1                                      mov r3, ip
0034fff0  01 10 8f e0                                      add r1, pc, r1
0034fff4  05 00 a0 e1                                      mov r0, r5
0034fff8  04 20 a0 e1                                      mov r2, r4
0034fffc  00 c0 8d e5                                      str ip, [sp]
00350000  92 ff ff eb                                      bl #0x34fe50
00350004  00 00 50 e3                                      cmp r0, #0
00350008  01 00 00 0a                                      beq #0x350014
0035000c  0c d0 8d e2                                      add sp, sp, #0xc
00350010  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00350014  05 00 a0 e1                                      mov r0, r5
00350018  04 20 a0 e1                                      mov r2, r4
0035001c  07 30 a0 e1                                      mov r3, r7
00350020  2c 10 85 e2                                      add r1, r5, #0x2c
00350024  00 60 8d e5                                      str r6, [sp]
00350028  88 ff ff eb                                      bl #0x34fe50
0035002c  f6 ff ff ea                                      b #0x35000c
; mapping-symbol data/literal pool
00350030  d0 4a 64 00 f4 37 00 00 08 07 57 00              .byte 0xd0, 0x4a, 0x64, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x08, 0x07, 0x57, 0x00

; FUNCTION 0x0035041c, declared_size=388, range_size=388, mode=arm
; class-group: FileSystemWin32
; alias: _ZNK15FileSystemWin3216getFilesMatchingEPKcS1_RSt6vectorISsSaISsEE
; demangled: FileSystemWin32::getFilesMatching(char const*, char const*, std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&) const
; decoder-mode: arm
0035041c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00350420  70 91 9f e5                                      ldr sb, [pc, #0x170]
00350424  70 01 9f e5                                      ldr r0, [pc, #0x170]
00350428  f4 d0 4d e2                                      sub sp, sp, #0xf4
0035042c  09 90 8f e0                                      add sb, pc, sb
00350430  0c 00 8d e5                                      str r0, [sp, #0xc]
00350434  00 00 99 e7                                      ldr r0, [sb, r0]
00350438  d4 c0 8d e2                                      add ip, sp, #0xd4
0035043c  10 c0 8d e5                                      str ip, [sp, #0x10]
00350440  00 c0 90 e5                                      ldr ip, [r0]
00350444  01 40 a0 e1                                      mov r4, r1
00350448  10 00 9d e5                                      ldr r0, [sp, #0x10]
0035044c  02 10 a0 e1                                      mov r1, r2
00350450  bc b0 8d e2                                      add fp, sp, #0xbc
00350454  24 20 8d e2                                      add r2, sp, #0x24
00350458  ec c0 8d e5                                      str ip, [sp, #0xec]
0035045c  03 a0 a0 e1                                      mov sl, r3
00350460  21 0f ff eb                                      bl #0x3140ec
00350464  04 10 a0 e1                                      mov r1, r4
00350468  20 20 8d e2                                      add r2, sp, #0x20
0035046c  0b 00 a0 e1                                      mov r0, fp
00350470  1d 0f ff eb                                      bl #0x3140ec
00350474  04 00 a0 e1                                      mov r0, r4
00350478  8a f9 fe eb                                      bl #0x30eaa8
0035047c  00 70 50 e2                                      subs r7, r0, #0
00350480  37 00 00 0a                                      beq #0x350564
00350484  18 00 8d e2                                      add r0, sp, #0x18
00350488  28 60 8d e2                                      add r6, sp, #0x28
0035048c  a4 50 8d e2                                      add r5, sp, #0xa4
00350490  1c 80 8d e2                                      add r8, sp, #0x1c
00350494  8c 40 8d e2                                      add r4, sp, #0x8c
00350498  14 00 8d e5                                      str r0, [sp, #0x14]
0035049c  08 00 00 ea                                      b #0x3504c4
003504a0  00 00 53 e3                                      cmp r3, #0
003504a4  02 00 00 1a                                      bne #0x3504b4
003504a8  0a 00 a0 e1                                      mov r0, sl
003504ac  05 10 a0 e1                                      mov r1, r5
003504b0  88 6d ff eb                                      bl #0x32bad8
003504b4  04 00 a0 e1                                      mov r0, r4
003504b8  65 1f ff eb                                      bl #0x318254
003504bc  05 00 a0 e1                                      mov r0, r5
003504c0  63 1f ff eb                                      bl #0x318254
003504c4  07 00 a0 e1                                      mov r0, r7
003504c8  ac f9 fe eb                                      bl #0x30eb80
003504cc  00 00 50 e3                                      cmp r0, #0
003504d0  21 00 00 0a                                      beq #0x35055c
003504d4  13 10 80 e2                                      add r1, r0, #0x13
003504d8  06 00 a0 e1                                      mov r0, r6
003504dc  0f f8 fe eb                                      bl #0x30e520
003504e0  06 10 a0 e1                                      mov r1, r6
003504e4  08 20 a0 e1                                      mov r2, r8
003504e8  05 00 a0 e1                                      mov r0, r5
003504ec  fe 0e ff eb                                      bl #0x3140ec
003504f0  04 00 a0 e1                                      mov r0, r4
003504f4  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
003504f8  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
003504fc  9c 40 8d e5                                      str r4, [sp, #0x9c]
00350500  a0 40 8d e5                                      str r4, [sp, #0xa0]
00350504  77 04 ff eb                                      bl #0x3116e8
00350508  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
0035050c  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
00350510  e8 20 9d e5                                      ldr r2, [sp, #0xe8]
00350514  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
00350518  00 c0 51 e0                                      subs ip, r1, r0
0035051c  03 30 62 e0                                      rsb r3, r2, r3
00350520  de ff ff 0a                                      beq #0x3504a0
00350524  0c 00 53 e1                                      cmp r3, ip
00350528  e1 ff ff 8a                                      bhi #0x3504b4
0035052c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00350530  03 30 82 e0                                      add r3, r2, r3
00350534  00 c0 8d e5                                      str ip, [sp]
00350538  fb f9 ff eb                                      bl #0x34ed2c
0035053c  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00350540  03 00 50 e1                                      cmp r0, r3
00350544  da ff ff 0a                                      beq #0x3504b4
00350548  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
0035054c  00 00 63 e0                                      rsb r0, r3, r0
00350550  01 00 70 e3                                      cmn r0, #1
00350554  d3 ff ff 1a                                      bne #0x3504a8
00350558  d5 ff ff ea                                      b #0x3504b4
0035055c  07 00 a0 e1                                      mov r0, r7
00350560  14 f9 fe eb                                      bl #0x30e9b8
00350564  0b 00 a0 e1                                      mov r0, fp
00350568  39 1f ff eb                                      bl #0x318254
0035056c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00350570  37 1f ff eb                                      bl #0x318254
00350574  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00350578  ec 20 9d e5                                      ldr r2, [sp, #0xec]
0035057c  00 30 99 e7                                      ldr r3, [sb, r0]
00350580  00 30 93 e5                                      ldr r3, [r3]
00350584  03 00 52 e1                                      cmp r2, r3
00350588  01 00 00 1a                                      bne #0x350594
0035058c  f4 d0 8d e2                                      add sp, sp, #0xf4
00350590  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00350594  5d f7 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00350598  64 46 64 00 ac 40 00 00                          .byte 0x64, 0x46, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x003505a0, declared_size=260, range_size=260, mode=arm
; class-group: FileSystemWin32
; alias: _ZNK15FileSystemWin328getFilesEPKcRSt6vectorISsSaISsEE
; demangled: FileSystemWin32::getFiles(char const*, std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&) const
; decoder-mode: arm
003505a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003505a4  ec 90 9f e5                                      ldr sb, [pc, #0xec]
003505a8  ec 00 9f e5                                      ldr r0, [pc, #0xec]
003505ac  c4 d0 4d e2                                      sub sp, sp, #0xc4
003505b0  09 90 8f e0                                      add sb, pc, sb
003505b4  00 30 99 e7                                      ldr r3, [sb, r0]
003505b8  a4 b0 8d e2                                      add fp, sp, #0xa4
003505bc  04 00 8d e5                                      str r0, [sp, #4]
003505c0  00 30 93 e5                                      ldr r3, [r3]
003505c4  02 a0 a0 e1                                      mov sl, r2
003505c8  0b 00 a0 e1                                      mov r0, fp
003505cc  0c 20 8d e2                                      add r2, sp, #0xc
003505d0  bc 30 8d e5                                      str r3, [sp, #0xbc]
003505d4  c4 0e ff eb                                      bl #0x3140ec
003505d8  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
003505dc  03 30 99 e7                                      ldr r3, [sb, r3]
003505e0  00 00 93 e5                                      ldr r0, [r3]
003505e4  2f f9 fe eb                                      bl #0x30eaa8
003505e8  00 70 50 e2                                      subs r7, r0, #0
003505ec  1e 00 00 0a                                      beq #0x35066c
003505f0  10 60 8d e2                                      add r6, sp, #0x10
003505f4  8c 50 8d e2                                      add r5, sp, #0x8c
003505f8  08 80 8d e2                                      add r8, sp, #8
003505fc  74 40 8d e2                                      add r4, sp, #0x74
00350600  13 00 00 ea                                      b #0x350654
00350604  13 10 80 e2                                      add r1, r0, #0x13
00350608  06 00 a0 e1                                      mov r0, r6
0035060c  c3 f7 fe eb                                      bl #0x30e520
00350610  06 10 a0 e1                                      mov r1, r6
00350614  08 20 a0 e1                                      mov r2, r8
00350618  05 00 a0 e1                                      mov r0, r5
0035061c  b2 0e ff eb                                      bl #0x3140ec
00350620  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
00350624  04 00 a0 e1                                      mov r0, r4
00350628  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
0035062c  84 40 8d e5                                      str r4, [sp, #0x84]
00350630  88 40 8d e5                                      str r4, [sp, #0x88]
00350634  2b 04 ff eb                                      bl #0x3116e8
00350638  0a 00 a0 e1                                      mov r0, sl
0035063c  05 10 a0 e1                                      mov r1, r5
00350640  24 6d ff eb                                      bl #0x32bad8
00350644  04 00 a0 e1                                      mov r0, r4
00350648  01 1f ff eb                                      bl #0x318254
0035064c  05 00 a0 e1                                      mov r0, r5
00350650  ff 1e ff eb                                      bl #0x318254
00350654  07 00 a0 e1                                      mov r0, r7
00350658  48 f9 fe eb                                      bl #0x30eb80
0035065c  00 00 50 e3                                      cmp r0, #0
00350660  e7 ff ff 1a                                      bne #0x350604
00350664  07 00 a0 e1                                      mov r0, r7
00350668  d2 f8 fe eb                                      bl #0x30e9b8
0035066c  0b 00 a0 e1                                      mov r0, fp
00350670  f7 1e ff eb                                      bl #0x318254
00350674  04 20 9d e5                                      ldr r2, [sp, #4]
00350678  02 30 99 e7                                      ldr r3, [sb, r2]
0035067c  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
00350680  00 30 93 e5                                      ldr r3, [r3]
00350684  03 00 52 e1                                      cmp r2, r3
00350688  01 00 00 1a                                      bne #0x350694
0035068c  c4 d0 8d e2                                      add sp, sp, #0xc4
00350690  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00350694  1d f7 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00350698  e0 44 64 00 ac 40 00 00 00 06 00 00              .byte 0xe0, 0x44, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00

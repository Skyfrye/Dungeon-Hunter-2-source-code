; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034df94, declared_size=76, range_size=76, mode=arm
; class-group: FileSystemBase
; alias: _ZN14FileSystemBase14doesFileExistsEPKc
; demangled: FileSystemBase::doesFileExists(char const*)
; decoder-mode: arm
0034df94  30 40 2d e9                                      push {r4, r5, lr}
0034df98  00 20 a0 e3                                      mov r2, #0
0034df9c  0c d0 4d e2                                      sub sp, sp, #0xc
0034dfa0  02 30 a0 e1                                      mov r3, r2
0034dfa4  00 c0 90 e5                                      ldr ip, [r0]
0034dfa8  00 40 a0 e1                                      mov r4, r0
0034dfac  0f e0 a0 e1                                      mov lr, pc
0034dfb0  88 f0 9c e5                                      ldr pc, [ip, #0x88]
0034dfb4  08 10 8d e2                                      add r1, sp, #8
0034dfb8  04 00 21 e5                                      str r0, [r1, #-4]!
0034dfbc  00 50 a0 e1                                      mov r5, r0
0034dfc0  00 30 94 e5                                      ldr r3, [r4]
0034dfc4  04 00 a0 e1                                      mov r0, r4
0034dfc8  0f e0 a0 e1                                      mov lr, pc
0034dfcc  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0034dfd0  00 00 55 e2                                      subs r0, r5, #0
0034dfd4  01 00 a0 13                                      movne r0, #1
0034dfd8  0c d0 8d e2                                      add sp, sp, #0xc
0034dfdc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0034dfe0, declared_size=68, range_size=68, mode=arm
; class-group: FileSystemBase
; alias: _ZN14FileSystemBase18doesResourceExistsEPKc
; demangled: FileSystemBase::doesResourceExists(char const*)
; decoder-mode: arm
0034dfe0  30 40 2d e9                                      push {r4, r5, lr}
0034dfe4  0c d0 4d e2                                      sub sp, sp, #0xc
0034dfe8  00 30 90 e5                                      ldr r3, [r0]
0034dfec  00 40 a0 e1                                      mov r4, r0
0034dff0  0f e0 a0 e1                                      mov lr, pc
0034dff4  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0034dff8  08 10 8d e2                                      add r1, sp, #8
0034dffc  04 00 21 e5                                      str r0, [r1, #-4]!
0034e000  00 50 a0 e1                                      mov r5, r0
0034e004  00 30 94 e5                                      ldr r3, [r4]
0034e008  04 00 a0 e1                                      mov r0, r4
0034e00c  0f e0 a0 e1                                      mov lr, pc
0034e010  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0034e014  00 00 55 e2                                      subs r0, r5, #0
0034e018  01 00 a0 13                                      movne r0, #1
0034e01c  0c d0 8d e2                                      add sp, sp, #0xc
0034e020  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0034e0fc, declared_size=84, range_size=84, mode=arm
; class-group: FileSystemBase
; alias: _ZN14FileSystemBase20decodeObfuscatedDataEiPviS0_
; demangled: FileSystemBase::decodeObfuscatedData(int, void*, int, void*)
; decoder-mode: arm
0034e0fc  03 00 50 e3                                      cmp r0, #3
0034e100  04 40 2d e5                                      str r4, [sp, #-4]!
0034e104  0f 00 00 ca                                      bgt #0x34e148
0034e108  04 30 60 e2                                      rsb r3, r0, #4
0034e10c  03 00 52 e1                                      cmp r2, r3
0034e110  03 20 a0 21                                      movhs r2, r3
0034e114  00 00 52 e3                                      cmp r2, #0
0034e118  0a 00 00 da                                      ble #0x34e148
0034e11c  00 00 e0 e1                                      mvn r0, r0
0034e120  70 00 ef e6                                      uxtb r0, r0
0034e124  00 30 a0 e3                                      mov r3, #0
0034e128  03 40 d1 e7                                      ldrb r4, [r1, r3]
0034e12c  01 c0 40 e2                                      sub ip, r0, #1
0034e130  04 00 80 e0                                      add r0, r0, r4
0034e134  03 00 c1 e7                                      strb r0, [r1, r3]
0034e138  01 30 83 e2                                      add r3, r3, #1
0034e13c  03 00 52 e1                                      cmp r2, r3
0034e140  7c 00 ef e6                                      uxtb r0, ip
0034e144  f7 ff ff 1a                                      bne #0x34e128
0034e148  10 00 bd e8                                      ldm sp!, {r4}
0034e14c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034e150, declared_size=92, range_size=92, mode=arm
; class-group: FileSystemBase
; alias: _ZN14FileSystemBase18doesSavefileExistsEPKc
; demangled: FileSystemBase::doesSavefileExists(char const*)
; decoder-mode: arm
0034e150  30 40 2d e9                                      push {r4, r5, lr}
0034e154  00 40 a0 e1                                      mov r4, r0
0034e158  0c d0 4d e2                                      sub sp, sp, #0xc
0034e15c  01 50 a0 e1                                      mov r5, r1
0034e160  01 00 a0 e1                                      mov r0, r1
0034e164  e4 1a ff eb                                      bl #0x314cfc
0034e168  05 10 a0 e1                                      mov r1, r5
0034e16c  00 20 a0 e3                                      mov r2, #0
0034e170  00 30 94 e5                                      ldr r3, [r4]
0034e174  04 00 a0 e1                                      mov r0, r4
0034e178  0f e0 a0 e1                                      mov lr, pc
0034e17c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0034e180  08 10 8d e2                                      add r1, sp, #8
0034e184  04 00 21 e5                                      str r0, [r1, #-4]!
0034e188  00 50 a0 e1                                      mov r5, r0
0034e18c  00 30 94 e5                                      ldr r3, [r4]
0034e190  04 00 a0 e1                                      mov r0, r4
0034e194  0f e0 a0 e1                                      mov lr, pc
0034e198  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0034e19c  00 00 55 e2                                      subs r0, r5, #0
0034e1a0  01 00 a0 13                                      movne r0, #1
0034e1a4  0c d0 8d e2                                      add sp, sp, #0xc
0034e1a8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0034e1ac, declared_size=40, range_size=40, mode=arm
; class-group: FileSystemBase
; alias: _ZNK14FileSystemBase14formatFilePathERKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE
; demangled: FileSystemBase::formatFilePath(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&) const
; decoder-mode: arm
0034e1ac  10 40 2d e9                                      push {r4, lr}
0034e1b0  00 40 a0 e1                                      mov r4, r0
0034e1b4  10 00 84 e5                                      str r0, [r4, #0x10]
0034e1b8  14 00 84 e5                                      str r0, [r4, #0x14]
0034e1bc  02 30 a0 e1                                      mov r3, r2
0034e1c0  14 10 93 e5                                      ldr r1, [r3, #0x14]
0034e1c4  10 20 92 e5                                      ldr r2, [r2, #0x10]
0034e1c8  89 5f ff eb                                      bl #0x325ff4
0034e1cc  04 00 a0 e1                                      mov r0, r4
0034e1d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0034e1d4, declared_size=72, range_size=72, mode=arm
; class-group: FileSystemBase
; alias: _ZN14FileSystemBase24changeWorkingDirectoryToEPKc
; demangled: FileSystemBase::changeWorkingDirectoryTo(char const*)
; decoder-mode: arm
0034e1d4  70 40 2d e9                                      push {r4, r5, r6, lr}
0034e1d8  01 00 a0 e1                                      mov r0, r1
0034e1dc  01 50 a0 e1                                      mov r5, r1
0034e1e0  de 02 ff eb                                      bl #0x30ed60
0034e1e4  28 30 9f e5                                      ldr r3, [pc, #0x28]
0034e1e8  01 40 70 e2                                      rsbs r4, r0, #1
0034e1ec  00 40 a0 33                                      movlo r4, #0
0034e1f0  00 00 54 e3                                      cmp r4, #0
0034e1f4  03 30 8f e0                                      add r3, pc, r3
0034e1f8  03 00 00 0a                                      beq #0x34e20c
0034e1fc  14 20 9f e5                                      ldr r2, [pc, #0x14]
0034e200  05 10 a0 e1                                      mov r1, r5
0034e204  02 00 93 e7                                      ldr r0, [r3, r2]
0034e208  c4 00 ff eb                                      bl #0x30e520
0034e20c  04 00 a0 e1                                      mov r0, r4
0034e210  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0034e214  9c 68 64 00 68 0e 00 00                          .byte 0x9c, 0x68, 0x64, 0x00, 0x68, 0x0e, 0x00, 0x00

; FUNCTION 0x0034e480, declared_size=52, range_size=52, mode=arm
; class-group: FileSystemBase
; alias: _ZN14FileSystemBaseD1Ev
; demangled: FileSystemBase::~FileSystemBase()
; decoder-mode: arm
0034e480  24 30 9f e5                                      ldr r3, [pc, #0x24]
0034e484  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034e488  10 40 2d e9                                      push {r4, lr}
0034e48c  03 30 8f e0                                      add r3, pc, r3
0034e490  02 20 93 e7                                      ldr r2, [r3, r2]
0034e494  00 40 a0 e1                                      mov r4, r0
0034e498  08 20 82 e2                                      add r2, r2, #8
0034e49c  00 20 80 e5                                      str r2, [r0]
0034e4a0  07 7a 08 eb                                      bl #0x56ccc4
0034e4a4  04 00 a0 e1                                      mov r0, r4
0034e4a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034e4ac  04 66 64 00 8c 2e 00 00                          .byte 0x04, 0x66, 0x64, 0x00, 0x8c, 0x2e, 0x00, 0x00

; FUNCTION 0x0034e4b4, declared_size=28, range_size=28, mode=arm
; class-group: FileSystemBase
; alias: _ZN14FileSystemBaseD0Ev
; demangled: FileSystemBase::~FileSystemBase()
; decoder-mode: arm
0034e4b4  10 40 2d e9                                      push {r4, lr}
0034e4b8  00 40 a0 e1                                      mov r4, r0
0034e4bc  ef ff ff eb                                      bl #0x34e480
0034e4c0  04 00 a0 e1                                      mov r0, r4
0034e4c4  dd 07 ff eb                                      bl #0x310440
0034e4c8  04 00 a0 e1                                      mov r0, r4
0034e4cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0034e4d0, declared_size=52, range_size=52, mode=arm
; class-group: FileSystemBase
; alias: _ZN14FileSystemBaseD2Ev
; demangled: FileSystemBase::~FileSystemBase()
; decoder-mode: arm
0034e4d0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0034e4d4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034e4d8  10 40 2d e9                                      push {r4, lr}
0034e4dc  03 30 8f e0                                      add r3, pc, r3
0034e4e0  02 20 93 e7                                      ldr r2, [r3, r2]
0034e4e4  00 40 a0 e1                                      mov r4, r0
0034e4e8  08 20 82 e2                                      add r2, r2, #8
0034e4ec  00 20 80 e5                                      str r2, [r0]
0034e4f0  f3 79 08 eb                                      bl #0x56ccc4
0034e4f4  04 00 a0 e1                                      mov r0, r4
0034e4f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034e4fc  b4 65 64 00 8c 2e 00 00                          .byte 0xb4, 0x65, 0x64, 0x00, 0x8c, 0x2e, 0x00, 0x00

; FUNCTION 0x0034e504, declared_size=52, range_size=52, mode=arm
; class-group: FileSystemBase
; alias: _ZN14FileSystemBaseC1Ev
; demangled: FileSystemBase::FileSystemBase()
; decoder-mode: arm
0034e504  70 40 2d e9                                      push {r4, r5, r6, lr}
0034e508  20 40 9f e5                                      ldr r4, [pc, #0x20]
0034e50c  00 50 a0 e1                                      mov r5, r0
0034e510  d0 76 08 eb                                      bl #0x56c058
0034e514  18 30 9f e5                                      ldr r3, [pc, #0x18]
0034e518  04 40 8f e0                                      add r4, pc, r4
0034e51c  05 00 a0 e1                                      mov r0, r5
0034e520  03 30 94 e7                                      ldr r3, [r4, r3]
0034e524  08 30 83 e2                                      add r3, r3, #8
0034e528  00 30 85 e5                                      str r3, [r5]
0034e52c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0034e530  78 65 64 00 8c 2e 00 00                          .byte 0x78, 0x65, 0x64, 0x00, 0x8c, 0x2e, 0x00, 0x00

; FUNCTION 0x0034e538, declared_size=52, range_size=52, mode=arm
; class-group: FileSystemBase
; alias: _ZN14FileSystemBaseC2Ev
; demangled: FileSystemBase::FileSystemBase()
; decoder-mode: arm
0034e538  70 40 2d e9                                      push {r4, r5, r6, lr}
0034e53c  20 40 9f e5                                      ldr r4, [pc, #0x20]
0034e540  00 50 a0 e1                                      mov r5, r0
0034e544  c3 76 08 eb                                      bl #0x56c058
0034e548  18 30 9f e5                                      ldr r3, [pc, #0x18]
0034e54c  04 40 8f e0                                      add r4, pc, r4
0034e550  05 00 a0 e1                                      mov r0, r5
0034e554  03 30 94 e7                                      ldr r3, [r4, r3]
0034e558  08 30 83 e2                                      add r3, r3, #8
0034e55c  00 30 85 e5                                      str r3, [r5]
0034e560  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0034e564  44 65 64 00 8c 2e 00 00                          .byte 0x44, 0x65, 0x64, 0x00, 0x8c, 0x2e, 0x00, 0x00

; FUNCTION 0x0034e5f4, declared_size=148, range_size=148, mode=arm
; class-group: FileSystemBase
; alias: _ZNK14FileSystemBase15getAbsolutePathERKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE
; demangled: FileSystemBase::getAbsolutePath(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&) const
; decoder-mode: arm
0034e5f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034e5f8  80 40 9f e5                                      ldr r4, [pc, #0x80]
0034e5fc  80 70 9f e5                                      ldr r7, [pc, #0x80]
0034e600  20 d0 4d e2                                      sub sp, sp, #0x20
0034e604  04 40 8f e0                                      add r4, pc, r4
0034e608  07 30 94 e7                                      ldr r3, [r4, r7]
0034e60c  04 50 8d e2                                      add r5, sp, #4
0034e610  01 80 a0 e1                                      mov r8, r1
0034e614  00 c0 93 e5                                      ldr ip, [r3]
0034e618  00 30 91 e5                                      ldr r3, [r1]
0034e61c  00 60 a0 e1                                      mov r6, r0
0034e620  1c c0 8d e5                                      str ip, [sp, #0x1c]
0034e624  05 00 a0 e1                                      mov r0, r5
0034e628  14 20 92 e5                                      ldr r2, [r2, #0x14]
0034e62c  0f e0 a0 e1                                      mov lr, pc
0034e630  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0034e634  06 00 a0 e1                                      mov r0, r6
0034e638  08 10 a0 e1                                      mov r1, r8
0034e63c  05 20 a0 e1                                      mov r2, r5
0034e640  40 77 08 eb                                      bl #0x56c348
0034e644  18 00 9d e5                                      ldr r0, [sp, #0x18]
0034e648  05 00 50 e1                                      cmp r0, r5
0034e64c  02 00 00 0a                                      beq #0x34e65c
0034e650  00 00 50 e3                                      cmp r0, #0
0034e654  00 00 00 0a                                      beq #0x34e65c
0034e658  7c 07 ff eb                                      bl #0x310450
0034e65c  07 30 94 e7                                      ldr r3, [r4, r7]
0034e660  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0034e664  06 00 a0 e1                                      mov r0, r6
0034e668  00 30 93 e5                                      ldr r3, [r3]
0034e66c  03 00 52 e1                                      cmp r2, r3
0034e670  01 00 00 1a                                      bne #0x34e67c
0034e674  20 d0 8d e2                                      add sp, sp, #0x20
0034e678  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0034e67c  23 ff fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034e680  8c 64 64 00 ac 40 00 00                          .byte 0x8c, 0x64, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0034e688, declared_size=740, range_size=740, mode=arm
; class-group: FileSystemBase
; alias: _ZN14FileSystemBase17createAndOpenFileEPKc
; demangled: FileSystemBase::createAndOpenFile(char const*)
; decoder-mode: arm
0034e688  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034e68c  b0 42 9f e5                                      ldr r4, [pc, #0x2b0]
0034e690  b0 92 9f e5                                      ldr sb, [pc, #0x2b0]
0034e694  a4 d0 4d e2                                      sub sp, sp, #0xa4
0034e698  04 40 8f e0                                      add r4, pc, r4
0034e69c  09 30 94 e7                                      ldr r3, [r4, sb]
0034e6a0  00 50 a0 e1                                      mov r5, r0
0034e6a4  84 a0 8d e2                                      add sl, sp, #0x84
0034e6a8  00 30 93 e5                                      ldr r3, [r3]
0034e6ac  01 20 a0 e1                                      mov r2, r1
0034e6b0  6c 60 8d e2                                      add r6, sp, #0x6c
0034e6b4  9c 30 8d e5                                      str r3, [sp, #0x9c]
0034e6b8  00 30 95 e5                                      ldr r3, [r5]
0034e6bc  0a 00 a0 e1                                      mov r0, sl
0034e6c0  05 10 a0 e1                                      mov r1, r5
0034e6c4  0f e0 a0 e1                                      mov lr, pc
0034e6c8  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0034e6cc  06 00 a0 e1                                      mov r0, r6
0034e6d0  10 10 a0 e3                                      mov r1, #0x10
0034e6d4  7c 60 8d e5                                      str r6, [sp, #0x7c]
0034e6d8  80 60 8d e5                                      str r6, [sp, #0x80]
0034e6dc  b1 48 ff eb                                      bl #0x3209a8
0034e6e0  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
0034e6e4  00 20 a0 e3                                      mov r2, #0
0034e6e8  54 70 8d e2                                      add r7, sp, #0x54
0034e6ec  00 20 c3 e5                                      strb r2, [r3]
0034e6f0  98 30 9d e5                                      ldr r3, [sp, #0x98]
0034e6f4  94 20 9d e5                                      ldr r2, [sp, #0x94]
0034e6f8  07 00 a0 e1                                      mov r0, r7
0034e6fc  03 10 a0 e1                                      mov r1, r3
0034e700  02 30 63 e0                                      rsb r3, r3, r2
0034e704  08 00 53 e3                                      cmp r3, #8
0034e708  03 20 81 90                                      addls r2, r1, r3
0034e70c  08 20 81 82                                      addhi r2, r1, #8
0034e710  64 70 8d e5                                      str r7, [sp, #0x64]
0034e714  68 70 8d e5                                      str r7, [sp, #0x68]
0034e718  35 5e ff eb                                      bl #0x325ff4
0034e71c  98 80 9d e5                                      ldr r8, [sp, #0x98]
0034e720  24 12 9f e5                                      ldr r1, [pc, #0x224]
0034e724  08 00 a0 e1                                      mov r0, r8
0034e728  01 10 8f e0                                      add r1, pc, r1
0034e72c  28 01 ff eb                                      bl #0x30ebd4
0034e730  00 00 50 e3                                      cmp r0, #0
0034e734  59 00 00 0a                                      beq #0x34e8a0
0034e738  08 10 a0 e1                                      mov r1, r8
0034e73c  06 00 a0 e1                                      mov r0, r6
0034e740  94 20 9d e5                                      ldr r2, [sp, #0x94]
0034e744  0f 49 ff eb                                      bl #0x320b88
0034e748  24 80 8d e2                                      add r8, sp, #0x24
0034e74c  08 00 a0 e1                                      mov r0, r8
0034e750  80 10 9d e5                                      ldr r1, [sp, #0x80]
0034e754  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
0034e758  34 80 8d e5                                      str r8, [sp, #0x34]
0034e75c  38 80 8d e5                                      str r8, [sp, #0x38]
0034e760  23 5e ff eb                                      bl #0x325ff4
0034e764  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
0034e768  38 10 9d e5                                      ldr r1, [sp, #0x38]
0034e76c  03 00 94 e7                                      ldr r0, [r4, r3]
0034e770  c0 47 ff eb                                      bl #0x320678
0034e774  00 00 50 e3                                      cmp r0, #0
0034e778  22 00 00 0a                                      beq #0x34e808
0034e77c  00 30 95 e5                                      ldr r3, [r5]
0034e780  05 00 a0 e1                                      mov r0, r5
0034e784  0f e0 a0 e1                                      mov lr, pc
0034e788  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0034e78c  0c b0 8d e2                                      add fp, sp, #0xc
0034e790  1c b0 8d e5                                      str fp, [sp, #0x1c]
0034e794  20 b0 8d e5                                      str fp, [sp, #0x20]
0034e798  00 00 8d e5                                      str r0, [sp]
0034e79c  ac fd fe eb                                      bl #0x30de54
0034e7a0  00 10 9d e5                                      ldr r1, [sp]
0034e7a4  00 20 81 e0                                      add r2, r1, r0
0034e7a8  0b 00 a0 e1                                      mov r0, fp
0034e7ac  cd 0b ff eb                                      bl #0x3116e8
0034e7b0  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
0034e7b4  00 30 95 e5                                      ldr r3, [r5]
0034e7b8  05 00 a0 e1                                      mov r0, r5
0034e7bc  01 10 8f e0                                      add r1, pc, r1
0034e7c0  0f e0 a0 e1                                      mov lr, pc
0034e7c4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0034e7c8  05 00 a0 e1                                      mov r0, r5
0034e7cc  38 10 9d e5                                      ldr r1, [sp, #0x38]
0034e7d0  42 7b 08 eb                                      bl #0x56d4e0
0034e7d4  00 00 50 e3                                      cmp r0, #0
0034e7d8  04 00 8d e5                                      str r0, [sp, #4]
0034e7dc  02 00 00 0a                                      beq #0x34e7ec
0034e7e0  0b 00 a0 e1                                      mov r0, fp
0034e7e4  70 14 ff eb                                      bl #0x3139ac
0034e7e8  0c 00 00 ea                                      b #0x34e820
0034e7ec  00 30 95 e5                                      ldr r3, [r5]
0034e7f0  05 00 a0 e1                                      mov r0, r5
0034e7f4  20 10 9d e5                                      ldr r1, [sp, #0x20]
0034e7f8  0f e0 a0 e1                                      mov lr, pc
0034e7fc  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0034e800  0b 00 a0 e1                                      mov r0, fp
0034e804  68 14 ff eb                                      bl #0x3139ac
0034e808  05 00 a0 e1                                      mov r0, r5
0034e80c  38 10 9d e5                                      ldr r1, [sp, #0x38]
0034e810  32 7b 08 eb                                      bl #0x56d4e0
0034e814  00 00 50 e3                                      cmp r0, #0
0034e818  04 00 8d e5                                      str r0, [sp, #4]
0034e81c  3d 00 00 0a                                      beq #0x34e918
0034e820  38 00 9d e5                                      ldr r0, [sp, #0x38]
0034e824  08 00 50 e1                                      cmp r0, r8
0034e828  02 00 00 0a                                      beq #0x34e838
0034e82c  00 00 50 e3                                      cmp r0, #0
0034e830  00 00 00 0a                                      beq #0x34e838
0034e834  05 07 ff eb                                      bl #0x310450
0034e838  68 00 9d e5                                      ldr r0, [sp, #0x68]
0034e83c  07 00 50 e1                                      cmp r0, r7
0034e840  02 00 00 0a                                      beq #0x34e850
0034e844  00 00 50 e3                                      cmp r0, #0
0034e848  00 00 00 0a                                      beq #0x34e850
0034e84c  ff 06 ff eb                                      bl #0x310450
0034e850  80 00 9d e5                                      ldr r0, [sp, #0x80]
0034e854  06 00 50 e1                                      cmp r0, r6
0034e858  02 00 00 0a                                      beq #0x34e868
0034e85c  00 00 50 e3                                      cmp r0, #0
0034e860  00 00 00 0a                                      beq #0x34e868
0034e864  f9 06 ff eb                                      bl #0x310450
0034e868  98 00 9d e5                                      ldr r0, [sp, #0x98]
0034e86c  0a 00 50 e1                                      cmp r0, sl
0034e870  02 00 00 0a                                      beq #0x34e880
0034e874  00 00 50 e3                                      cmp r0, #0
0034e878  00 00 00 0a                                      beq #0x34e880
0034e87c  f3 06 ff eb                                      bl #0x310450
0034e880  09 30 94 e7                                      ldr r3, [r4, sb]
0034e884  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
0034e888  04 00 9d e5                                      ldr r0, [sp, #4]
0034e88c  00 30 93 e5                                      ldr r3, [r3]
0034e890  03 00 52 e1                                      cmp r2, r3
0034e894  29 00 00 1a                                      bne #0x34e940
0034e898  a4 d0 8d e2                                      add sp, sp, #0xa4
0034e89c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0034e8a0  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0034e8a4  08 00 a0 e1                                      mov r0, r8
0034e8a8  01 10 8f e0                                      add r1, pc, r1
0034e8ac  c8 00 ff eb                                      bl #0x30ebd4
0034e8b0  00 00 50 e3                                      cmp r0, #0
0034e8b4  9f ff ff 1a                                      bne #0x34e738
0034e8b8  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0034e8bc  68 00 9d e5                                      ldr r0, [sp, #0x68]
0034e8c0  01 10 8f e0                                      add r1, pc, r1
0034e8c4  94 fe fe eb                                      bl #0x30e31c
0034e8c8  00 00 50 e3                                      cmp r0, #0
0034e8cc  99 ff ff 0a                                      beq #0x34e738
0034e8d0  88 30 9f e5                                      ldr r3, [pc, #0x88]
0034e8d4  3c 80 8d e2                                      add r8, sp, #0x3c
0034e8d8  0a 20 a0 e1                                      mov r2, sl
0034e8dc  03 30 94 e7                                      ldr r3, [r4, r3]
0034e8e0  08 00 a0 e1                                      mov r0, r8
0034e8e4  00 10 93 e5                                      ldr r1, [r3]
0034e8e8  a9 fe ff eb                                      bl #0x34e394
0034e8ec  06 00 a0 e1                                      mov r0, r6
0034e8f0  50 10 9d e5                                      ldr r1, [sp, #0x50]
0034e8f4  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0034e8f8  a2 48 ff eb                                      bl #0x320b88
0034e8fc  50 00 9d e5                                      ldr r0, [sp, #0x50]
0034e900  08 00 50 e1                                      cmp r0, r8
0034e904  8f ff ff 0a                                      beq #0x34e748
0034e908  00 00 50 e3                                      cmp r0, #0
0034e90c  8d ff ff 0a                                      beq #0x34e748
0034e910  ce 06 ff eb                                      bl #0x310450
0034e914  8b ff ff ea                                      b #0x34e748
0034e918  44 00 9f e5                                      ldr r0, [pc, #0x44]
0034e91c  38 10 9d e5                                      ldr r1, [sp, #0x38]
0034e920  00 00 8f e0                                      add r0, pc, r0
0034e924  fa 55 ff eb                                      bl #0x324114
0034e928  38 00 9f e5                                      ldr r0, [pc, #0x38]
0034e92c  38 10 9d e5                                      ldr r1, [sp, #0x38]
0034e930  03 20 a0 e3                                      mov r2, #3
0034e934  00 00 8f e0                                      add r0, pc, r0
0034e938  ea f0 0a eb                                      bl #0x60ace8
0034e93c  b7 ff ff ea                                      b #0x34e820
0034e940  72 fe fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034e944  f8 63 64 00 ac 40 00 00 b0 1f 57 00 f4 37 00 00  .byte 0xf8, 0x63, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb0, 0x1f, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00
0034e954  3c 1f 57 00 38 1e 57 00 28 1e 57 00 00 06 00 00  .byte 0x3c, 0x1f, 0x57, 0x00, 0x38, 0x1e, 0x57, 0x00, 0x28, 0x1e, 0x57, 0x00, 0x00, 0x06, 0x00, 0x00
0034e964  e0 1d 57 00 ec 1d 57 00                          .byte 0xe0, 0x1d, 0x57, 0x00, 0xec, 0x1d, 0x57, 0x00

; FUNCTION 0x0034e96c, declared_size=496, range_size=496, mode=arm
; class-group: FileSystemBase
; alias: _ZNK14FileSystemBase18ApplyFilenameHacksEPKc
; demangled: FileSystemBase::ApplyFilenameHacks(char const*) const
; decoder-mode: arm
0034e96c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034e970  d4 51 9f e5                                      ldr r5, [pc, #0x1d4]
0034e974  d4 81 9f e5                                      ldr r8, [pc, #0x1d4]
0034e978  00 40 a0 e1                                      mov r4, r0
0034e97c  05 50 8f e0                                      add r5, pc, r5
0034e980  08 30 95 e7                                      ldr r3, [r5, r8]
0034e984  54 d0 4d e2                                      sub sp, sp, #0x54
0034e988  01 a0 a0 e1                                      mov sl, r1
0034e98c  00 30 93 e5                                      ldr r3, [r3]
0034e990  10 10 a0 e3                                      mov r1, #0x10
0034e994  10 00 84 e5                                      str r0, [r4, #0x10]
0034e998  14 00 84 e5                                      str r0, [r4, #0x14]
0034e99c  02 60 a0 e1                                      mov r6, r2
0034e9a0  4c 30 8d e5                                      str r3, [sp, #0x4c]
0034e9a4  ff 47 ff eb                                      bl #0x3209a8
0034e9a8  10 30 94 e5                                      ldr r3, [r4, #0x10]
0034e9ac  00 20 a0 e3                                      mov r2, #0
0034e9b0  0a 00 a0 e1                                      mov r0, sl
0034e9b4  00 20 c3 e5                                      strb r2, [r3]
0034e9b8  00 30 9a e5                                      ldr r3, [sl]
0034e9bc  0f e0 a0 e1                                      mov lr, pc
0034e9c0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0034e9c4  00 70 a0 e1                                      mov r7, r0
0034e9c8  21 fd fe eb                                      bl #0x30de54
0034e9cc  07 10 a0 e1                                      mov r1, r7
0034e9d0  00 90 a0 e1                                      mov sb, r0
0034e9d4  06 00 a0 e1                                      mov r0, r6
0034e9d8  7d 00 ff eb                                      bl #0x30ebd4
0034e9dc  00 70 50 e2                                      subs r7, r0, #0
0034e9e0  51 00 00 0a                                      beq #0x34eb2c
0034e9e4  01 b0 89 e2                                      add fp, sb, #1
0034e9e8  0b b0 87 e0                                      add fp, r7, fp
0034e9ec  0b 00 a0 e1                                      mov r0, fp
0034e9f0  17 fd fe eb                                      bl #0x30de54
0034e9f4  0b 10 a0 e1                                      mov r1, fp
0034e9f8  00 20 8b e0                                      add r2, fp, r0
0034e9fc  04 00 a0 e1                                      mov r0, r4
0034ea00  60 48 ff eb                                      bl #0x320b88
0034ea04  48 11 9f e5                                      ldr r1, [pc, #0x148]
0034ea08  14 00 94 e5                                      ldr r0, [r4, #0x14]
0034ea0c  01 10 8f e0                                      add r1, pc, r1
0034ea10  6f 00 ff eb                                      bl #0x30ebd4
0034ea14  00 00 50 e3                                      cmp r0, #0
0034ea18  14 00 00 0a                                      beq #0x34ea70
0034ea1c  34 b0 8d e2                                      add fp, sp, #0x34
0034ea20  01 30 a0 e3                                      mov r3, #1
0034ea24  0a 10 a0 e1                                      mov r1, sl
0034ea28  0b 00 a0 e1                                      mov r0, fp
0034ea2c  04 20 a0 e1                                      mov r2, r4
0034ea30  42 77 08 eb                                      bl #0x56c740
0034ea34  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
0034ea38  04 00 a0 e1                                      mov r0, r4
0034ea3c  01 10 8f e0                                      add r1, pc, r1
0034ea40  10 20 81 e2                                      add r2, r1, #0x10
0034ea44  4f 48 ff eb                                      bl #0x320b88
0034ea48  04 00 a0 e1                                      mov r0, r4
0034ea4c  48 10 9d e5                                      ldr r1, [sp, #0x48]
0034ea50  44 20 9d e5                                      ldr r2, [sp, #0x44]
0034ea54  fc 47 ff eb                                      bl #0x320a4c
0034ea58  48 00 9d e5                                      ldr r0, [sp, #0x48]
0034ea5c  0b 00 50 e1                                      cmp r0, fp
0034ea60  02 00 00 0a                                      beq #0x34ea70
0034ea64  00 00 50 e3                                      cmp r0, #0
0034ea68  00 00 00 0a                                      beq #0x34ea70
0034ea6c  77 06 ff eb                                      bl #0x310450
0034ea70  04 00 a0 e1                                      mov r0, r4
0034ea74  00 10 a0 e3                                      mov r1, #0
0034ea78  00 20 e0 e3                                      mvn r2, #0
0034ea7c  83 fd ff eb                                      bl #0x34e090
0034ea80  00 00 57 e3                                      cmp r7, #0
0034ea84  20 00 00 0a                                      beq #0x34eb0c
0034ea88  01 30 66 e2                                      rsb r3, r6, #1
0034ea8c  09 90 83 e0                                      add sb, r3, sb
0034ea90  06 10 a0 e1                                      mov r1, r6
0034ea94  09 70 87 e0                                      add r7, r7, sb
0034ea98  1c 60 8d e2                                      add r6, sp, #0x1c
0034ea9c  07 20 81 e0                                      add r2, r1, r7
0034eaa0  06 00 a0 e1                                      mov r0, r6
0034eaa4  04 70 8d e2                                      add r7, sp, #4
0034eaa8  2c 60 8d e5                                      str r6, [sp, #0x2c]
0034eaac  30 60 8d e5                                      str r6, [sp, #0x30]
0034eab0  4f 5d ff eb                                      bl #0x325ff4
0034eab4  07 00 a0 e1                                      mov r0, r7
0034eab8  06 10 a0 e1                                      mov r1, r6
0034eabc  04 20 a0 e1                                      mov r2, r4
0034eac0  17 fe ff eb                                      bl #0x34e324
0034eac4  07 00 54 e1                                      cmp r4, r7
0034eac8  03 00 00 0a                                      beq #0x34eadc
0034eacc  04 00 a0 e1                                      mov r0, r4
0034ead0  18 10 9d e5                                      ldr r1, [sp, #0x18]
0034ead4  14 20 9d e5                                      ldr r2, [sp, #0x14]
0034ead8  2a 48 ff eb                                      bl #0x320b88
0034eadc  18 00 9d e5                                      ldr r0, [sp, #0x18]
0034eae0  07 00 50 e1                                      cmp r0, r7
0034eae4  02 00 00 0a                                      beq #0x34eaf4
0034eae8  00 00 50 e3                                      cmp r0, #0
0034eaec  00 00 00 0a                                      beq #0x34eaf4
0034eaf0  56 06 ff eb                                      bl #0x310450
0034eaf4  30 00 9d e5                                      ldr r0, [sp, #0x30]
0034eaf8  06 00 50 e1                                      cmp r0, r6
0034eafc  02 00 00 0a                                      beq #0x34eb0c
0034eb00  00 00 50 e3                                      cmp r0, #0
0034eb04  00 00 00 0a                                      beq #0x34eb0c
0034eb08  50 06 ff eb                                      bl #0x310450
0034eb0c  08 30 95 e7                                      ldr r3, [r5, r8]
0034eb10  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0034eb14  04 00 a0 e1                                      mov r0, r4
0034eb18  00 30 93 e5                                      ldr r3, [r3]
0034eb1c  03 00 52 e1                                      cmp r2, r3
0034eb20  08 00 00 1a                                      bne #0x34eb48
0034eb24  54 d0 8d e2                                      add sp, sp, #0x54
0034eb28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0034eb2c  06 00 a0 e1                                      mov r0, r6
0034eb30  c7 fc fe eb                                      bl #0x30de54
0034eb34  06 10 a0 e1                                      mov r1, r6
0034eb38  00 20 86 e0                                      add r2, r6, r0
0034eb3c  04 00 a0 e1                                      mov r0, r4
0034eb40  10 48 ff eb                                      bl #0x320b88
0034eb44  ae ff ff ea                                      b #0x34ea04
0034eb48  f0 fd fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034eb4c  14 61 64 00 ac 40 00 00 2c 97 57 00 fc 1c 57 00  .byte 0x14, 0x61, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x97, 0x57, 0x00, 0xfc, 0x1c, 0x57, 0x00

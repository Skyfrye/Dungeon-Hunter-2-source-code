; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038d18c, declared_size=148, range_size=148, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetListD1Ev
; demangled: ObjectSearcher::TargetList::~TargetList()
; decoder-mode: arm
0038d18c  70 40 2d e9                                      push {r4, r5, r6, lr}
0038d190  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0038d194  00 40 a0 e1                                      mov r4, r0
0038d198  00 00 53 e3                                      cmp r3, #0
0038d19c  15 00 00 1a                                      bne #0x38d1f8
0038d1a0  00 30 94 e5                                      ldr r3, [r4]
0038d1a4  10 10 94 e5                                      ldr r1, [r4, #0x10]
0038d1a8  08 20 94 e5                                      ldr r2, [r4, #8]
0038d1ac  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0038d1b0  03 00 51 e1                                      cmp r1, r3
0038d1b4  0b 00 00 0a                                      beq #0x38d1e8
0038d1b8  14 30 83 e2                                      add r3, r3, #0x14
0038d1bc  02 00 53 e1                                      cmp r3, r2
0038d1c0  04 00 00 0a                                      beq #0x38d1d8
0038d1c4  03 00 51 e1                                      cmp r1, r3
0038d1c8  14 30 83 e2                                      add r3, r3, #0x14
0038d1cc  05 00 00 0a                                      beq #0x38d1e8
0038d1d0  03 00 52 e1                                      cmp r2, r3
0038d1d4  fa ff ff 1a                                      bne #0x38d1c4
0038d1d8  04 30 b0 e5                                      ldr r3, [r0, #4]!
0038d1dc  03 00 51 e1                                      cmp r1, r3
0038d1e0  78 20 83 e2                                      add r2, r3, #0x78
0038d1e4  f3 ff ff 1a                                      bne #0x38d1b8
0038d1e8  04 00 a0 e1                                      mov r0, r4
0038d1ec  a2 fd ff eb                                      bl #0x38c87c
0038d1f0  04 00 a0 e1                                      mov r0, r4
0038d1f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0038d1f8  3c 50 80 e2                                      add r5, r0, #0x3c
0038d1fc  05 00 a0 e1                                      mov r0, r5
0038d200  40 10 94 e5                                      ldr r1, [r4, #0x40]
0038d204  ce ff ff eb                                      bl #0x38d144
0038d208  00 30 a0 e3                                      mov r3, #0
0038d20c  48 50 84 e5                                      str r5, [r4, #0x48]
0038d210  4c 30 84 e5                                      str r3, [r4, #0x4c]
0038d214  44 50 84 e5                                      str r5, [r4, #0x44]
0038d218  40 30 84 e5                                      str r3, [r4, #0x40]
0038d21c  df ff ff ea                                      b #0x38d1a0

; FUNCTION 0x0038f72c, declared_size=160, range_size=160, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList16GetResultsBackupEPKc
; demangled: ObjectSearcher::TargetList::GetResultsBackup(char const*)
; decoder-mode: arm
0038f72c  10 40 2d e9                                      push {r4, lr}
0038f730  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0038f734  10 d0 4d e2                                      sub sp, sp, #0x10
0038f738  00 20 51 e2                                      subs r2, r1, #0
0038f73c  0c 10 8d e5                                      str r1, [sp, #0xc]
0038f740  00 40 a0 e1                                      mov r4, r0
0038f744  03 30 8f e0                                      add r3, pc, r3
0038f748  04 00 00 0a                                      beq #0x38f760
0038f74c  3c 00 84 e2                                      add r0, r4, #0x3c
0038f750  0c 10 8d e2                                      add r1, sp, #0xc
0038f754  78 ff ff eb                                      bl #0x38f53c
0038f758  10 d0 8d e2                                      add sp, sp, #0x10
0038f75c  10 80 bd e8                                      pop {r4, pc}
0038f760  50 10 9f e5                                      ldr r1, [pc, #0x50]
0038f764  01 10 93 e7                                      ldr r1, [r3, r1]
0038f768  00 10 91 e5                                      ldr r1, [r1]
0038f76c  02 00 51 e3                                      cmp r1, #2
0038f770  00 20 82 05                                      streq r2, [r2]
0038f774  f4 ff ff 0a                                      beq #0x38f74c
0038f778  01 00 51 e3                                      cmp r1, #1
0038f77c  f2 ff ff 1a                                      bne #0x38f74c
0038f780  34 00 9f e5                                      ldr r0, [pc, #0x34]
0038f784  34 10 9f e5                                      ldr r1, [pc, #0x34]
0038f788  34 20 9f e5                                      ldr r2, [pc, #0x34]
0038f78c  00 00 93 e7                                      ldr r0, [r3, r0]
0038f790  30 30 9f e5                                      ldr r3, [pc, #0x30]
0038f794  83 c1 00 e3                                      movw ip, #0x183
0038f798  01 10 8f e0                                      add r1, pc, r1
0038f79c  02 20 8f e0                                      add r2, pc, r2
0038f7a0  03 30 8f e0                                      add r3, pc, r3
0038f7a4  a8 00 80 e2                                      add r0, r0, #0xa8
0038f7a8  00 c0 8d e5                                      str ip, [sp]
0038f7ac  14 fa fd eb                                      bl #0x30e004
0038f7b0  e5 ff ff ea                                      b #0x38f74c
; mapping-symbol data/literal pool
0038f7b4  4c 53 60 00 c0 39 00 00 c0 19 00 00 40 ec 52 00  .byte 0x4c, 0x53, 0x60, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x40, 0xec, 0x52, 0x00
0038f7c4  b4 33 53 00 70 30 53 00                          .byte 0xb4, 0x33, 0x53, 0x00, 0x70, 0x30, 0x53, 0x00

; FUNCTION 0x003d0020, declared_size=96, range_size=96, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList6SearchEff
; demangled: ObjectSearcher::TargetList::Search(float, float)
; decoder-mode: arm
003d0020  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
003d0024  10 40 2d e9                                      push {r4, lr}
003d0028  48 e0 9f e5                                      ldr lr, [pc, #0x48]
003d002c  0c c0 8f e0                                      add ip, pc, ip
003d0030  44 30 9f e5                                      ldr r3, [pc, #0x44]
003d0034  0e e0 9c e7                                      ldr lr, [ip, lr]
003d0038  18 d0 4d e2                                      sub sp, sp, #0x18
003d003c  03 30 9c e7                                      ldr r3, [ip, r3]
003d0040  38 40 9e e5                                      ldr r4, [lr, #0x38]
003d0044  08 30 83 e2                                      add r3, r3, #8
003d0048  80 e0 84 e2                                      add lr, r4, #0x80
003d004c  08 40 8d e9                                      stmib sp, {r3, lr}
003d0050  80 40 94 e5                                      ldr r4, [r4, #0x80]
003d0054  04 30 8d e2                                      add r3, sp, #4
003d0058  10 e0 8d e5                                      str lr, [sp, #0x10]
003d005c  00 e0 a0 e3                                      mov lr, #0
003d0060  0c 40 8d e5                                      str r4, [sp, #0xc]
003d0064  14 e0 8d e5                                      str lr, [sp, #0x14]
003d0068  ee 4c 03 eb                                      bl #0x4a3428
003d006c  18 d0 8d e2                                      add sp, sp, #0x18
003d0070  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003d0074  64 4a 5c 00 f4 37 00 00 64 35 00 00              .byte 0x64, 0x4a, 0x5c, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x64, 0x35, 0x00, 0x00

; FUNCTION 0x003d015c, declared_size=80, range_size=80, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList11SetSortTypeEi.clone.1
; demangled: ObjectSearcher::TargetList::SetSortType(int) [clone .clone.1]
; decoder-mode: arm
003d015c  70 40 2d e9                                      push {r4, r5, r6, lr}
003d0160  10 20 90 e5                                      ldr r2, [r0, #0x10]
003d0164  00 30 90 e5                                      ldr r3, [r0]
003d0168  34 50 9f e5                                      ldr r5, [pc, #0x34]
003d016c  00 40 a0 e1                                      mov r4, r0
003d0170  03 00 52 e1                                      cmp r2, r3
003d0174  05 50 8f e0                                      add r5, pc, r5
003d0178  05 00 00 0a                                      beq #0x3d0194
003d017c  04 00 a0 e1                                      mov r0, r4
003d0180  64 fe fe eb                                      bl #0x38fb18
003d0184  10 20 94 e5                                      ldr r2, [r4, #0x10]
003d0188  00 30 94 e5                                      ldr r3, [r4]
003d018c  03 00 52 e1                                      cmp r2, r3
003d0190  f9 ff ff 1a                                      bne #0x3d017c
003d0194  0c 30 9f e5                                      ldr r3, [pc, #0xc]
003d0198  03 30 95 e7                                      ldr r3, [r5, r3]
003d019c  28 30 84 e5                                      str r3, [r4, #0x28]
003d01a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003d01a4  1c 49 5c 00 d4 1f 00 00                          .byte 0x1c, 0x49, 0x5c, 0x00, 0xd4, 0x1f, 0x00, 0x00

; FUNCTION 0x004a191c, declared_size=52, range_size=52, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList12SetRefObjectEP10GameObject
; demangled: ObjectSearcher::TargetList::SetRefObject(GameObject*)
; decoder-mode: arm
004a191c  00 00 51 e3                                      cmp r1, #0
004a1920  10 40 2d e9                                      push {r4, lr}
004a1924  00 40 a0 e1                                      mov r4, r0
004a1928  07 00 00 0a                                      beq #0x4a194c
004a192c  2c 10 80 e5                                      str r1, [r0, #0x2c]
004a1930  00 30 91 e5                                      ldr r3, [r1]
004a1934  01 00 a0 e1                                      mov r0, r1
004a1938  0f e0 a0 e1                                      mov lr, pc
004a193c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
004a1940  00 00 50 e3                                      cmp r0, #0
004a1944  2c 30 94 15                                      ldrne r3, [r4, #0x2c]
004a1948  30 30 84 15                                      strne r3, [r4, #0x30]
004a194c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004a1950, declared_size=116, range_size=116, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList18_IsGameObjectValidEP10GameObject
; demangled: ObjectSearcher::TargetList::_IsGameObjectValid(GameObject*)
; decoder-mode: arm
004a1950  10 40 2d e9                                      push {r4, lr}
004a1954  00 30 a0 e1                                      mov r3, r0
004a1958  38 00 90 e5                                      ldr r0, [r0, #0x38]
004a195c  01 20 a0 e1                                      mov r2, r1
004a1960  00 00 50 e3                                      cmp r0, #0
004a1964  05 00 00 0a                                      beq #0x4a1980
004a1968  01 00 50 e3                                      cmp r0, #1
004a196c  0c 00 00 0a                                      beq #0x4a19a4
004a1970  03 00 50 e3                                      cmp r0, #3
004a1974  00 00 a0 13                                      movne r0, #0
004a1978  01 00 a0 03                                      moveq r0, #1
004a197c  10 80 bd e8                                      pop {r4, pc}
004a1980  01 00 a0 e1                                      mov r0, r1
004a1984  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
004a1988  00 30 92 e5                                      ldr r3, [r2]
004a198c  0f e0 a0 e1                                      mov lr, pc
004a1990  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004a1994  08 00 50 e3                                      cmp r0, #8
004a1998  00 00 a0 13                                      movne r0, #0
004a199c  01 00 a0 03                                      moveq r0, #1
004a19a0  10 80 bd e8                                      pop {r4, pc}
004a19a4  01 00 a0 e1                                      mov r0, r1
004a19a8  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
004a19ac  00 30 92 e5                                      ldr r3, [r2]
004a19b0  0f e0 a0 e1                                      mov lr, pc
004a19b4  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004a19b8  01 00 90 e2                                      adds r0, r0, #1
004a19bc  01 00 a0 13                                      movne r0, #1
004a19c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004a1a38, declared_size=128, range_size=128, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList18FlushBackupResultsEv
; demangled: ObjectSearcher::TargetList::FlushBackupResults()
; decoder-mode: arm
004a1a38  70 40 2d e9                                      push {r4, r5, r6, lr}
004a1a3c  44 40 90 e5                                      ldr r4, [r0, #0x44]
004a1a40  3c 50 80 e2                                      add r5, r0, #0x3c
004a1a44  04 00 55 e1                                      cmp r5, r4
004a1a48  0c 00 00 0a                                      beq #0x4a1a80
004a1a4c  28 00 84 e2                                      add r0, r4, #0x28
004a1a50  e8 ff ff eb                                      bl #0x4a19f8
004a1a54  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004a1a58  00 00 52 e3                                      cmp r2, #0
004a1a5c  01 00 00 1a                                      bne #0x4a1a68
004a1a60  07 00 00 ea                                      b #0x4a1a84
004a1a64  03 20 a0 e1                                      mov r2, r3
004a1a68  08 30 92 e5                                      ldr r3, [r2, #8]
004a1a6c  00 00 53 e3                                      cmp r3, #0
004a1a70  fb ff ff 1a                                      bne #0x4a1a64
004a1a74  02 40 a0 e1                                      mov r4, r2
004a1a78  04 00 55 e1                                      cmp r5, r4
004a1a7c  f2 ff ff 1a                                      bne #0x4a1a4c
004a1a80  70 80 bd e8                                      pop {r4, r5, r6, pc}
004a1a84  04 30 94 e5                                      ldr r3, [r4, #4]
004a1a88  0c 10 93 e5                                      ldr r1, [r3, #0xc]
004a1a8c  01 00 54 e1                                      cmp r4, r1
004a1a90  05 00 00 1a                                      bne #0x4a1aac
004a1a94  03 40 a0 e1                                      mov r4, r3
004a1a98  04 30 93 e5                                      ldr r3, [r3, #4]
004a1a9c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004a1aa0  04 00 52 e1                                      cmp r2, r4
004a1aa4  fa ff ff 0a                                      beq #0x4a1a94
004a1aa8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004a1aac  03 00 52 e1                                      cmp r2, r3
004a1ab0  03 40 a0 11                                      movne r4, r3
004a1ab4  e2 ff ff ea                                      b #0x4a1a44

; FUNCTION 0x004a1ab8, declared_size=528, range_size=528, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList17_IsCharacterValidEP9Character
; demangled: ObjectSearcher::TargetList::_IsCharacterValid(Character*)
; decoder-mode: arm
004a1ab8  70 40 2d e9                                      push {r4, r5, r6, lr}
004a1abc  30 30 90 e5                                      ldr r3, [r0, #0x30]
004a1ac0  00 40 a0 e1                                      mov r4, r0
004a1ac4  01 50 a0 e1                                      mov r5, r1
004a1ac8  00 00 53 e3                                      cmp r3, #0
004a1acc  4e 00 00 0a                                      beq #0x4a1c0c
004a1ad0  14 23 01 e3                                      movw r2, #0x1314
004a1ad4  02 20 93 e7                                      ldr r2, [r3, r2]
004a1ad8  10 33 01 e3                                      movw r3, #0x1310
004a1adc  03 30 91 e7                                      ldr r3, [r1, r3]
004a1ae0  03 00 52 e1                                      cmp r2, r3
004a1ae4  01 00 00 aa                                      bge #0x4a1af0
004a1ae8  00 00 a0 e3                                      mov r0, #0
004a1aec  70 80 bd e8                                      pop {r4, r5, r6, pc}
004a1af0  34 30 90 e5                                      ldr r3, [r0, #0x34]
004a1af4  06 01 73 e3                                      cmn r3, #0x80000001
004a1af8  43 00 00 0a                                      beq #0x4a1c0c
004a1afc  80 00 13 e3                                      tst r3, #0x80
004a1b00  43 00 00 1a                                      bne #0x4a1c14
004a1b04  10 00 13 e3                                      tst r3, #0x10
004a1b08  49 00 00 1a                                      bne #0x4a1c34
004a1b0c  20 00 13 e3                                      tst r3, #0x20
004a1b10  4d 00 00 1a                                      bne #0x4a1c4c
004a1b14  40 00 13 e3                                      tst r3, #0x40
004a1b18  02 00 00 0a                                      beq #0x4a1b28
004a1b1c  fa 22 d5 e5                                      ldrb r2, [r5, #0x2fa]
004a1b20  00 00 52 e3                                      cmp r2, #0
004a1b24  38 00 00 1a                                      bne #0x4a1c0c
004a1b28  01 00 13 e3                                      tst r3, #1
004a1b2c  1d 00 00 1a                                      bne #0x4a1ba8
004a1b30  02 00 13 e3                                      tst r3, #2
004a1b34  4a 00 00 1a                                      bne #0x4a1c64
004a1b38  04 00 13 e3                                      tst r3, #4
004a1b3c  59 00 00 1a                                      bne #0x4a1ca8
004a1b40  08 00 13 e3                                      tst r3, #8
004a1b44  e7 ff ff 0a                                      beq #0x4a1ae8
004a1b48  00 30 95 e5                                      ldr r3, [r5]
004a1b4c  05 00 a0 e1                                      mov r0, r5
004a1b50  0f e0 a0 e1                                      mov lr, pc
004a1b54  34 f0 93 e5                                      ldr pc, [r3, #0x34]
004a1b58  00 00 50 e3                                      cmp r0, #0
004a1b5c  e1 ff ff 0a                                      beq #0x4a1ae8
004a1b60  30 00 94 e5                                      ldr r0, [r4, #0x30]
004a1b64  05 10 a0 e1                                      mov r1, r5
004a1b68  f2 0f 80 e2                                      add r0, r0, #0x3c8
004a1b6c  6a cd fc eb                                      bl #0x3d511c
004a1b70  00 00 50 e3                                      cmp r0, #0
004a1b74  db ff ff 0a                                      beq #0x4a1ae8
004a1b78  30 00 94 e5                                      ldr r0, [r4, #0x30]
004a1b7c  4f 0e 80 e2                                      add r0, r0, #0x4f0
004a1b80  0c 00 80 e2                                      add r0, r0, #0xc
004a1b84  88 79 fc eb                                      bl #0x3c01ac
004a1b88  0f 00 50 e3                                      cmp r0, #0xf
004a1b8c  d5 ff ff 0a                                      beq #0x4a1ae8
004a1b90  4f 0e 85 e2                                      add r0, r5, #0x4f0
004a1b94  0c 00 80 e2                                      add r0, r0, #0xc
004a1b98  83 79 fc eb                                      bl #0x3c01ac
004a1b9c  10 00 50 e2                                      subs r0, r0, #0x10
004a1ba0  01 00 a0 13                                      movne r0, #1
004a1ba4  70 80 bd e8                                      pop {r4, r5, r6, pc}
004a1ba8  00 30 95 e5                                      ldr r3, [r5]
004a1bac  05 00 a0 e1                                      mov r0, r5
004a1bb0  0f e0 a0 e1                                      mov lr, pc
004a1bb4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
004a1bb8  00 00 50 e3                                      cmp r0, #0
004a1bbc  37 00 00 1a                                      bne #0x4a1ca0
004a1bc0  30 00 94 e5                                      ldr r0, [r4, #0x30]
004a1bc4  05 10 a0 e1                                      mov r1, r5
004a1bc8  f2 0f 80 e2                                      add r0, r0, #0x3c8
004a1bcc  de ce fc eb                                      bl #0x3d574c
004a1bd0  00 00 50 e3                                      cmp r0, #0
004a1bd4  31 00 00 0a                                      beq #0x4a1ca0
004a1bd8  00 30 95 e5                                      ldr r3, [r5]
004a1bdc  05 00 a0 e1                                      mov r0, r5
004a1be0  0f e0 a0 e1                                      mov lr, pc
004a1be4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
004a1be8  00 00 50 e3                                      cmp r0, #0
004a1bec  06 00 00 0a                                      beq #0x4a1c0c
004a1bf0  30 30 94 e5                                      ldr r3, [r4, #0x30]
004a1bf4  03 00 a0 e1                                      mov r0, r3
004a1bf8  00 30 93 e5                                      ldr r3, [r3]
004a1bfc  0f e0 a0 e1                                      mov lr, pc
004a1c00  28 f0 93 e5                                      ldr pc, [r3, #0x28]
004a1c04  00 00 50 e3                                      cmp r0, #0
004a1c08  24 00 00 1a                                      bne #0x4a1ca0
004a1c0c  01 00 a0 e3                                      mov r0, #1
004a1c10  70 80 bd e8                                      pop {r4, r5, r6, pc}
004a1c14  00 30 91 e5                                      ldr r3, [r1]
004a1c18  01 00 a0 e1                                      mov r0, r1
004a1c1c  0f e0 a0 e1                                      mov lr, pc
004a1c20  28 f0 93 e5                                      ldr pc, [r3, #0x28]
004a1c24  00 00 50 e3                                      cmp r0, #0
004a1c28  34 30 94 05                                      ldreq r3, [r4, #0x34]
004a1c2c  b4 ff ff 0a                                      beq #0x4a1b04
004a1c30  f5 ff ff ea                                      b #0x4a1c0c
004a1c34  05 00 a0 e1                                      mov r0, r5
004a1c38  21 05 fc eb                                      bl #0x3a30c4
004a1c3c  00 00 50 e3                                      cmp r0, #0
004a1c40  34 30 94 05                                      ldreq r3, [r4, #0x34]
004a1c44  b0 ff ff 0a                                      beq #0x4a1b0c
004a1c48  ef ff ff ea                                      b #0x4a1c0c
004a1c4c  05 00 a0 e1                                      mov r0, r5
004a1c50  27 05 fc eb                                      bl #0x3a30f4
004a1c54  00 00 50 e3                                      cmp r0, #0
004a1c58  34 30 94 05                                      ldreq r3, [r4, #0x34]
004a1c5c  ac ff ff 0a                                      beq #0x4a1b14
004a1c60  e9 ff ff ea                                      b #0x4a1c0c
004a1c64  00 30 95 e5                                      ldr r3, [r5]
004a1c68  05 00 a0 e1                                      mov r0, r5
004a1c6c  0f e0 a0 e1                                      mov lr, pc
004a1c70  34 f0 93 e5                                      ldr pc, [r3, #0x34]
004a1c74  00 00 50 e3                                      cmp r0, #0
004a1c78  01 00 00 0a                                      beq #0x4a1c84
004a1c7c  34 30 94 e5                                      ldr r3, [r4, #0x34]
004a1c80  ac ff ff ea                                      b #0x4a1b38
004a1c84  30 00 94 e5                                      ldr r0, [r4, #0x30]
004a1c88  05 10 a0 e1                                      mov r1, r5
004a1c8c  f2 0f 80 e2                                      add r0, r0, #0x3c8
004a1c90  80 cf fc eb                                      bl #0x3d5a98
004a1c94  00 00 50 e3                                      cmp r0, #0
004a1c98  db ff ff 1a                                      bne #0x4a1c0c
004a1c9c  f6 ff ff ea                                      b #0x4a1c7c
004a1ca0  34 30 94 e5                                      ldr r3, [r4, #0x34]
004a1ca4  a1 ff ff ea                                      b #0x4a1b30
004a1ca8  30 00 94 e5                                      ldr r0, [r4, #0x30]
004a1cac  05 10 a0 e1                                      mov r1, r5
004a1cb0  f2 0f 80 e2                                      add r0, r0, #0x3c8
004a1cb4  18 cd fc eb                                      bl #0x3d511c
004a1cb8  00 00 50 e3                                      cmp r0, #0
004a1cbc  34 30 94 05                                      ldreq r3, [r4, #0x34]
004a1cc0  9e ff ff 0a                                      beq #0x4a1b40
004a1cc4  d0 ff ff ea                                      b #0x4a1c0c

; FUNCTION 0x004a2730, declared_size=296, range_size=296, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetListC1EP10GameObjectiii
; demangled: ObjectSearcher::TargetList::TargetList(GameObject*, int, int, int)
; decoder-mode: arm
004a2730  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
004a2734  0c 61 9f e5                                      ldr r6, [pc, #0x10c]
004a2738  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
004a273c  00 50 a0 e3                                      mov r5, #0
004a2740  06 60 8f e0                                      add r6, pc, r6
004a2744  00 50 80 e5                                      str r5, [r0]
004a2748  04 50 80 e5                                      str r5, [r0, #4]
004a274c  08 50 80 e5                                      str r5, [r0, #8]
004a2750  0c 50 80 e5                                      str r5, [r0, #0xc]
004a2754  10 50 80 e5                                      str r5, [r0, #0x10]
004a2758  14 50 80 e5                                      str r5, [r0, #0x14]
004a275c  18 50 80 e5                                      str r5, [r0, #0x18]
004a2760  1c 50 80 e5                                      str r5, [r0, #0x1c]
004a2764  20 50 80 e5                                      str r5, [r0, #0x20]
004a2768  24 50 80 e5                                      str r5, [r0, #0x24]
004a276c  00 40 a0 e1                                      mov r4, r0
004a2770  02 80 a0 e1                                      mov r8, r2
004a2774  03 a0 a0 e1                                      mov sl, r3
004a2778  01 b0 a0 e1                                      mov fp, r1
004a277c  28 90 9d e5                                      ldr sb, [sp, #0x28]
004a2780  ae fe ff eb                                      bl #0x4a2240
004a2784  07 20 96 e7                                      ldr r2, [r6, r7]
004a2788  04 30 a0 e1                                      mov r3, r4
004a278c  34 80 84 e5                                      str r8, [r4, #0x34]
004a2790  28 20 84 e5                                      str r2, [r4, #0x28]
004a2794  38 a0 84 e5                                      str sl, [r4, #0x38]
004a2798  2c 50 84 e5                                      str r5, [r4, #0x2c]
004a279c  30 50 84 e5                                      str r5, [r4, #0x30]
004a27a0  40 50 84 e5                                      str r5, [r4, #0x40]
004a27a4  3c 50 e3 e5                                      strb r5, [r3, #0x3c]!
004a27a8  10 10 94 e5                                      ldr r1, [r4, #0x10]
004a27ac  00 20 94 e5                                      ldr r2, [r4]
004a27b0  48 30 84 e5                                      str r3, [r4, #0x48]
004a27b4  4c 50 84 e5                                      str r5, [r4, #0x4c]
004a27b8  02 00 51 e1                                      cmp r1, r2
004a27bc  44 30 84 e5                                      str r3, [r4, #0x44]
004a27c0  05 00 00 0a                                      beq #0x4a27dc
004a27c4  04 00 a0 e1                                      mov r0, r4
004a27c8  d2 b4 fb eb                                      bl #0x38fb18
004a27cc  10 20 94 e5                                      ldr r2, [r4, #0x10]
004a27d0  00 30 94 e5                                      ldr r3, [r4]
004a27d4  03 00 52 e1                                      cmp r2, r3
004a27d8  f9 ff ff 1a                                      bne #0x4a27c4
004a27dc  01 00 59 e3                                      cmp sb, #1
004a27e0  08 00 00 0a                                      beq #0x4a2808
004a27e4  02 00 59 e3                                      cmp sb, #2
004a27e8  0e 00 00 0a                                      beq #0x4a2828
004a27ec  07 30 96 e7                                      ldr r3, [r6, r7]
004a27f0  04 00 a0 e1                                      mov r0, r4
004a27f4  0b 10 a0 e1                                      mov r1, fp
004a27f8  28 30 84 e5                                      str r3, [r4, #0x28]
004a27fc  46 fc ff eb                                      bl #0x4a191c
004a2800  04 00 a0 e1                                      mov r0, r4
004a2804  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
004a2808  40 30 9f e5                                      ldr r3, [pc, #0x40]
004a280c  04 00 a0 e1                                      mov r0, r4
004a2810  0b 10 a0 e1                                      mov r1, fp
004a2814  03 30 96 e7                                      ldr r3, [r6, r3]
004a2818  28 30 84 e5                                      str r3, [r4, #0x28]
004a281c  3e fc ff eb                                      bl #0x4a191c
004a2820  04 00 a0 e1                                      mov r0, r4
004a2824  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
004a2828  24 30 9f e5                                      ldr r3, [pc, #0x24]
004a282c  04 00 a0 e1                                      mov r0, r4
004a2830  0b 10 a0 e1                                      mov r1, fp
004a2834  03 30 96 e7                                      ldr r3, [r6, r3]
004a2838  28 30 84 e5                                      str r3, [r4, #0x28]
004a283c  36 fc ff eb                                      bl #0x4a191c
004a2840  04 00 a0 e1                                      mov r0, r4
004a2844  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
004a2848  50 23 4f 00 74 2c 00 00 c4 4a 00 00 d4 1f 00 00  .byte 0x50, 0x23, 0x4f, 0x00, 0x74, 0x2c, 0x00, 0x00, 0xc4, 0x4a, 0x00, 0x00, 0xd4, 0x1f, 0x00, 0x00

; FUNCTION 0x004a2858, declared_size=1560, range_size=1560, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList10SearchRectERK7Point3DIfEfS4_fRNS_11IObjectListE
; demangled: ObjectSearcher::TargetList::SearchRect(Point3D<float> const&, float, Point3D<float> const&, float, ObjectSearcher::IObjectList&)
; decoder-mode: arm
004a2858  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004a285c  d8 65 9f e5                                      ldr r6, [pc, #0x5d8]
004a2860  d8 75 9f e5                                      ldr r7, [pc, #0x5d8]
004a2864  d8 e5 9f e5                                      ldr lr, [pc, #0x5d8]
004a2868  06 60 8f e0                                      add r6, pc, r6
004a286c  07 c0 96 e7                                      ldr ip, [r6, r7]
004a2870  0e 80 96 e7                                      ldr r8, [r6, lr]
004a2874  94 d0 4d e2                                      sub sp, sp, #0x94
004a2878  00 c0 9c e5                                      ldr ip, [ip]
004a287c  00 50 a0 e1                                      mov r5, r0
004a2880  08 00 a0 e1                                      mov r0, r8
004a2884  03 90 a0 e1                                      mov sb, r3
004a2888  8c c0 8d e5                                      str ip, [sp, #0x8c]
004a288c  18 10 8d e5                                      str r1, [sp, #0x18]
004a2890  1c 20 8d e5                                      str r2, [sp, #0x1c]
004a2894  bc 40 9d e5                                      ldr r4, [sp, #0xbc]
004a2898  fa 53 fa eb                                      bl #0x337888
004a289c  a4 15 9f e5                                      ldr r1, [pc, #0x5a4]
004a28a0  74 a0 8d e2                                      add sl, sp, #0x74
004a28a4  70 20 8d e2                                      add r2, sp, #0x70
004a28a8  01 10 8f e0                                      add r1, pc, r1
004a28ac  0a 00 a0 e1                                      mov r0, sl
004a28b0  0d c6 f9 eb                                      bl #0x3140ec
004a28b4  08 00 a0 e1                                      mov r0, r8
004a28b8  0a 10 a0 e1                                      mov r1, sl
004a28bc  71 54 fa eb                                      bl #0x337a88
004a28c0  88 00 9d e5                                      ldr r0, [sp, #0x88]
004a28c4  0a 00 50 e1                                      cmp r0, sl
004a28c8  0c 00 00 0a                                      beq #0x4a2900
004a28cc  00 00 50 e3                                      cmp r0, #0
004a28d0  0a 00 00 0a                                      beq #0x4a2900
004a28d4  74 10 9d e5                                      ldr r1, [sp, #0x74]
004a28d8  01 10 60 e0                                      rsb r1, r0, r1
004a28dc  80 00 51 e3                                      cmp r1, #0x80
004a28e0  32 01 00 8a                                      bhi #0x4a2db0
004a28e4  85 99 09 eb                                      bl #0x708f00
004a28e8  10 20 95 e5                                      ldr r2, [r5, #0x10]
004a28ec  00 30 95 e5                                      ldr r3, [r5]
004a28f0  03 00 52 e1                                      cmp r2, r3
004a28f4  05 00 00 0a                                      beq #0x4a2910
004a28f8  05 00 a0 e1                                      mov r0, r5
004a28fc  85 b4 fb eb                                      bl #0x38fb18
004a2900  10 20 95 e5                                      ldr r2, [r5, #0x10]
004a2904  00 30 95 e5                                      ldr r3, [r5]
004a2908  03 00 52 e1                                      cmp r2, r3
004a290c  f9 ff ff 1a                                      bne #0x4a28f8
004a2910  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
004a2914  00 10 a0 e3                                      mov r1, #0
004a2918  e5 ae f9 eb                                      bl #0x30e4b4
004a291c  00 00 50 e3                                      cmp r0, #0
004a2920  08 00 00 1a                                      bne #0x4a2948
004a2924  20 35 9f e5                                      ldr r3, [pc, #0x520]
004a2928  03 30 96 e7                                      ldr r3, [r6, r3]
004a292c  00 30 93 e5                                      ldr r3, [r3]
004a2930  02 00 53 e3                                      cmp r3, #2
004a2934  00 30 a0 03                                      moveq r3, #0
004a2938  00 30 83 05                                      streq r3, [r3]
004a293c  01 00 00 0a                                      beq #0x4a2948
004a2940  01 00 53 e3                                      cmp r3, #1
004a2944  21 01 00 0a                                      beq #0x4a2dd0
004a2948  b8 00 9d e5                                      ldr r0, [sp, #0xb8]
004a294c  00 10 a0 e3                                      mov r1, #0
004a2950  d7 ae f9 eb                                      bl #0x30e4b4
004a2954  00 00 50 e3                                      cmp r0, #0
004a2958  08 00 00 1a                                      bne #0x4a2980
004a295c  e8 34 9f e5                                      ldr r3, [pc, #0x4e8]
004a2960  03 30 96 e7                                      ldr r3, [r6, r3]
004a2964  00 30 93 e5                                      ldr r3, [r3]
004a2968  02 00 53 e3                                      cmp r3, #2
004a296c  00 30 a0 03                                      moveq r3, #0
004a2970  00 30 83 05                                      streq r3, [r3]
004a2974  01 00 00 0a                                      beq #0x4a2980
004a2978  01 00 53 e3                                      cmp r3, #1
004a297c  20 01 00 0a                                      beq #0x4a2e04
004a2980  30 00 95 e5                                      ldr r0, [r5, #0x30]
004a2984  00 00 50 e3                                      cmp r0, #0
004a2988  00 10 a0 03                                      moveq r1, #0
004a298c  28 10 8d 05                                      streq r1, [sp, #0x28]
004a2990  02 00 00 0a                                      beq #0x4a29a0
004a2994  f2 0f 80 e2                                      add r0, r0, #0x3c8
004a2998  a5 c8 fc eb                                      bl #0x3d4c34
004a299c  28 00 8d e5                                      str r0, [sp, #0x28]
004a29a0  00 20 a0 e3                                      mov r2, #0
004a29a4  00 30 94 e5                                      ldr r3, [r4]
004a29a8  04 00 a0 e1                                      mov r0, r4
004a29ac  6c 20 8d e5                                      str r2, [sp, #0x6c]
004a29b0  64 20 8d e5                                      str r2, [sp, #0x64]
004a29b4  68 20 8d e5                                      str r2, [sp, #0x68]
004a29b8  0f e0 a0 e1                                      mov lr, pc
004a29bc  08 f0 93 e5                                      ldr pc, [r3, #8]
004a29c0  88 34 9f e5                                      ldr r3, [pc, #0x488]
004a29c4  58 10 8d e2                                      add r1, sp, #0x58
004a29c8  30 10 8d e5                                      str r1, [sp, #0x30]
004a29cc  2c 30 8d e5                                      str r3, [sp, #0x2c]
004a29d0  44 10 8d e2                                      add r1, sp, #0x44
004a29d4  64 30 8d e2                                      add r3, sp, #0x64
004a29d8  34 30 8d e5                                      str r3, [sp, #0x34]
004a29dc  38 10 8d e5                                      str r1, [sp, #0x38]
004a29e0  03 00 00 ea                                      b #0x4a29f4
004a29e4  00 30 94 e5                                      ldr r3, [r4]
004a29e8  04 00 a0 e1                                      mov r0, r4
004a29ec  0f e0 a0 e1                                      mov lr, pc
004a29f0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
004a29f4  00 30 94 e5                                      ldr r3, [r4]
004a29f8  04 00 a0 e1                                      mov r0, r4
004a29fc  0f e0 a0 e1                                      mov lr, pc
004a2a00  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004a2a04  00 00 50 e3                                      cmp r0, #0
004a2a08  e1 00 00 1a                                      bne #0x4a2d94
004a2a0c  00 30 94 e5                                      ldr r3, [r4]
004a2a10  04 00 a0 e1                                      mov r0, r4
004a2a14  0f e0 a0 e1                                      mov lr, pc
004a2a18  18 f0 93 e5                                      ldr pc, [r3, #0x18]
004a2a1c  00 30 94 e5                                      ldr r3, [r4]
004a2a20  00 80 a0 e1                                      mov r8, r0
004a2a24  04 00 a0 e1                                      mov r0, r4
004a2a28  0f e0 a0 e1                                      mov lr, pc
004a2a2c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
004a2a30  00 00 58 e3                                      cmp r8, #0
004a2a34  00 a0 a0 e1                                      mov sl, r0
004a2a38  e9 ff ff 0a                                      beq #0x4a29e4
004a2a3c  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
004a2a40  03 00 58 e1                                      cmp r8, r3
004a2a44  e6 ff ff 0a                                      beq #0x4a29e4
004a2a48  8a 30 d8 e5                                      ldrb r3, [r8, #0x8a]
004a2a4c  00 00 53 e3                                      cmp r3, #0
004a2a50  e3 ff ff 0a                                      beq #0x4a29e4
004a2a54  00 30 98 e5                                      ldr r3, [r8]
004a2a58  08 00 a0 e1                                      mov r0, r8
004a2a5c  0f e0 a0 e1                                      mov lr, pc
004a2a60  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
004a2a64  00 00 50 e3                                      cmp r0, #0
004a2a68  05 00 00 0a                                      beq #0x4a2a84
004a2a6c  ee 32 d8 e5                                      ldrb r3, [r8, #0x2ee]
004a2a70  00 00 53 e3                                      cmp r3, #0
004a2a74  02 00 00 0a                                      beq #0x4a2a84
004a2a78  f0 32 d8 e5                                      ldrb r3, [r8, #0x2f0]
004a2a7c  00 00 53 e3                                      cmp r3, #0
004a2a80  d7 ff ff 0a                                      beq #0x4a29e4
004a2a84  00 30 98 e5                                      ldr r3, [r8]
004a2a88  08 00 a0 e1                                      mov r0, r8
004a2a8c  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
004a2a90  0f e0 a0 e1                                      mov lr, pc
004a2a94  88 f0 93 e5                                      ldr pc, [r3, #0x88]
004a2a98  00 00 50 e3                                      cmp r0, #0
004a2a9c  d0 ff ff 0a                                      beq #0x4a29e4
004a2aa0  00 00 5a e3                                      cmp sl, #0
004a2aa4  c3 00 00 0a                                      beq #0x4a2db8
004a2aa8  05 00 a0 e1                                      mov r0, r5
004a2aac  0a 10 a0 e1                                      mov r1, sl
004a2ab0  00 fc ff eb                                      bl #0x4a1ab8
004a2ab4  00 00 50 e3                                      cmp r0, #0
004a2ab8  c9 ff ff 0a                                      beq #0x4a29e4
004a2abc  00 30 98 e5                                      ldr r3, [r8]
004a2ac0  08 00 a0 e1                                      mov r0, r8
004a2ac4  0f e0 a0 e1                                      mov lr, pc
004a2ac8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
004a2acc  3c 00 8d e5                                      str r0, [sp, #0x3c]
004a2ad0  08 00 a0 e1                                      mov r0, r8
004a2ad4  c0 c2 fb eb                                      bl #0x3935dc
004a2ad8  18 30 9d e5                                      ldr r3, [sp, #0x18]
004a2adc  00 b0 a0 e1                                      mov fp, r0
004a2ae0  00 00 90 e5                                      ldr r0, [r0]
004a2ae4  00 10 93 e5                                      ldr r1, [r3]
004a2ae8  2f ae f9 eb                                      bl #0x30e3ac
004a2aec  18 30 9d e5                                      ldr r3, [sp, #0x18]
004a2af0  20 00 8d e5                                      str r0, [sp, #0x20]
004a2af4  04 00 9b e5                                      ldr r0, [fp, #4]
004a2af8  04 10 93 e5                                      ldr r1, [r3, #4]
004a2afc  2a ae f9 eb                                      bl #0x30e3ac
004a2b00  18 30 9d e5                                      ldr r3, [sp, #0x18]
004a2b04  24 00 8d e5                                      str r0, [sp, #0x24]
004a2b08  08 00 9b e5                                      ldr r0, [fp, #8]
004a2b0c  08 10 93 e5                                      ldr r1, [r3, #8]
004a2b10  25 ae f9 eb                                      bl #0x30e3ac
004a2b14  24 30 9d e5                                      ldr r3, [sp, #0x24]
004a2b18  00 b0 a0 e1                                      mov fp, r0
004a2b1c  20 00 9d e5                                      ldr r0, [sp, #0x20]
004a2b20  00 10 99 e5                                      ldr r1, [sb]
004a2b24  68 30 8d e5                                      str r3, [sp, #0x68]
004a2b28  64 00 8d e5                                      str r0, [sp, #0x64]
004a2b2c  6c b0 8d e5                                      str fp, [sp, #0x6c]
004a2b30  8d b0 f9 eb                                      bl #0x30ed6c
004a2b34  04 10 99 e5                                      ldr r1, [sb, #4]
004a2b38  00 30 a0 e1                                      mov r3, r0
004a2b3c  24 00 9d e5                                      ldr r0, [sp, #0x24]
004a2b40  0c 30 8d e5                                      str r3, [sp, #0xc]
004a2b44  88 b0 f9 eb                                      bl #0x30ed6c
004a2b48  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004a2b4c  00 10 a0 e1                                      mov r1, r0
004a2b50  03 00 a0 e1                                      mov r0, r3
004a2b54  12 b0 f9 eb                                      bl #0x30eba4
004a2b58  08 10 99 e5                                      ldr r1, [sb, #8]
004a2b5c  00 30 a0 e1                                      mov r3, r0
004a2b60  0b 00 a0 e1                                      mov r0, fp
004a2b64  0c 30 8d e5                                      str r3, [sp, #0xc]
004a2b68  7f b0 f9 eb                                      bl #0x30ed6c
004a2b6c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004a2b70  00 10 a0 e1                                      mov r1, r0
004a2b74  03 00 a0 e1                                      mov r0, r3
004a2b78  09 b0 f9 eb                                      bl #0x30eba4
004a2b7c  00 10 a0 e3                                      mov r1, #0
004a2b80  e1 ae f9 eb                                      bl #0x30e70c
004a2b84  00 00 50 e3                                      cmp r0, #0
004a2b88  95 ff ff 1a                                      bne #0x4a29e4
004a2b8c  20 00 9d e5                                      ldr r0, [sp, #0x20]
004a2b90  00 10 a0 e1                                      mov r1, r0
004a2b94  74 b0 f9 eb                                      bl #0x30ed6c
004a2b98  00 30 a0 e1                                      mov r3, r0
004a2b9c  24 00 9d e5                                      ldr r0, [sp, #0x24]
004a2ba0  0c 30 8d e5                                      str r3, [sp, #0xc]
004a2ba4  00 10 a0 e1                                      mov r1, r0
004a2ba8  6f b0 f9 eb                                      bl #0x30ed6c
004a2bac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004a2bb0  00 10 a0 e1                                      mov r1, r0
004a2bb4  03 00 a0 e1                                      mov r0, r3
004a2bb8  f9 af f9 eb                                      bl #0x30eba4
004a2bbc  0b 10 a0 e1                                      mov r1, fp
004a2bc0  00 30 a0 e1                                      mov r3, r0
004a2bc4  0b 00 a0 e1                                      mov r0, fp
004a2bc8  0c 30 8d e5                                      str r3, [sp, #0xc]
004a2bcc  66 b0 f9 eb                                      bl #0x30ed6c
004a2bd0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004a2bd4  00 10 a0 e1                                      mov r1, r0
004a2bd8  03 00 a0 e1                                      mov r0, r3
004a2bdc  f0 af f9 eb                                      bl #0x30eba4
004a2be0  4f ad f9 eb                                      bl #0x30e124
004a2be4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
004a2be8  ef ad f9 eb                                      bl #0x30e3ac
004a2bec  28 10 9d e5                                      ldr r1, [sp, #0x28]
004a2bf0  ed ad f9 eb                                      bl #0x30e3ac
004a2bf4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
004a2bf8  20 00 8d e5                                      str r0, [sp, #0x20]
004a2bfc  bd ad f9 eb                                      bl #0x30e2f8
004a2c00  00 00 50 e3                                      cmp r0, #0
004a2c04  76 ff ff 1a                                      bne #0x4a29e4
004a2c08  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
004a2c0c  04 c0 99 e5                                      ldr ip, [sb, #4]
004a2c10  08 b0 99 e5                                      ldr fp, [sb, #8]
004a2c14  01 20 96 e7                                      ldr r2, [r6, r1]
004a2c18  0c 00 a0 e1                                      mov r0, ip
004a2c1c  08 30 92 e5                                      ldr r3, [r2, #8]
004a2c20  04 10 92 e5                                      ldr r1, [r2, #4]
004a2c24  00 20 92 e5                                      ldr r2, [r2]
004a2c28  10 c0 8d e5                                      str ip, [sp, #0x10]
004a2c2c  24 10 8d e5                                      str r1, [sp, #0x24]
004a2c30  03 10 a0 e1                                      mov r1, r3
004a2c34  0c 30 8d e5                                      str r3, [sp, #0xc]
004a2c38  3c 20 8d e5                                      str r2, [sp, #0x3c]
004a2c3c  4a b0 f9 eb                                      bl #0x30ed6c
004a2c40  24 10 9d e5                                      ldr r1, [sp, #0x24]
004a2c44  00 20 a0 e1                                      mov r2, r0
004a2c48  0b 00 a0 e1                                      mov r0, fp
004a2c4c  14 20 8d e5                                      str r2, [sp, #0x14]
004a2c50  45 b0 f9 eb                                      bl #0x30ed6c
004a2c54  14 20 9d e5                                      ldr r2, [sp, #0x14]
004a2c58  00 10 a0 e1                                      mov r1, r0
004a2c5c  02 00 a0 e1                                      mov r0, r2
004a2c60  d1 ad f9 eb                                      bl #0x30e3ac
004a2c64  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
004a2c68  58 00 8d e5                                      str r0, [sp, #0x58]
004a2c6c  0b 00 a0 e1                                      mov r0, fp
004a2c70  3d b0 f9 eb                                      bl #0x30ed6c
004a2c74  00 b0 99 e5                                      ldr fp, [sb]
004a2c78  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004a2c7c  00 20 a0 e1                                      mov r2, r0
004a2c80  0b 10 a0 e1                                      mov r1, fp
004a2c84  03 00 a0 e1                                      mov r0, r3
004a2c88  14 20 8d e5                                      str r2, [sp, #0x14]
004a2c8c  36 b0 f9 eb                                      bl #0x30ed6c
004a2c90  14 20 9d e5                                      ldr r2, [sp, #0x14]
004a2c94  00 10 a0 e1                                      mov r1, r0
004a2c98  02 00 a0 e1                                      mov r0, r2
004a2c9c  c2 ad f9 eb                                      bl #0x30e3ac
004a2ca0  0b 10 a0 e1                                      mov r1, fp
004a2ca4  5c 00 8d e5                                      str r0, [sp, #0x5c]
004a2ca8  24 00 9d e5                                      ldr r0, [sp, #0x24]
004a2cac  2e b0 f9 eb                                      bl #0x30ed6c
004a2cb0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
004a2cb4  00 b0 a0 e1                                      mov fp, r0
004a2cb8  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
004a2cbc  0c 00 a0 e1                                      mov r0, ip
004a2cc0  29 b0 f9 eb                                      bl #0x30ed6c
004a2cc4  00 10 a0 e1                                      mov r1, r0
004a2cc8  0b 00 a0 e1                                      mov r0, fp
004a2ccc  b6 ad f9 eb                                      bl #0x30e3ac
004a2cd0  60 00 8d e5                                      str r0, [sp, #0x60]
004a2cd4  30 00 9d e5                                      ldr r0, [sp, #0x30]
004a2cd8  f4 a8 fa eb                                      bl #0x34d0b0
004a2cdc  64 10 9d e5                                      ldr r1, [sp, #0x64]
004a2ce0  00 b0 a0 e1                                      mov fp, r0
004a2ce4  00 00 90 e5                                      ldr r0, [r0]
004a2ce8  1f b0 f9 eb                                      bl #0x30ed6c
004a2cec  68 10 9d e5                                      ldr r1, [sp, #0x68]
004a2cf0  00 30 a0 e1                                      mov r3, r0
004a2cf4  04 00 9b e5                                      ldr r0, [fp, #4]
004a2cf8  0c 30 8d e5                                      str r3, [sp, #0xc]
004a2cfc  1a b0 f9 eb                                      bl #0x30ed6c
004a2d00  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004a2d04  00 10 a0 e1                                      mov r1, r0
004a2d08  03 00 a0 e1                                      mov r0, r3
004a2d0c  a4 af f9 eb                                      bl #0x30eba4
004a2d10  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
004a2d14  00 30 a0 e1                                      mov r3, r0
004a2d18  08 00 9b e5                                      ldr r0, [fp, #8]
004a2d1c  0c 30 8d e5                                      str r3, [sp, #0xc]
004a2d20  11 b0 f9 eb                                      bl #0x30ed6c
004a2d24  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004a2d28  00 10 a0 e1                                      mov r1, r0
004a2d2c  03 00 a0 e1                                      mov r0, r3
004a2d30  9b af f9 eb                                      bl #0x30eba4
004a2d34  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
004a2d38  02 01 c0 e3                                      bic r0, r0, #0x80000000
004a2d3c  00 b0 a0 e1                                      mov fp, r0
004a2d40  6c ad f9 eb                                      bl #0x30e2f8
004a2d44  00 00 50 e3                                      cmp r0, #0
004a2d48  25 ff ff 1a                                      bne #0x4a29e4
004a2d4c  09 10 a0 e1                                      mov r1, sb
004a2d50  34 00 9d e5                                      ldr r0, [sp, #0x34]
004a2d54  bf c0 f9 eb                                      bl #0x313058
004a2d58  20 30 9d e5                                      ldr r3, [sp, #0x20]
004a2d5c  00 00 5a e3                                      cmp sl, #0
004a2d60  02 01 c0 e3                                      bic r0, r0, #0x80000000
004a2d64  00 10 a0 e3                                      mov r1, #0
004a2d68  50 10 8d e5                                      str r1, [sp, #0x50]
004a2d6c  48 30 8d e5                                      str r3, [sp, #0x48]
004a2d70  4c 00 8d e5                                      str r0, [sp, #0x4c]
004a2d74  01 30 a0 13                                      movne r3, #1
004a2d78  05 00 a0 e1                                      mov r0, r5
004a2d7c  38 10 9d e5                                      ldr r1, [sp, #0x38]
004a2d80  44 80 8d e5                                      str r8, [sp, #0x44]
004a2d84  54 b0 8d e5                                      str fp, [sp, #0x54]
004a2d88  50 30 8d 15                                      strne r3, [sp, #0x50]
004a2d8c  ab fd ff eb                                      bl #0x4a2440
004a2d90  13 ff ff ea                                      b #0x4a29e4
004a2d94  07 30 96 e7                                      ldr r3, [r6, r7]
004a2d98  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
004a2d9c  00 30 93 e5                                      ldr r3, [r3]
004a2da0  03 00 52 e1                                      cmp r2, r3
004a2da4  23 00 00 1a                                      bne #0x4a2e38
004a2da8  94 d0 8d e2                                      add sp, sp, #0x94
004a2dac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004a2db0  a2 b5 f9 eb                                      bl #0x310440
004a2db4  d1 fe ff ea                                      b #0x4a2900
004a2db8  05 00 a0 e1                                      mov r0, r5
004a2dbc  08 10 a0 e1                                      mov r1, r8
004a2dc0  e2 fa ff eb                                      bl #0x4a1950
004a2dc4  00 00 50 e3                                      cmp r0, #0
004a2dc8  05 ff ff 0a                                      beq #0x4a29e4
004a2dcc  3a ff ff ea                                      b #0x4a2abc
004a2dd0  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
004a2dd4  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
004a2dd8  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
004a2ddc  00 00 96 e7                                      ldr r0, [r6, r0]
004a2de0  78 30 9f e5                                      ldr r3, [pc, #0x78]
004a2de4  33 c1 00 e3                                      movw ip, #0x133
004a2de8  01 10 8f e0                                      add r1, pc, r1
004a2dec  02 20 8f e0                                      add r2, pc, r2
004a2df0  03 30 8f e0                                      add r3, pc, r3
004a2df4  a8 00 80 e2                                      add r0, r0, #0xa8
004a2df8  00 c0 8d e5                                      str ip, [sp]
004a2dfc  80 ac f9 eb                                      bl #0x30e004
004a2e00  d0 fe ff ea                                      b #0x4a2948
004a2e04  48 00 9f e5                                      ldr r0, [pc, #0x48]
004a2e08  54 10 9f e5                                      ldr r1, [pc, #0x54]
004a2e0c  54 20 9f e5                                      ldr r2, [pc, #0x54]
004a2e10  00 00 96 e7                                      ldr r0, [r6, r0]
004a2e14  50 30 9f e5                                      ldr r3, [pc, #0x50]
004a2e18  4d cf a0 e3                                      mov ip, #0x134
004a2e1c  01 10 8f e0                                      add r1, pc, r1
004a2e20  02 20 8f e0                                      add r2, pc, r2
004a2e24  03 30 8f e0                                      add r3, pc, r3
004a2e28  a8 00 80 e2                                      add r0, r0, #0xa8
004a2e2c  00 c0 8d e5                                      str ip, [sp]
004a2e30  73 ac f9 eb                                      bl #0x30e004
004a2e34  d1 fe ff ea                                      b #0x4a2980
004a2e38  34 ad f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004a2e3c  28 22 4f 00 ac 40 00 00 84 08 00 00 80 2d 43 00  .byte 0x28, 0x22, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x80, 0x2d, 0x43, 0x00
004a2e4c  c0 39 00 00 40 43 00 00 c0 19 00 00 f0 b5 41 00  .byte 0xc0, 0x39, 0x00, 0x00, 0x40, 0x43, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xf0, 0xb5, 0x41, 0x00
004a2e5c  54 28 43 00 68 28 43 00 bc b5 41 00 80 28 43 00  .byte 0x54, 0x28, 0x43, 0x00, 0x68, 0x28, 0x43, 0x00, 0xbc, 0xb5, 0x41, 0x00, 0x80, 0x28, 0x43, 0x00
004a2e6c  34 28 43 00                                      .byte 0x34, 0x28, 0x43, 0x00

; FUNCTION 0x004a2e70, declared_size=96, range_size=96, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList10SearchRectERK7Point3DIfEffRNS_11IObjectListE
; demangled: ObjectSearcher::TargetList::SearchRect(Point3D<float> const&, float, float, ObjectSearcher::IObjectList&)
; decoder-mode: arm
004a2e70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a2e74  18 d0 4d e2                                      sub sp, sp, #0x18
004a2e78  0c 40 8d e2                                      add r4, sp, #0xc
004a2e7c  00 c0 a0 e3                                      mov ip, #0
004a2e80  00 50 a0 e1                                      mov r5, r0
004a2e84  01 70 a0 e1                                      mov r7, r1
004a2e88  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
004a2e8c  04 10 a0 e1                                      mov r1, r4
004a2e90  03 60 a0 e1                                      mov r6, r3
004a2e94  02 80 a0 e1                                      mov r8, r2
004a2e98  14 c0 8d e5                                      str ip, [sp, #0x14]
004a2e9c  0c c0 8d e5                                      str ip, [sp, #0xc]
004a2ea0  10 c0 8d e5                                      str ip, [sp, #0x10]
004a2ea4  0e c3 fb eb                                      bl #0x393ae4
004a2ea8  30 c0 9d e5                                      ldr ip, [sp, #0x30]
004a2eac  05 00 a0 e1                                      mov r0, r5
004a2eb0  07 10 a0 e1                                      mov r1, r7
004a2eb4  08 20 a0 e1                                      mov r2, r8
004a2eb8  04 30 a0 e1                                      mov r3, r4
004a2ebc  00 60 8d e5                                      str r6, [sp]
004a2ec0  04 c0 8d e5                                      str ip, [sp, #4]
004a2ec4  63 fe ff eb                                      bl #0x4a2858
004a2ec8  18 d0 8d e2                                      add sp, sp, #0x18
004a2ecc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x004a2ed0, declared_size=100, range_size=100, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList10SearchRectEffRNS_11IObjectListE
; demangled: ObjectSearcher::TargetList::SearchRect(float, float, ObjectSearcher::IObjectList&)
; decoder-mode: arm
004a2ed0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a2ed4  18 d0 4d e2                                      sub sp, sp, #0x18
004a2ed8  0c 50 8d e2                                      add r5, sp, #0xc
004a2edc  00 c0 a0 e3                                      mov ip, #0
004a2ee0  00 40 a0 e1                                      mov r4, r0
004a2ee4  01 70 a0 e1                                      mov r7, r1
004a2ee8  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
004a2eec  05 10 a0 e1                                      mov r1, r5
004a2ef0  02 60 a0 e1                                      mov r6, r2
004a2ef4  03 80 a0 e1                                      mov r8, r3
004a2ef8  14 c0 8d e5                                      str ip, [sp, #0x14]
004a2efc  0c c0 8d e5                                      str ip, [sp, #0xc]
004a2f00  10 c0 8d e5                                      str ip, [sp, #0x10]
004a2f04  f6 c2 fb eb                                      bl #0x393ae4
004a2f08  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
004a2f0c  b2 c1 fb eb                                      bl #0x3935dc
004a2f10  07 20 a0 e1                                      mov r2, r7
004a2f14  00 10 a0 e1                                      mov r1, r0
004a2f18  05 30 a0 e1                                      mov r3, r5
004a2f1c  04 00 a0 e1                                      mov r0, r4
004a2f20  00 60 8d e5                                      str r6, [sp]
004a2f24  04 80 8d e5                                      str r8, [sp, #4]
004a2f28  4a fe ff eb                                      bl #0x4a2858
004a2f2c  18 d0 8d e2                                      add sp, sp, #0x18
004a2f30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x004a2f34, declared_size=1172, range_size=1172, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList6SearchERK7Point3DIfEfS4_fRNS_11IObjectListE
; demangled: ObjectSearcher::TargetList::Search(Point3D<float> const&, float, Point3D<float> const&, float, ObjectSearcher::IObjectList&)
; decoder-mode: arm
004a2f34  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004a2f38  58 64 9f e5                                      ldr r6, [pc, #0x458]
004a2f3c  58 74 9f e5                                      ldr r7, [pc, #0x458]
004a2f40  58 e4 9f e5                                      ldr lr, [pc, #0x458]
004a2f44  06 60 8f e0                                      add r6, pc, r6
004a2f48  07 c0 96 e7                                      ldr ip, [r6, r7]
004a2f4c  0e 80 96 e7                                      ldr r8, [r6, lr]
004a2f50  6c d0 4d e2                                      sub sp, sp, #0x6c
004a2f54  00 c0 9c e5                                      ldr ip, [ip]
004a2f58  00 50 a0 e1                                      mov r5, r0
004a2f5c  08 00 a0 e1                                      mov r0, r8
004a2f60  1c 30 8d e5                                      str r3, [sp, #0x1c]
004a2f64  64 c0 8d e5                                      str ip, [sp, #0x64]
004a2f68  01 90 a0 e1                                      mov sb, r1
004a2f6c  10 20 8d e5                                      str r2, [sp, #0x10]
004a2f70  94 40 9d e5                                      ldr r4, [sp, #0x94]
004a2f74  43 52 fa eb                                      bl #0x337888
004a2f78  24 14 9f e5                                      ldr r1, [pc, #0x424]
004a2f7c  4c a0 8d e2                                      add sl, sp, #0x4c
004a2f80  48 20 8d e2                                      add r2, sp, #0x48
004a2f84  01 10 8f e0                                      add r1, pc, r1
004a2f88  0a 00 a0 e1                                      mov r0, sl
004a2f8c  56 c4 f9 eb                                      bl #0x3140ec
004a2f90  08 00 a0 e1                                      mov r0, r8
004a2f94  0a 10 a0 e1                                      mov r1, sl
004a2f98  ba 52 fa eb                                      bl #0x337a88
004a2f9c  60 00 9d e5                                      ldr r0, [sp, #0x60]
004a2fa0  0a 00 50 e1                                      cmp r0, sl
004a2fa4  0c 00 00 0a                                      beq #0x4a2fdc
004a2fa8  00 00 50 e3                                      cmp r0, #0
004a2fac  0a 00 00 0a                                      beq #0x4a2fdc
004a2fb0  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
004a2fb4  01 10 60 e0                                      rsb r1, r0, r1
004a2fb8  80 00 51 e3                                      cmp r1, #0x80
004a2fbc  d2 00 00 8a                                      bhi #0x4a330c
004a2fc0  ce 97 09 eb                                      bl #0x708f00
004a2fc4  10 20 95 e5                                      ldr r2, [r5, #0x10]
004a2fc8  00 30 95 e5                                      ldr r3, [r5]
004a2fcc  03 00 52 e1                                      cmp r2, r3
004a2fd0  05 00 00 0a                                      beq #0x4a2fec
004a2fd4  05 00 a0 e1                                      mov r0, r5
004a2fd8  ce b2 fb eb                                      bl #0x38fb18
004a2fdc  10 20 95 e5                                      ldr r2, [r5, #0x10]
004a2fe0  00 30 95 e5                                      ldr r3, [r5]
004a2fe4  03 00 52 e1                                      cmp r2, r3
004a2fe8  f9 ff ff 1a                                      bne #0x4a2fd4
004a2fec  10 00 9d e5                                      ldr r0, [sp, #0x10]
004a2ff0  00 10 a0 e3                                      mov r1, #0
004a2ff4  2e ad f9 eb                                      bl #0x30e4b4
004a2ff8  00 00 50 e3                                      cmp r0, #0
004a2ffc  08 00 00 1a                                      bne #0x4a3024
004a3000  a0 33 9f e5                                      ldr r3, [pc, #0x3a0]
004a3004  03 30 96 e7                                      ldr r3, [r6, r3]
004a3008  00 30 93 e5                                      ldr r3, [r3]
004a300c  02 00 53 e3                                      cmp r3, #2
004a3010  00 30 a0 03                                      moveq r3, #0
004a3014  00 30 83 05                                      streq r3, [r3]
004a3018  01 00 00 0a                                      beq #0x4a3024
004a301c  01 00 53 e3                                      cmp r3, #1
004a3020  c1 00 00 0a                                      beq #0x4a332c
004a3024  90 00 9d e5                                      ldr r0, [sp, #0x90]
004a3028  00 10 a0 e3                                      mov r1, #0
004a302c  20 ad f9 eb                                      bl #0x30e4b4
004a3030  00 00 50 e3                                      cmp r0, #0
004a3034  08 00 00 1a                                      bne #0x4a305c
004a3038  68 33 9f e5                                      ldr r3, [pc, #0x368]
004a303c  03 30 96 e7                                      ldr r3, [r6, r3]
004a3040  00 30 93 e5                                      ldr r3, [r3]
004a3044  02 00 53 e3                                      cmp r3, #2
004a3048  00 30 a0 03                                      moveq r3, #0
004a304c  00 30 83 05                                      streq r3, [r3]
004a3050  01 00 00 0a                                      beq #0x4a305c
004a3054  01 00 53 e3                                      cmp r3, #1
004a3058  c0 00 00 0a                                      beq #0x4a3360
004a305c  30 00 95 e5                                      ldr r0, [r5, #0x30]
004a3060  00 00 50 e3                                      cmp r0, #0
004a3064  00 30 a0 03                                      moveq r3, #0
004a3068  18 30 8d 05                                      streq r3, [sp, #0x18]
004a306c  02 00 00 0a                                      beq #0x4a307c
004a3070  f2 0f 80 e2                                      add r0, r0, #0x3c8
004a3074  ee c6 fc eb                                      bl #0x3d4c34
004a3078  18 00 8d e5                                      str r0, [sp, #0x18]
004a307c  00 80 a0 e3                                      mov r8, #0
004a3080  00 30 94 e5                                      ldr r3, [r4]
004a3084  04 00 a0 e1                                      mov r0, r4
004a3088  3c 80 8d e5                                      str r8, [sp, #0x3c]
004a308c  40 80 8d e5                                      str r8, [sp, #0x40]
004a3090  44 80 8d e5                                      str r8, [sp, #0x44]
004a3094  0f e0 a0 e1                                      mov lr, pc
004a3098  08 f0 93 e5                                      ldr pc, [r3, #8]
004a309c  3c 30 8d e2                                      add r3, sp, #0x3c
004a30a0  20 30 8d e5                                      str r3, [sp, #0x20]
004a30a4  28 30 8d e2                                      add r3, sp, #0x28
004a30a8  24 30 8d e5                                      str r3, [sp, #0x24]
004a30ac  03 00 00 ea                                      b #0x4a30c0
004a30b0  00 30 94 e5                                      ldr r3, [r4]
004a30b4  04 00 a0 e1                                      mov r0, r4
004a30b8  0f e0 a0 e1                                      mov lr, pc
004a30bc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
004a30c0  00 30 94 e5                                      ldr r3, [r4]
004a30c4  04 00 a0 e1                                      mov r0, r4
004a30c8  0f e0 a0 e1                                      mov lr, pc
004a30cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004a30d0  00 00 50 e3                                      cmp r0, #0
004a30d4  85 00 00 1a                                      bne #0x4a32f0
004a30d8  00 30 94 e5                                      ldr r3, [r4]
004a30dc  04 00 a0 e1                                      mov r0, r4
004a30e0  0f e0 a0 e1                                      mov lr, pc
004a30e4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
004a30e8  00 30 94 e5                                      ldr r3, [r4]
004a30ec  00 80 a0 e1                                      mov r8, r0
004a30f0  04 00 a0 e1                                      mov r0, r4
004a30f4  0f e0 a0 e1                                      mov lr, pc
004a30f8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
004a30fc  00 00 58 e3                                      cmp r8, #0
004a3100  00 a0 a0 e1                                      mov sl, r0
004a3104  e9 ff ff 0a                                      beq #0x4a30b0
004a3108  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
004a310c  03 00 58 e1                                      cmp r8, r3
004a3110  e6 ff ff 0a                                      beq #0x4a30b0
004a3114  8a 30 d8 e5                                      ldrb r3, [r8, #0x8a]
004a3118  00 00 53 e3                                      cmp r3, #0
004a311c  e3 ff ff 0a                                      beq #0x4a30b0
004a3120  00 30 98 e5                                      ldr r3, [r8]
004a3124  08 00 a0 e1                                      mov r0, r8
004a3128  0f e0 a0 e1                                      mov lr, pc
004a312c  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
004a3130  00 00 50 e3                                      cmp r0, #0
004a3134  05 00 00 0a                                      beq #0x4a3150
004a3138  ee 32 d8 e5                                      ldrb r3, [r8, #0x2ee]
004a313c  00 00 53 e3                                      cmp r3, #0
004a3140  02 00 00 0a                                      beq #0x4a3150
004a3144  f0 32 d8 e5                                      ldrb r3, [r8, #0x2f0]
004a3148  00 00 53 e3                                      cmp r3, #0
004a314c  d7 ff ff 0a                                      beq #0x4a30b0
004a3150  00 30 98 e5                                      ldr r3, [r8]
004a3154  08 00 a0 e1                                      mov r0, r8
004a3158  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
004a315c  0f e0 a0 e1                                      mov lr, pc
004a3160  88 f0 93 e5                                      ldr pc, [r3, #0x88]
004a3164  00 00 50 e3                                      cmp r0, #0
004a3168  d0 ff ff 0a                                      beq #0x4a30b0
004a316c  00 00 5a e3                                      cmp sl, #0
004a3170  67 00 00 0a                                      beq #0x4a3314
004a3174  05 00 a0 e1                                      mov r0, r5
004a3178  0a 10 a0 e1                                      mov r1, sl
004a317c  4d fa ff eb                                      bl #0x4a1ab8
004a3180  00 00 50 e3                                      cmp r0, #0
004a3184  c9 ff ff 0a                                      beq #0x4a30b0
004a3188  00 30 98 e5                                      ldr r3, [r8]
004a318c  08 00 a0 e1                                      mov r0, r8
004a3190  0f e0 a0 e1                                      mov lr, pc
004a3194  94 f0 93 e5                                      ldr pc, [r3, #0x94]
004a3198  00 20 a0 e1                                      mov r2, r0
004a319c  08 00 a0 e1                                      mov r0, r8
004a31a0  08 20 8d e5                                      str r2, [sp, #8]
004a31a4  0c c1 fb eb                                      bl #0x3935dc
004a31a8  00 10 99 e5                                      ldr r1, [sb]
004a31ac  00 b0 a0 e1                                      mov fp, r0
004a31b0  00 00 90 e5                                      ldr r0, [r0]
004a31b4  7c ac f9 eb                                      bl #0x30e3ac
004a31b8  04 10 99 e5                                      ldr r1, [sb, #4]
004a31bc  00 30 a0 e1                                      mov r3, r0
004a31c0  04 00 9b e5                                      ldr r0, [fp, #4]
004a31c4  0c 30 8d e5                                      str r3, [sp, #0xc]
004a31c8  77 ac f9 eb                                      bl #0x30e3ac
004a31cc  14 00 8d e5                                      str r0, [sp, #0x14]
004a31d0  08 00 9b e5                                      ldr r0, [fp, #8]
004a31d4  08 10 99 e5                                      ldr r1, [sb, #8]
004a31d8  73 ac f9 eb                                      bl #0x30e3ac
004a31dc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004a31e0  00 b0 a0 e1                                      mov fp, r0
004a31e4  44 b0 8d e5                                      str fp, [sp, #0x44]
004a31e8  03 10 a0 e1                                      mov r1, r3
004a31ec  03 00 a0 e1                                      mov r0, r3
004a31f0  3c 30 8d e5                                      str r3, [sp, #0x3c]
004a31f4  14 30 9d e5                                      ldr r3, [sp, #0x14]
004a31f8  40 30 8d e5                                      str r3, [sp, #0x40]
004a31fc  da ae f9 eb                                      bl #0x30ed6c
004a3200  00 30 a0 e1                                      mov r3, r0
004a3204  14 00 9d e5                                      ldr r0, [sp, #0x14]
004a3208  0c 30 8d e5                                      str r3, [sp, #0xc]
004a320c  00 10 a0 e1                                      mov r1, r0
004a3210  d5 ae f9 eb                                      bl #0x30ed6c
004a3214  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004a3218  00 10 a0 e1                                      mov r1, r0
004a321c  03 00 a0 e1                                      mov r0, r3
004a3220  5f ae f9 eb                                      bl #0x30eba4
004a3224  0b 10 a0 e1                                      mov r1, fp
004a3228  00 30 a0 e1                                      mov r3, r0
004a322c  0b 00 a0 e1                                      mov r0, fp
004a3230  0c 30 8d e5                                      str r3, [sp, #0xc]
004a3234  cc ae f9 eb                                      bl #0x30ed6c
004a3238  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004a323c  00 10 a0 e1                                      mov r1, r0
004a3240  03 00 a0 e1                                      mov r0, r3
004a3244  56 ae f9 eb                                      bl #0x30eba4
004a3248  b5 ab f9 eb                                      bl #0x30e124
004a324c  08 20 9d e5                                      ldr r2, [sp, #8]
004a3250  02 10 a0 e1                                      mov r1, r2
004a3254  54 ac f9 eb                                      bl #0x30e3ac
004a3258  18 10 9d e5                                      ldr r1, [sp, #0x18]
004a325c  52 ac f9 eb                                      bl #0x30e3ac
004a3260  10 10 9d e5                                      ldr r1, [sp, #0x10]
004a3264  14 00 8d e5                                      str r0, [sp, #0x14]
004a3268  22 ac f9 eb                                      bl #0x30e2f8
004a326c  00 00 50 e3                                      cmp r0, #0
004a3270  8e ff ff 1a                                      bne #0x4a30b0
004a3274  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
004a3278  20 00 9d e5                                      ldr r0, [sp, #0x20]
004a327c  75 bf f9 eb                                      bl #0x313058
004a3280  db 1f 00 e3                                      movw r1, #0xfdb
004a3284  02 01 c0 e3                                      bic r0, r0, #0x80000000
004a3288  00 b0 a0 e1                                      mov fp, r0
004a328c  49 10 44 e3                                      movt r1, #0x4049
004a3290  90 00 9d e5                                      ldr r0, [sp, #0x90]
004a3294  1c ad f9 eb                                      bl #0x30e70c
004a3298  00 00 50 e3                                      cmp r0, #0
004a329c  04 00 00 0a                                      beq #0x4a32b4
004a32a0  90 00 9d e5                                      ldr r0, [sp, #0x90]
004a32a4  0b 10 a0 e1                                      mov r1, fp
004a32a8  17 ad f9 eb                                      bl #0x30e70c
004a32ac  00 00 50 e3                                      cmp r0, #0
004a32b0  7e ff ff 1a                                      bne #0x4a30b0
004a32b4  14 30 9d e5                                      ldr r3, [sp, #0x14]
004a32b8  00 00 5a e3                                      cmp sl, #0
004a32bc  05 00 a0 e1                                      mov r0, r5
004a32c0  2c 30 8d e5                                      str r3, [sp, #0x2c]
004a32c4  00 30 a0 e3                                      mov r3, #0
004a32c8  34 30 8d e5                                      str r3, [sp, #0x34]
004a32cc  00 30 a0 e3                                      mov r3, #0
004a32d0  38 30 8d e5                                      str r3, [sp, #0x38]
004a32d4  24 10 9d e5                                      ldr r1, [sp, #0x24]
004a32d8  01 30 a0 13                                      movne r3, #1
004a32dc  28 80 8d e5                                      str r8, [sp, #0x28]
004a32e0  30 b0 8d e5                                      str fp, [sp, #0x30]
004a32e4  34 30 8d 15                                      strne r3, [sp, #0x34]
004a32e8  54 fc ff eb                                      bl #0x4a2440
004a32ec  6f ff ff ea                                      b #0x4a30b0
004a32f0  07 30 96 e7                                      ldr r3, [r6, r7]
004a32f4  64 20 9d e5                                      ldr r2, [sp, #0x64]
004a32f8  00 30 93 e5                                      ldr r3, [r3]
004a32fc  03 00 52 e1                                      cmp r2, r3
004a3300  23 00 00 1a                                      bne #0x4a3394
004a3304  6c d0 8d e2                                      add sp, sp, #0x6c
004a3308  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004a330c  4b b4 f9 eb                                      bl #0x310440
004a3310  31 ff ff ea                                      b #0x4a2fdc
004a3314  05 00 a0 e1                                      mov r0, r5
004a3318  08 10 a0 e1                                      mov r1, r8
004a331c  8b f9 ff eb                                      bl #0x4a1950
004a3320  00 00 50 e3                                      cmp r0, #0
004a3324  61 ff ff 0a                                      beq #0x4a30b0
004a3328  96 ff ff ea                                      b #0x4a3188
004a332c  78 00 9f e5                                      ldr r0, [pc, #0x78]
004a3330  78 10 9f e5                                      ldr r1, [pc, #0x78]
004a3334  78 20 9f e5                                      ldr r2, [pc, #0x78]
004a3338  00 00 96 e7                                      ldr r0, [r6, r0]
004a333c  74 30 9f e5                                      ldr r3, [pc, #0x74]
004a3340  cc c0 a0 e3                                      mov ip, #0xcc
004a3344  01 10 8f e0                                      add r1, pc, r1
004a3348  02 20 8f e0                                      add r2, pc, r2
004a334c  03 30 8f e0                                      add r3, pc, r3
004a3350  a8 00 80 e2                                      add r0, r0, #0xa8
004a3354  00 c0 8d e5                                      str ip, [sp]
004a3358  29 ab f9 eb                                      bl #0x30e004
004a335c  30 ff ff ea                                      b #0x4a3024
004a3360  44 00 9f e5                                      ldr r0, [pc, #0x44]
004a3364  50 10 9f e5                                      ldr r1, [pc, #0x50]
004a3368  50 20 9f e5                                      ldr r2, [pc, #0x50]
004a336c  00 00 96 e7                                      ldr r0, [r6, r0]
004a3370  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004a3374  cd c0 a0 e3                                      mov ip, #0xcd
004a3378  01 10 8f e0                                      add r1, pc, r1
004a337c  02 20 8f e0                                      add r2, pc, r2
004a3380  03 30 8f e0                                      add r3, pc, r3
004a3384  a8 00 80 e2                                      add r0, r0, #0xa8
004a3388  00 c0 8d e5                                      str ip, [sp]
004a338c  1c ab f9 eb                                      bl #0x30e004
004a3390  31 ff ff ea                                      b #0x4a305c
004a3394  dd ab f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004a3398  4c 1b 4f 00 ac 40 00 00 84 08 00 00 a4 26 43 00  .byte 0x4c, 0x1b, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xa4, 0x26, 0x43, 0x00
004a33a8  c0 39 00 00 c0 19 00 00 94 b0 41 00 f8 22 43 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x94, 0xb0, 0x41, 0x00, 0xf8, 0x22, 0x43, 0x00
004a33b8  0c 23 43 00 60 b0 41 00 3c 23 43 00 d8 22 43 00  .byte 0x0c, 0x23, 0x43, 0x00, 0x60, 0xb0, 0x41, 0x00, 0x3c, 0x23, 0x43, 0x00, 0xd8, 0x22, 0x43, 0x00

; FUNCTION 0x004a33c8, declared_size=96, range_size=96, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList6SearchERK7Point3DIfEffRNS_11IObjectListE
; demangled: ObjectSearcher::TargetList::Search(Point3D<float> const&, float, float, ObjectSearcher::IObjectList&)
; decoder-mode: arm
004a33c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a33cc  18 d0 4d e2                                      sub sp, sp, #0x18
004a33d0  0c 40 8d e2                                      add r4, sp, #0xc
004a33d4  00 c0 a0 e3                                      mov ip, #0
004a33d8  00 50 a0 e1                                      mov r5, r0
004a33dc  01 70 a0 e1                                      mov r7, r1
004a33e0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
004a33e4  04 10 a0 e1                                      mov r1, r4
004a33e8  03 60 a0 e1                                      mov r6, r3
004a33ec  02 80 a0 e1                                      mov r8, r2
004a33f0  14 c0 8d e5                                      str ip, [sp, #0x14]
004a33f4  0c c0 8d e5                                      str ip, [sp, #0xc]
004a33f8  10 c0 8d e5                                      str ip, [sp, #0x10]
004a33fc  b8 c1 fb eb                                      bl #0x393ae4
004a3400  30 c0 9d e5                                      ldr ip, [sp, #0x30]
004a3404  05 00 a0 e1                                      mov r0, r5
004a3408  07 10 a0 e1                                      mov r1, r7
004a340c  08 20 a0 e1                                      mov r2, r8
004a3410  04 30 a0 e1                                      mov r3, r4
004a3414  00 60 8d e5                                      str r6, [sp]
004a3418  04 c0 8d e5                                      str ip, [sp, #4]
004a341c  c4 fe ff eb                                      bl #0x4a2f34
004a3420  18 d0 8d e2                                      add sp, sp, #0x18
004a3424  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x004a3428, declared_size=100, range_size=100, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList6SearchEffRNS_11IObjectListE
; demangled: ObjectSearcher::TargetList::Search(float, float, ObjectSearcher::IObjectList&)
; decoder-mode: arm
004a3428  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a342c  18 d0 4d e2                                      sub sp, sp, #0x18
004a3430  0c 50 8d e2                                      add r5, sp, #0xc
004a3434  00 c0 a0 e3                                      mov ip, #0
004a3438  00 40 a0 e1                                      mov r4, r0
004a343c  01 70 a0 e1                                      mov r7, r1
004a3440  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
004a3444  05 10 a0 e1                                      mov r1, r5
004a3448  02 60 a0 e1                                      mov r6, r2
004a344c  03 80 a0 e1                                      mov r8, r3
004a3450  14 c0 8d e5                                      str ip, [sp, #0x14]
004a3454  0c c0 8d e5                                      str ip, [sp, #0xc]
004a3458  10 c0 8d e5                                      str ip, [sp, #0x10]
004a345c  a0 c1 fb eb                                      bl #0x393ae4
004a3460  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
004a3464  5c c0 fb eb                                      bl #0x3935dc
004a3468  07 20 a0 e1                                      mov r2, r7
004a346c  00 10 a0 e1                                      mov r1, r0
004a3470  05 30 a0 e1                                      mov r3, r5
004a3474  04 00 a0 e1                                      mov r0, r4
004a3478  00 60 8d e5                                      str r6, [sp]
004a347c  04 80 8d e5                                      str r8, [sp, #4]
004a3480  ab fe ff eb                                      bl #0x4a2f34
004a3484  18 d0 8d e2                                      add sp, sp, #0x18
004a3488  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x004a348c, declared_size=296, range_size=296, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetListC2EP10GameObjectiii
; demangled: ObjectSearcher::TargetList::TargetList(GameObject*, int, int, int)
; decoder-mode: arm
004a348c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
004a3490  0c 61 9f e5                                      ldr r6, [pc, #0x10c]
004a3494  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
004a3498  00 50 a0 e3                                      mov r5, #0
004a349c  06 60 8f e0                                      add r6, pc, r6
004a34a0  00 50 80 e5                                      str r5, [r0]
004a34a4  04 50 80 e5                                      str r5, [r0, #4]
004a34a8  08 50 80 e5                                      str r5, [r0, #8]
004a34ac  0c 50 80 e5                                      str r5, [r0, #0xc]
004a34b0  10 50 80 e5                                      str r5, [r0, #0x10]
004a34b4  14 50 80 e5                                      str r5, [r0, #0x14]
004a34b8  18 50 80 e5                                      str r5, [r0, #0x18]
004a34bc  1c 50 80 e5                                      str r5, [r0, #0x1c]
004a34c0  20 50 80 e5                                      str r5, [r0, #0x20]
004a34c4  24 50 80 e5                                      str r5, [r0, #0x24]
004a34c8  00 40 a0 e1                                      mov r4, r0
004a34cc  02 80 a0 e1                                      mov r8, r2
004a34d0  03 a0 a0 e1                                      mov sl, r3
004a34d4  01 b0 a0 e1                                      mov fp, r1
004a34d8  28 90 9d e5                                      ldr sb, [sp, #0x28]
004a34dc  57 fb ff eb                                      bl #0x4a2240
004a34e0  07 20 96 e7                                      ldr r2, [r6, r7]
004a34e4  04 30 a0 e1                                      mov r3, r4
004a34e8  34 80 84 e5                                      str r8, [r4, #0x34]
004a34ec  28 20 84 e5                                      str r2, [r4, #0x28]
004a34f0  38 a0 84 e5                                      str sl, [r4, #0x38]
004a34f4  2c 50 84 e5                                      str r5, [r4, #0x2c]
004a34f8  30 50 84 e5                                      str r5, [r4, #0x30]
004a34fc  40 50 84 e5                                      str r5, [r4, #0x40]
004a3500  3c 50 e3 e5                                      strb r5, [r3, #0x3c]!
004a3504  10 10 94 e5                                      ldr r1, [r4, #0x10]
004a3508  00 20 94 e5                                      ldr r2, [r4]
004a350c  48 30 84 e5                                      str r3, [r4, #0x48]
004a3510  4c 50 84 e5                                      str r5, [r4, #0x4c]
004a3514  02 00 51 e1                                      cmp r1, r2
004a3518  44 30 84 e5                                      str r3, [r4, #0x44]
004a351c  05 00 00 0a                                      beq #0x4a3538
004a3520  04 00 a0 e1                                      mov r0, r4
004a3524  7b b1 fb eb                                      bl #0x38fb18
004a3528  10 20 94 e5                                      ldr r2, [r4, #0x10]
004a352c  00 30 94 e5                                      ldr r3, [r4]
004a3530  03 00 52 e1                                      cmp r2, r3
004a3534  f9 ff ff 1a                                      bne #0x4a3520
004a3538  01 00 59 e3                                      cmp sb, #1
004a353c  08 00 00 0a                                      beq #0x4a3564
004a3540  02 00 59 e3                                      cmp sb, #2
004a3544  0e 00 00 0a                                      beq #0x4a3584
004a3548  07 30 96 e7                                      ldr r3, [r6, r7]
004a354c  04 00 a0 e1                                      mov r0, r4
004a3550  0b 10 a0 e1                                      mov r1, fp
004a3554  28 30 84 e5                                      str r3, [r4, #0x28]
004a3558  ef f8 ff eb                                      bl #0x4a191c
004a355c  04 00 a0 e1                                      mov r0, r4
004a3560  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
004a3564  40 30 9f e5                                      ldr r3, [pc, #0x40]
004a3568  04 00 a0 e1                                      mov r0, r4
004a356c  0b 10 a0 e1                                      mov r1, fp
004a3570  03 30 96 e7                                      ldr r3, [r6, r3]
004a3574  28 30 84 e5                                      str r3, [r4, #0x28]
004a3578  e7 f8 ff eb                                      bl #0x4a191c
004a357c  04 00 a0 e1                                      mov r0, r4
004a3580  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
004a3584  24 30 9f e5                                      ldr r3, [pc, #0x24]
004a3588  04 00 a0 e1                                      mov r0, r4
004a358c  0b 10 a0 e1                                      mov r1, fp
004a3590  03 30 96 e7                                      ldr r3, [r6, r3]
004a3594  28 30 84 e5                                      str r3, [r4, #0x28]
004a3598  df f8 ff eb                                      bl #0x4a191c
004a359c  04 00 a0 e1                                      mov r0, r4
004a35a0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
004a35a4  f4 15 4f 00 74 2c 00 00 c4 4a 00 00 d4 1f 00 00  .byte 0xf4, 0x15, 0x4f, 0x00, 0x74, 0x2c, 0x00, 0x00, 0xc4, 0x4a, 0x00, 0x00, 0xd4, 0x1f, 0x00, 0x00

; FUNCTION 0x004a35b4, declared_size=220, range_size=220, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList6ResortEi
; demangled: ObjectSearcher::TargetList::Resort(int)
; decoder-mode: arm
004a35b4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004a35b8  10 c0 90 e5                                      ldr ip, [r0, #0x10]
004a35bc  00 e0 90 e5                                      ldr lr, [r0]
004a35c0  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
004a35c4  28 d0 4d e2                                      sub sp, sp, #0x28
004a35c8  0e 00 5c e1                                      cmp ip, lr
004a35cc  00 40 a0 e1                                      mov r4, r0
004a35d0  01 60 a0 e1                                      mov r6, r1
004a35d4  05 50 8f e0                                      add r5, pc, r5
004a35d8  05 00 00 0a                                      beq #0x4a35f4
004a35dc  04 00 a0 e1                                      mov r0, r4
004a35e0  4c b1 fb eb                                      bl #0x38fb18
004a35e4  10 c0 94 e5                                      ldr ip, [r4, #0x10]
004a35e8  00 e0 94 e5                                      ldr lr, [r4]
004a35ec  0e 00 5c e1                                      cmp ip, lr
004a35f0  f9 ff ff 1a                                      bne #0x4a35dc
004a35f4  01 00 56 e3                                      cmp r6, #1
004a35f8  18 00 00 0a                                      beq #0x4a3660
004a35fc  02 00 56 e3                                      cmp r6, #2
004a3600  1a 00 00 0a                                      beq #0x4a3670
004a3604  78 30 9f e5                                      ldr r3, [pc, #0x78]
004a3608  03 20 95 e7                                      ldr r2, [r5, r3]
004a360c  28 20 84 e5                                      str r2, [r4, #0x28]
004a3610  e0 00 94 e9                                      ldmib r4, {r5, r6, r7}
004a3614  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
004a3618  18 a0 94 e5                                      ldr sl, [r4, #0x18]
004a361c  14 90 94 e5                                      ldr sb, [r4, #0x14]
004a3620  00 40 a0 e3                                      mov r4, #0
004a3624  04 30 a0 e1                                      mov r3, r4
004a3628  08 00 8d e2                                      add r0, sp, #8
004a362c  18 10 8d e2                                      add r1, sp, #0x18
004a3630  14 70 8d e5                                      str r7, [sp, #0x14]
004a3634  10 60 8d e5                                      str r6, [sp, #0x10]
004a3638  0c 50 8d e5                                      str r5, [sp, #0xc]
004a363c  08 e0 8d e5                                      str lr, [sp, #8]
004a3640  24 80 8d e5                                      str r8, [sp, #0x24]
004a3644  20 a0 8d e5                                      str sl, [sp, #0x20]
004a3648  1c 90 8d e5                                      str sb, [sp, #0x1c]
004a364c  18 c0 8d e5                                      str ip, [sp, #0x18]
004a3650  00 40 8d e5                                      str r4, [sp]
004a3654  fe fb ff eb                                      bl #0x4a2654
004a3658  28 d0 8d e2                                      add sp, sp, #0x28
004a365c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004a3660  20 30 9f e5                                      ldr r3, [pc, #0x20]
004a3664  03 20 95 e7                                      ldr r2, [r5, r3]
004a3668  28 20 84 e5                                      str r2, [r4, #0x28]
004a366c  e7 ff ff ea                                      b #0x4a3610
004a3670  14 30 9f e5                                      ldr r3, [pc, #0x14]
004a3674  03 20 95 e7                                      ldr r2, [r5, r3]
004a3678  28 20 84 e5                                      str r2, [r4, #0x28]
004a367c  e3 ff ff ea                                      b #0x4a3610
; mapping-symbol data/literal pool
004a3680  bc 14 4f 00 74 2c 00 00 c4 4a 00 00 d4 1f 00 00  .byte 0xbc, 0x14, 0x4f, 0x00, 0x74, 0x2c, 0x00, 0x00, 0xc4, 0x4a, 0x00, 0x00, 0xd4, 0x1f, 0x00, 0x00

; FUNCTION 0x004a36b0, declared_size=288, range_size=288, mode=arm
; class-group: ObjectSearcher::TargetList
; alias: _ZN14ObjectSearcher10TargetList13BackupResultsEPKc
; demangled: ObjectSearcher::TargetList::BackupResults(char const*)
; decoder-mode: arm
004a36b0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004a36b4  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
004a36b8  24 d0 4d e2                                      sub sp, sp, #0x24
004a36bc  00 20 51 e2                                      subs r2, r1, #0
004a36c0  0c 10 8d e5                                      str r1, [sp, #0xc]
004a36c4  00 80 a0 e1                                      mov r8, r0
004a36c8  03 30 8f e0                                      add r3, pc, r3
004a36cc  24 00 00 0a                                      beq #0x4a3764
004a36d0  0c 10 8d e2                                      add r1, sp, #0xc
004a36d4  3c 00 88 e2                                      add r0, r8, #0x3c
004a36d8  97 af fb eb                                      bl #0x38f53c
004a36dc  00 40 98 e5                                      ldr r4, [r8]
004a36e0  00 50 a0 e1                                      mov r5, r0
004a36e4  10 70 98 e5                                      ldr r7, [r8, #0x10]
004a36e8  0c a0 98 e5                                      ldr sl, [r8, #0xc]
004a36ec  08 60 98 e5                                      ldr r6, [r8, #8]
004a36f0  c0 f8 ff eb                                      bl #0x4a19f8
004a36f4  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
004a36f8  10 c0 8d e2                                      add ip, sp, #0x10
004a36fc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004a3700  0c 10 a0 e1                                      mov r1, ip
004a3704  10 00 88 e2                                      add r0, r8, #0x10
004a3708  c0 a7 fb eb                                      bl #0x38d610
004a370c  00 10 a0 e1                                      mov r1, r0
004a3710  04 00 85 e2                                      add r0, r5, #4
004a3714  42 fa ff eb                                      bl #0x4a2024
004a3718  04 00 57 e1                                      cmp r7, r4
004a371c  02 00 00 1a                                      bne #0x4a372c
004a3720  0a 00 00 ea                                      b #0x4a3750
004a3724  07 00 54 e1                                      cmp r4, r7
004a3728  08 00 00 0a                                      beq #0x4a3750
004a372c  14 10 94 e4                                      ldr r1, [r4], #0x14
004a3730  05 00 a0 e1                                      mov r0, r5
004a3734  6d fa ff eb                                      bl #0x4a20f0
004a3738  06 00 54 e1                                      cmp r4, r6
004a373c  f8 ff ff 1a                                      bne #0x4a3724
004a3740  04 40 ba e5                                      ldr r4, [sl, #4]!
004a3744  04 00 57 e1                                      cmp r7, r4
004a3748  78 60 84 e2                                      add r6, r4, #0x78
004a374c  f6 ff ff 1a                                      bne #0x4a372c
004a3750  0c 00 95 e9                                      ldmib r5, {r2, r3}
004a3754  10 20 85 e5                                      str r2, [r5, #0x10]
004a3758  14 30 85 e5                                      str r3, [r5, #0x14]
004a375c  24 d0 8d e2                                      add sp, sp, #0x24
004a3760  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004a3764  50 10 9f e5                                      ldr r1, [pc, #0x50]
004a3768  01 10 93 e7                                      ldr r1, [r3, r1]
004a376c  00 10 91 e5                                      ldr r1, [r1]
004a3770  02 00 51 e3                                      cmp r1, #2
004a3774  00 20 82 05                                      streq r2, [r2]
004a3778  d4 ff ff 0a                                      beq #0x4a36d0
004a377c  01 00 51 e3                                      cmp r1, #1
004a3780  d2 ff ff 1a                                      bne #0x4a36d0
004a3784  34 00 9f e5                                      ldr r0, [pc, #0x34]
004a3788  34 10 9f e5                                      ldr r1, [pc, #0x34]
004a378c  34 20 9f e5                                      ldr r2, [pc, #0x34]
004a3790  00 00 93 e7                                      ldr r0, [r3, r0]
004a3794  30 30 9f e5                                      ldr r3, [pc, #0x30]
004a3798  95 c1 00 e3                                      movw ip, #0x195
004a379c  01 10 8f e0                                      add r1, pc, r1
004a37a0  02 20 8f e0                                      add r2, pc, r2
004a37a4  03 30 8f e0                                      add r3, pc, r3
004a37a8  a8 00 80 e2                                      add r0, r0, #0xa8
004a37ac  00 c0 8d e5                                      str ip, [sp]
004a37b0  13 aa f9 eb                                      bl #0x30e004
004a37b4  c5 ff ff ea                                      b #0x4a36d0
; mapping-symbol data/literal pool
004a37b8  c8 13 4f 00 c0 39 00 00 c0 19 00 00 3c ac 41 00  .byte 0xc8, 0x13, 0x4f, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x3c, 0xac, 0x41, 0x00
004a37c8  b0 f3 41 00 b4 1e 43 00                          .byte 0xb0, 0xf3, 0x41, 0x00, 0xb4, 0x1e, 0x43, 0x00

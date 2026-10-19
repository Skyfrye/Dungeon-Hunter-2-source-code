; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00576dc0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::CUnZipReader
; alias: _ZN6glitch2io12CUnZipReader14buildDirectoryEv
; demangled: glitch::io::CUnZipReader::buildDirectory()
; decoder-mode: arm
00576dc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00576dc4, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::CUnZipReader
; alias: _ZN6glitch2io12CUnZipReader8findFileEPKc
; demangled: glitch::io::CUnZipReader::findFile(char const*)
; decoder-mode: arm
00576dc4  10 40 2d e9                                      push {r4, lr}
00576dc8  00 30 90 e5                                      ldr r3, [r0]
00576dcc  0f e0 a0 e1                                      mov lr, pc
00576dd0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576dd4  00 00 50 e3                                      cmp r0, #0
00576dd8  02 00 00 0a                                      beq #0x576de8
00576ddc  e8 99 f6 eb                                      bl #0x31d584
00576de0  01 00 a0 e3                                      mov r0, #1
00576de4  10 80 bd e8                                      pop {r4, pc}
00576de8  00 00 e0 e3                                      mvn r0, #0
00576dec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00577534, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io::CUnZipReader
; alias: _ZN6glitch2io12CUnZipReaderD1Ev
; demangled: glitch::io::CUnZipReader::~CUnZipReader()
; decoder-mode: arm
00577534  44 30 9f e5                                      ldr r3, [pc, #0x44]
00577538  44 20 9f e5                                      ldr r2, [pc, #0x44]
0057753c  10 40 2d e9                                      push {r4, lr}
00577540  03 30 8f e0                                      add r3, pc, r3
00577544  02 20 93 e7                                      ldr r2, [r3, r2]
00577548  00 10 a0 e1                                      mov r1, r0
0057754c  00 40 a0 e1                                      mov r4, r0
00577550  08 20 82 e2                                      add r2, r2, #8
00577554  24 20 81 e4                                      str r2, [r1], #0x24
00577558  14 00 91 e5                                      ldr r0, [r1, #0x14]
0057755c  01 00 50 e1                                      cmp r0, r1
00577560  02 00 00 0a                                      beq #0x577570
00577564  00 00 50 e3                                      cmp r0, #0
00577568  00 00 00 0a                                      beq #0x577570
0057756c  b7 63 f6 eb                                      bl #0x310450
00577570  04 00 a0 e1                                      mov r0, r4
00577574  dc ff ff eb                                      bl #0x5774ec
00577578  04 00 a0 e1                                      mov r0, r4
0057757c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00577580  50 d5 41 00 e4 18 00 00                          .byte 0x50, 0xd5, 0x41, 0x00, 0xe4, 0x18, 0x00, 0x00

; FUNCTION 0x00577588, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CUnZipReader
; alias: _ZN6glitch2io12CUnZipReaderD0Ev
; demangled: glitch::io::CUnZipReader::~CUnZipReader()
; decoder-mode: arm
00577588  10 40 2d e9                                      push {r4, lr}
0057758c  00 40 a0 e1                                      mov r4, r0
00577590  e7 ff ff eb                                      bl #0x577534
00577594  04 00 a0 e1                                      mov r0, r4
00577598  44 5b f6 eb                                      bl #0x30e2b0
0057759c  04 00 a0 e1                                      mov r0, r4
005775a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00577a48, declared_size=264, range_size=264, mode=arm
; class-group: glitch::io::CUnZipReader
; alias: _ZN6glitch2io12CUnZipReader8openFileEPKc
; demangled: glitch::io::CUnZipReader::openFile(char const*)
; decoder-mode: arm
00577a48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00577a4c  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
00577a50  f4 80 9f e5                                      ldr r8, [pc, #0xf4]
00577a54  20 d0 4d e2                                      sub sp, sp, #0x20
00577a58  05 50 8f e0                                      add r5, pc, r5
00577a5c  08 30 95 e7                                      ldr r3, [r5, r8]
00577a60  04 40 8d e2                                      add r4, sp, #4
00577a64  00 70 a0 e1                                      mov r7, r0
00577a68  00 30 93 e5                                      ldr r3, [r3]
00577a6c  01 60 a0 e1                                      mov r6, r1
00577a70  04 00 a0 e1                                      mov r0, r4
00577a74  10 10 a0 e3                                      mov r1, #0x10
00577a78  1c 30 8d e5                                      str r3, [sp, #0x1c]
00577a7c  14 40 8d e5                                      str r4, [sp, #0x14]
00577a80  18 40 8d e5                                      str r4, [sp, #0x18]
00577a84  c7 a3 f6 eb                                      bl #0x3209a8
00577a88  24 30 87 e2                                      add r3, r7, #0x24
00577a8c  03 00 54 e1                                      cmp r4, r3
00577a90  14 30 9d e5                                      ldr r3, [sp, #0x14]
00577a94  00 20 a0 e3                                      mov r2, #0
00577a98  00 20 c3 e5                                      strb r2, [r3]
00577a9c  03 00 00 0a                                      beq #0x577ab0
00577aa0  34 20 97 e5                                      ldr r2, [r7, #0x34]
00577aa4  04 00 a0 e1                                      mov r0, r4
00577aa8  38 10 97 e5                                      ldr r1, [r7, #0x38]
00577aac  35 a4 f6 eb                                      bl #0x320b88
00577ab0  06 00 a0 e1                                      mov r0, r6
00577ab4  e6 58 f6 eb                                      bl #0x30de54
00577ab8  06 10 a0 e1                                      mov r1, r6
00577abc  00 20 86 e0                                      add r2, r6, r0
00577ac0  04 00 a0 e1                                      mov r0, r4
00577ac4  e0 a3 f6 eb                                      bl #0x320a4c
00577ac8  00 10 a0 e3                                      mov r1, #0
00577acc  48 00 a0 e3                                      mov r0, #0x48
00577ad0  b5 f1 fe eb                                      bl #0x5341ac
00577ad4  06 20 a0 e1                                      mov r2, r6
00577ad8  00 70 a0 e1                                      mov r7, r0
00577adc  04 10 a0 e1                                      mov r1, r4
00577ae0  b9 ff ff eb                                      bl #0x5779cc
00577ae4  00 30 97 e5                                      ldr r3, [r7]
00577ae8  07 00 a0 e1                                      mov r0, r7
00577aec  0f e0 a0 e1                                      mov lr, pc
00577af0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00577af4  00 60 50 e2                                      subs r6, r0, #0
00577af8  0d 00 00 0a                                      beq #0x577b34
00577afc  18 00 9d e5                                      ldr r0, [sp, #0x18]
00577b00  04 00 50 e1                                      cmp r0, r4
00577b04  02 00 00 0a                                      beq #0x577b14
00577b08  00 00 50 e3                                      cmp r0, #0
00577b0c  00 00 00 0a                                      beq #0x577b14
00577b10  4e 62 f6 eb                                      bl #0x310450
00577b14  08 30 95 e7                                      ldr r3, [r5, r8]
00577b18  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00577b1c  07 00 a0 e1                                      mov r0, r7
00577b20  00 30 93 e5                                      ldr r3, [r3]
00577b24  03 00 52 e1                                      cmp r2, r3
00577b28  05 00 00 1a                                      bne #0x577b44
00577b2c  20 d0 8d e2                                      add sp, sp, #0x20
00577b30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00577b34  07 00 a0 e1                                      mov r0, r7
00577b38  91 96 f6 eb                                      bl #0x31d584
00577b3c  06 70 a0 e1                                      mov r7, r6
00577b40  ed ff ff ea                                      b #0x577afc
00577b44  f1 59 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00577b48  38 d0 41 00 ac 40 00 00                          .byte 0x38, 0xd0, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005780fc, declared_size=184, range_size=184, mode=arm
; class-group: glitch::io::CUnZipReader
; alias: _ZN6glitch2io12CUnZipReaderC1EPNS0_11IFileSystemEPKcbb
; demangled: glitch::io::CUnZipReader::CUnZipReader(glitch::io::IFileSystem*, char const*, bool, bool)
; decoder-mode: arm
005780fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00578100  02 60 a0 e1                                      mov r6, r2
00578104  01 70 a0 e1                                      mov r7, r1
00578108  03 20 a0 e1                                      mov r2, r3
0057810c  00 10 a0 e3                                      mov r1, #0
00578110  18 30 dd e5                                      ldrb r3, [sp, #0x18]
00578114  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
00578118  00 40 a0 e1                                      mov r4, r0
0057811c  cb ff ff eb                                      bl #0x578050
00578120  84 30 9f e5                                      ldr r3, [pc, #0x84]
00578124  05 50 8f e0                                      add r5, pc, r5
00578128  24 80 84 e2                                      add r8, r4, #0x24
0057812c  03 30 95 e7                                      ldr r3, [r5, r3]
00578130  10 10 a0 e3                                      mov r1, #0x10
00578134  08 00 a0 e1                                      mov r0, r8
00578138  08 30 83 e2                                      add r3, r3, #8
0057813c  00 30 84 e5                                      str r3, [r4]
00578140  20 70 84 e5                                      str r7, [r4, #0x20]
00578144  34 80 84 e5                                      str r8, [r4, #0x34]
00578148  38 80 84 e5                                      str r8, [r4, #0x38]
0057814c  15 a2 f6 eb                                      bl #0x3209a8
00578150  34 30 94 e5                                      ldr r3, [r4, #0x34]
00578154  00 20 a0 e3                                      mov r2, #0
00578158  06 00 a0 e1                                      mov r0, r6
0057815c  00 20 c3 e5                                      strb r2, [r3]
00578160  3b 57 f6 eb                                      bl #0x30de54
00578164  06 10 a0 e1                                      mov r1, r6
00578168  00 20 86 e0                                      add r2, r6, r0
0057816c  08 00 a0 e1                                      mov r0, r8
00578170  84 a2 f6 eb                                      bl #0x320b88
00578174  34 30 94 e5                                      ldr r3, [r4, #0x34]
00578178  d1 30 53 e1                                      ldrsb r3, [r3, #-1]
0057817c  5c 00 53 e3                                      cmp r3, #0x5c
00578180  06 00 00 0a                                      beq #0x5781a0
00578184  2f 00 53 e3                                      cmp r3, #0x2f
00578188  04 00 00 0a                                      beq #0x5781a0
0057818c  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00578190  08 00 a0 e1                                      mov r0, r8
00578194  01 10 8f e0                                      add r1, pc, r1
00578198  01 20 81 e2                                      add r2, r1, #1
0057819c  2a a2 f6 eb                                      bl #0x320a4c
005781a0  04 00 a0 e1                                      mov r0, r4
005781a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005781a8  6c c9 41 00 e4 18 00 00 c4 8a 34 00              .byte 0x6c, 0xc9, 0x41, 0x00, 0xe4, 0x18, 0x00, 0x00, 0xc4, 0x8a, 0x34, 0x00

; FUNCTION 0x005781b4, declared_size=184, range_size=184, mode=arm
; class-group: glitch::io::CUnZipReader
; alias: _ZN6glitch2io12CUnZipReaderC2EPNS0_11IFileSystemEPKcbb
; demangled: glitch::io::CUnZipReader::CUnZipReader(glitch::io::IFileSystem*, char const*, bool, bool)
; decoder-mode: arm
005781b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005781b8  02 60 a0 e1                                      mov r6, r2
005781bc  01 70 a0 e1                                      mov r7, r1
005781c0  03 20 a0 e1                                      mov r2, r3
005781c4  00 10 a0 e3                                      mov r1, #0
005781c8  18 30 dd e5                                      ldrb r3, [sp, #0x18]
005781cc  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
005781d0  00 40 a0 e1                                      mov r4, r0
005781d4  9d ff ff eb                                      bl #0x578050
005781d8  84 30 9f e5                                      ldr r3, [pc, #0x84]
005781dc  05 50 8f e0                                      add r5, pc, r5
005781e0  24 80 84 e2                                      add r8, r4, #0x24
005781e4  03 30 95 e7                                      ldr r3, [r5, r3]
005781e8  10 10 a0 e3                                      mov r1, #0x10
005781ec  08 00 a0 e1                                      mov r0, r8
005781f0  08 30 83 e2                                      add r3, r3, #8
005781f4  00 30 84 e5                                      str r3, [r4]
005781f8  20 70 84 e5                                      str r7, [r4, #0x20]
005781fc  34 80 84 e5                                      str r8, [r4, #0x34]
00578200  38 80 84 e5                                      str r8, [r4, #0x38]
00578204  e7 a1 f6 eb                                      bl #0x3209a8
00578208  34 30 94 e5                                      ldr r3, [r4, #0x34]
0057820c  00 20 a0 e3                                      mov r2, #0
00578210  06 00 a0 e1                                      mov r0, r6
00578214  00 20 c3 e5                                      strb r2, [r3]
00578218  0d 57 f6 eb                                      bl #0x30de54
0057821c  06 10 a0 e1                                      mov r1, r6
00578220  00 20 86 e0                                      add r2, r6, r0
00578224  08 00 a0 e1                                      mov r0, r8
00578228  56 a2 f6 eb                                      bl #0x320b88
0057822c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00578230  d1 30 53 e1                                      ldrsb r3, [r3, #-1]
00578234  5c 00 53 e3                                      cmp r3, #0x5c
00578238  06 00 00 0a                                      beq #0x578258
0057823c  2f 00 53 e3                                      cmp r3, #0x2f
00578240  04 00 00 0a                                      beq #0x578258
00578244  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00578248  08 00 a0 e1                                      mov r0, r8
0057824c  01 10 8f e0                                      add r1, pc, r1
00578250  01 20 81 e2                                      add r2, r1, #1
00578254  fc a1 f6 eb                                      bl #0x320a4c
00578258  04 00 a0 e1                                      mov r0, r4
0057825c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00578260  b4 c8 41 00 e4 18 00 00 0c 8a 34 00              .byte 0xb4, 0xc8, 0x41, 0x00, 0xe4, 0x18, 0x00, 0x00, 0x0c, 0x8a, 0x34, 0x00

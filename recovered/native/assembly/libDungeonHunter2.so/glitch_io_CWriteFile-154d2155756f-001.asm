; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005708f8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CWriteFile
; alias: _ZNK6glitch2io10CWriteFile11getFileNameEv
; demangled: glitch::io::CWriteFile::getFileName() const
; decoder-mode: arm
005708f8  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
005708fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00570900, declared_size=12, range_size=12, mode=arm
; class-group: glitch::io::CWriteFile
; alias: _ZNK6glitch2io10CWriteFile11getFullPathEv
; demangled: glitch::io::CWriteFile::getFullPath() const
; decoder-mode: arm
00570900  20 30 90 e5                                      ldr r3, [r0, #0x20]
00570904  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00570908  1e ff 2f e1                                      bx lr

; FUNCTION 0x0057092c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::io::CWriteFile
; alias: _ZN6glitch2io10CWriteFile4seekElb
; demangled: glitch::io::CWriteFile::seek(long, bool)
; decoder-mode: arm
0057092c  10 40 2d e9                                      push {r4, lr}
00570930  20 00 90 e5                                      ldr r0, [r0, #0x20]
00570934  00 00 50 e3                                      cmp r0, #0
00570938  03 00 00 0a                                      beq #0x57094c
0057093c  04 00 90 e5                                      ldr r0, [r0, #4]
00570940  29 77 f6 eb                                      bl #0x30e5ec
00570944  01 00 70 e2                                      rsbs r0, r0, #1
00570948  00 00 a0 33                                      movlo r0, #0
0057094c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00570950, declared_size=12, range_size=12, mode=arm
; class-group: glitch::io::CWriteFile
; alias: _ZNK6glitch2io10CWriteFile6getPosEv
; demangled: glitch::io::CWriteFile::getPos() const
; decoder-mode: arm
00570950  20 30 90 e5                                      ldr r3, [r0, #0x20]
00570954  04 00 93 e5                                      ldr r0, [r3, #4]
00570958  37 75 f6 ea                                      b #0x30de3c

; FUNCTION 0x0057095c, declared_size=232, range_size=232, mode=arm
; class-group: glitch::io::CWriteFile
; alias: _ZN6glitch2io10CWriteFile8openFileEb
; demangled: glitch::io::CWriteFile::openFile(bool)
; decoder-mode: arm
0057095c  10 40 2d e9                                      push {r4, lr}
00570960  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00570964  18 20 90 e5                                      ldr r2, [r0, #0x18]
00570968  08 d0 4d e2                                      sub sp, sp, #8
0057096c  00 40 a0 e1                                      mov r4, r0
00570970  03 00 52 e1                                      cmp r2, r3
00570974  29 00 00 0a                                      beq #0x570a20
00570978  00 00 51 e3                                      cmp r1, #0
0057097c  24 00 00 1a                                      bne #0x570a14
00570980  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
00570984  02 20 8f e0                                      add r2, pc, r2
00570988  03 10 a0 e1                                      mov r1, r3
0057098c  04 00 8d e2                                      add r0, sp, #4
00570990  aa f4 ff eb                                      bl #0x56dc40
00570994  04 30 9d e5                                      ldr r3, [sp, #4]
00570998  00 00 53 e3                                      cmp r3, #0
0057099c  00 20 93 15                                      ldrne r2, [r3]
005709a0  01 20 82 12                                      addne r2, r2, #1
005709a4  00 20 83 15                                      strne r2, [r3]
005709a8  20 00 94 e5                                      ldr r0, [r4, #0x20]
005709ac  20 30 84 e5                                      str r3, [r4, #0x20]
005709b0  00 00 50 e3                                      cmp r0, #0
005709b4  00 00 00 0a                                      beq #0x5709bc
005709b8  9e 79 f7 eb                                      bl #0x34f038
005709bc  04 00 9d e5                                      ldr r0, [sp, #4]
005709c0  00 00 50 e3                                      cmp r0, #0
005709c4  00 00 00 0a                                      beq #0x5709cc
005709c8  9a 79 f7 eb                                      bl #0x34f038
005709cc  20 30 94 e5                                      ldr r3, [r4, #0x20]
005709d0  00 00 53 e3                                      cmp r3, #0
005709d4  0c 00 00 0a                                      beq #0x570a0c
005709d8  00 10 a0 e3                                      mov r1, #0
005709dc  02 20 a0 e3                                      mov r2, #2
005709e0  04 00 93 e5                                      ldr r0, [r3, #4]
005709e4  00 77 f6 eb                                      bl #0x30e5ec
005709e8  20 30 94 e5                                      ldr r3, [r4, #0x20]
005709ec  04 00 93 e5                                      ldr r0, [r3, #4]
005709f0  11 75 f6 eb                                      bl #0x30de3c
005709f4  20 30 94 e5                                      ldr r3, [r4, #0x20]
005709f8  24 00 84 e5                                      str r0, [r4, #0x24]
005709fc  00 10 a0 e3                                      mov r1, #0
00570a00  04 00 93 e5                                      ldr r0, [r3, #4]
00570a04  01 20 a0 e1                                      mov r2, r1
00570a08  f7 76 f6 eb                                      bl #0x30e5ec
00570a0c  08 d0 8d e2                                      add sp, sp, #8
00570a10  10 80 bd e8                                      pop {r4, pc}
00570a14  24 20 9f e5                                      ldr r2, [pc, #0x24]
00570a18  02 20 8f e0                                      add r2, pc, r2
00570a1c  d9 ff ff ea                                      b #0x570988
00570a20  20 00 90 e5                                      ldr r0, [r0, #0x20]
00570a24  00 30 a0 e3                                      mov r3, #0
00570a28  20 30 84 e5                                      str r3, [r4, #0x20]
00570a2c  03 00 50 e1                                      cmp r0, r3
00570a30  f5 ff ff 0a                                      beq #0x570a0c
00570a34  7f 79 f7 eb                                      bl #0x34f038
00570a38  f3 ff ff ea                                      b #0x570a0c
; mapping-symbol data/literal pool
00570a3c  14 e6 36 00 88 e5 36 00                          .byte 0x14, 0xe6, 0x36, 0x00, 0x88, 0xe5, 0x36, 0x00

; FUNCTION 0x00570a58, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::CWriteFile
; alias: _ZN6glitch2io10CWriteFile5flushEv
; demangled: glitch::io::CWriteFile::flush()
; decoder-mode: arm
00570a58  20 30 90 e5                                      ldr r3, [r0, #0x20]
00570a5c  00 00 53 e3                                      cmp r3, #0
00570a60  1e ff 2f 01                                      bxeq lr
00570a64  04 00 93 e5                                      ldr r0, [r3, #4]
00570a68  9a 76 f6 ea                                      b #0x30e4d8

; FUNCTION 0x00570a6c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::io::CWriteFile
; alias: _ZN6glitch2io10CWriteFile5writeEPKvj
; demangled: glitch::io::CWriteFile::write(void const*, unsigned int)
; decoder-mode: arm
00570a6c  20 30 90 e5                                      ldr r3, [r0, #0x20]
00570a70  00 00 53 e3                                      cmp r3, #0
00570a74  03 00 00 0a                                      beq #0x570a88
00570a78  04 30 93 e5                                      ldr r3, [r3, #4]
00570a7c  01 00 a0 e1                                      mov r0, r1
00570a80  01 10 a0 e3                                      mov r1, #1
00570a84  c3 76 f6 ea                                      b #0x30e598
00570a88  03 00 a0 e1                                      mov r0, r3
00570a8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00570a90, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CWriteFile
; alias: _ZN6glitch2io10CWriteFileD1Ev
; demangled: glitch::io::CWriteFile::~CWriteFile()
; decoder-mode: arm
00570a90  10 40 2d e9                                      push {r4, lr}
00570a94  48 30 9f e5                                      ldr r3, [pc, #0x48]
00570a98  48 20 9f e5                                      ldr r2, [pc, #0x48]
00570a9c  00 40 a0 e1                                      mov r4, r0
00570aa0  03 30 8f e0                                      add r3, pc, r3
00570aa4  20 00 90 e5                                      ldr r0, [r0, #0x20]
00570aa8  02 20 93 e7                                      ldr r2, [r3, r2]
00570aac  00 00 50 e3                                      cmp r0, #0
00570ab0  08 20 82 e2                                      add r2, r2, #8
00570ab4  00 20 84 e5                                      str r2, [r4]
00570ab8  00 00 00 0a                                      beq #0x570ac0
00570abc  5d 79 f7 eb                                      bl #0x34f038
00570ac0  08 30 84 e2                                      add r3, r4, #8
00570ac4  14 00 93 e5                                      ldr r0, [r3, #0x14]
00570ac8  03 00 50 e1                                      cmp r0, r3
00570acc  02 00 00 0a                                      beq #0x570adc
00570ad0  00 00 50 e3                                      cmp r0, #0
00570ad4  00 00 00 0a                                      beq #0x570adc
00570ad8  5c 7e f6 eb                                      bl #0x310450
00570adc  04 00 a0 e1                                      mov r0, r4
00570ae0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00570ae4  f0 3f 42 00 e8 0e 00 00                          .byte 0xf0, 0x3f, 0x42, 0x00, 0xe8, 0x0e, 0x00, 0x00

; FUNCTION 0x00570aec, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CWriteFile
; alias: _ZN6glitch2io10CWriteFileD0Ev
; demangled: glitch::io::CWriteFile::~CWriteFile()
; decoder-mode: arm
00570aec  10 40 2d e9                                      push {r4, lr}
00570af0  00 40 a0 e1                                      mov r4, r0
00570af4  e5 ff ff eb                                      bl #0x570a90
00570af8  04 00 a0 e1                                      mov r0, r4
00570afc  eb 75 f6 eb                                      bl #0x30e2b0
00570b00  04 00 a0 e1                                      mov r0, r4
00570b04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00570b08, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CWriteFile
; alias: _ZN6glitch2io10CWriteFileD2Ev
; demangled: glitch::io::CWriteFile::~CWriteFile()
; decoder-mode: arm
00570b08  10 40 2d e9                                      push {r4, lr}
00570b0c  48 30 9f e5                                      ldr r3, [pc, #0x48]
00570b10  48 20 9f e5                                      ldr r2, [pc, #0x48]
00570b14  00 40 a0 e1                                      mov r4, r0
00570b18  03 30 8f e0                                      add r3, pc, r3
00570b1c  20 00 90 e5                                      ldr r0, [r0, #0x20]
00570b20  02 20 93 e7                                      ldr r2, [r3, r2]
00570b24  00 00 50 e3                                      cmp r0, #0
00570b28  08 20 82 e2                                      add r2, r2, #8
00570b2c  00 20 84 e5                                      str r2, [r4]
00570b30  00 00 00 0a                                      beq #0x570b38
00570b34  3f 79 f7 eb                                      bl #0x34f038
00570b38  08 30 84 e2                                      add r3, r4, #8
00570b3c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00570b40  03 00 50 e1                                      cmp r0, r3
00570b44  02 00 00 0a                                      beq #0x570b54
00570b48  00 00 50 e3                                      cmp r0, #0
00570b4c  00 00 00 0a                                      beq #0x570b54
00570b50  3e 7e f6 eb                                      bl #0x310450
00570b54  04 00 a0 e1                                      mov r0, r4
00570b58  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00570b5c  78 3f 42 00 e8 0e 00 00                          .byte 0x78, 0x3f, 0x42, 0x00, 0xe8, 0x0e, 0x00, 0x00

; FUNCTION 0x00570b68, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CWriteFile
; alias: _ZN6glitch2io10CWriteFileC1EPKcb
; demangled: glitch::io::CWriteFile::CWriteFile(char const*, bool)
; decoder-mode: arm
00570b68  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00570b6c  7c c0 9f e5                                      ldr ip, [pc, #0x7c]
00570b70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00570b74  03 30 8f e0                                      add r3, pc, r3
00570b78  0c c0 93 e7                                      ldr ip, [r3, ip]
00570b7c  00 40 a0 e1                                      mov r4, r0
00570b80  00 50 a0 e1                                      mov r5, r0
00570b84  08 c0 8c e2                                      add ip, ip, #8
00570b88  01 00 a0 e3                                      mov r0, #1
00570b8c  04 00 84 e5                                      str r0, [r4, #4]
00570b90  08 c0 85 e4                                      str ip, [r5], #8
00570b94  05 00 a0 e1                                      mov r0, r5
00570b98  18 50 84 e5                                      str r5, [r4, #0x18]
00570b9c  1c 50 84 e5                                      str r5, [r4, #0x1c]
00570ba0  01 70 a0 e1                                      mov r7, r1
00570ba4  02 60 a0 e1                                      mov r6, r2
00570ba8  ed ff ff eb                                      bl #0x570b64
00570bac  18 20 94 e5                                      ldr r2, [r4, #0x18]
00570bb0  00 30 a0 e3                                      mov r3, #0
00570bb4  07 00 a0 e1                                      mov r0, r7
00570bb8  00 30 c2 e5                                      strb r3, [r2]
00570bbc  24 30 84 e5                                      str r3, [r4, #0x24]
00570bc0  20 30 84 e5                                      str r3, [r4, #0x20]
00570bc4  a2 74 f6 eb                                      bl #0x30de54
00570bc8  07 10 a0 e1                                      mov r1, r7
00570bcc  00 20 87 e0                                      add r2, r7, r0
00570bd0  05 00 a0 e1                                      mov r0, r5
00570bd4  eb bf f6 eb                                      bl #0x320b88
00570bd8  04 00 a0 e1                                      mov r0, r4
00570bdc  06 10 a0 e1                                      mov r1, r6
00570be0  5d ff ff eb                                      bl #0x57095c
00570be4  04 00 a0 e1                                      mov r0, r4
00570be8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00570bec  1c 3f 42 00 e8 0e 00 00                          .byte 0x1c, 0x3f, 0x42, 0x00, 0xe8, 0x0e, 0x00, 0x00

; FUNCTION 0x00570c40, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CWriteFile
; alias: _ZN6glitch2io10CWriteFileC2EPKcb
; demangled: glitch::io::CWriteFile::CWriteFile(char const*, bool)
; decoder-mode: arm
00570c40  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00570c44  7c c0 9f e5                                      ldr ip, [pc, #0x7c]
00570c48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00570c4c  03 30 8f e0                                      add r3, pc, r3
00570c50  0c c0 93 e7                                      ldr ip, [r3, ip]
00570c54  00 40 a0 e1                                      mov r4, r0
00570c58  00 50 a0 e1                                      mov r5, r0
00570c5c  08 c0 8c e2                                      add ip, ip, #8
00570c60  01 00 a0 e3                                      mov r0, #1
00570c64  04 00 84 e5                                      str r0, [r4, #4]
00570c68  08 c0 85 e4                                      str ip, [r5], #8
00570c6c  05 00 a0 e1                                      mov r0, r5
00570c70  18 50 84 e5                                      str r5, [r4, #0x18]
00570c74  1c 50 84 e5                                      str r5, [r4, #0x1c]
00570c78  01 70 a0 e1                                      mov r7, r1
00570c7c  02 60 a0 e1                                      mov r6, r2
00570c80  b7 ff ff eb                                      bl #0x570b64
00570c84  18 20 94 e5                                      ldr r2, [r4, #0x18]
00570c88  00 30 a0 e3                                      mov r3, #0
00570c8c  07 00 a0 e1                                      mov r0, r7
00570c90  00 30 c2 e5                                      strb r3, [r2]
00570c94  24 30 84 e5                                      str r3, [r4, #0x24]
00570c98  20 30 84 e5                                      str r3, [r4, #0x20]
00570c9c  6c 74 f6 eb                                      bl #0x30de54
00570ca0  07 10 a0 e1                                      mov r1, r7
00570ca4  00 20 87 e0                                      add r2, r7, r0
00570ca8  05 00 a0 e1                                      mov r0, r5
00570cac  b5 bf f6 eb                                      bl #0x320b88
00570cb0  04 00 a0 e1                                      mov r0, r4
00570cb4  06 10 a0 e1                                      mov r1, r6
00570cb8  27 ff ff eb                                      bl #0x57095c
00570cbc  04 00 a0 e1                                      mov r0, r4
00570cc0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00570cc4  44 3e 42 00 e8 0e 00 00                          .byte 0x44, 0x3e, 0x42, 0x00, 0xe8, 0x0e, 0x00, 0x00

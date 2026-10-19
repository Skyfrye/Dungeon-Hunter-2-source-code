; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b3f58, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CFileList::FileEntry
; alias: _ZN6glitch2io9CFileList9FileEntryD1Ev
; demangled: glitch::io::CFileList::FileEntry::~FileEntry()
; decoder-mode: arm
006b3f58  10 40 2d e9                                      push {r4, lr}
006b3f5c  18 30 80 e2                                      add r3, r0, #0x18
006b3f60  00 40 a0 e1                                      mov r4, r0
006b3f64  14 00 93 e5                                      ldr r0, [r3, #0x14]
006b3f68  03 00 50 e1                                      cmp r0, r3
006b3f6c  02 00 00 0a                                      beq #0x6b3f7c
006b3f70  00 00 50 e3                                      cmp r0, #0
006b3f74  00 00 00 0a                                      beq #0x6b3f7c
006b3f78  34 71 f1 eb                                      bl #0x310450
006b3f7c  14 00 94 e5                                      ldr r0, [r4, #0x14]
006b3f80  04 00 50 e1                                      cmp r0, r4
006b3f84  02 00 00 0a                                      beq #0x6b3f94
006b3f88  00 00 50 e3                                      cmp r0, #0
006b3f8c  00 00 00 0a                                      beq #0x6b3f94
006b3f90  2e 71 f1 eb                                      bl #0x310450
006b3f94  04 00 a0 e1                                      mov r0, r4
006b3f98  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006b404c, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io::CFileList::FileEntry
; alias: _ZN6glitch2io9CFileList9FileEntryaSERKS2_
; demangled: glitch::io::CFileList::FileEntry::operator=(glitch::io::CFileList::FileEntry const&)
; decoder-mode: arm
006b404c  01 00 50 e1                                      cmp r0, r1
006b4050  70 40 2d e9                                      push {r4, r5, r6, lr}
006b4054  01 40 a0 e1                                      mov r4, r1
006b4058  00 50 a0 e1                                      mov r5, r0
006b405c  02 00 00 0a                                      beq #0x6b406c
006b4060  14 10 91 e5                                      ldr r1, [r1, #0x14]
006b4064  10 20 94 e5                                      ldr r2, [r4, #0x10]
006b4068  c6 b2 f1 eb                                      bl #0x320b88
006b406c  18 00 85 e2                                      add r0, r5, #0x18
006b4070  18 30 84 e2                                      add r3, r4, #0x18
006b4074  03 00 50 e1                                      cmp r0, r3
006b4078  02 00 00 0a                                      beq #0x6b4088
006b407c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
006b4080  28 20 94 e5                                      ldr r2, [r4, #0x28]
006b4084  bf b2 f1 eb                                      bl #0x320b88
006b4088  30 30 94 e5                                      ldr r3, [r4, #0x30]
006b408c  05 00 a0 e1                                      mov r0, r5
006b4090  30 30 85 e5                                      str r3, [r5, #0x30]
006b4094  34 30 d4 e5                                      ldrb r3, [r4, #0x34]
006b4098  34 30 c5 e5                                      strb r3, [r5, #0x34]
006b409c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006b4188, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CFileList::FileEntry
; alias: _ZN6glitch2io9CFileList9FileEntryC1ERKS2_
; demangled: glitch::io::CFileList::FileEntry::FileEntry(glitch::io::CFileList::FileEntry const&)
; decoder-mode: arm
006b4188  70 40 2d e9                                      push {r4, r5, r6, lr}
006b418c  00 40 a0 e1                                      mov r4, r0
006b4190  01 50 a0 e1                                      mov r5, r1
006b4194  10 00 84 e5                                      str r0, [r4, #0x10]
006b4198  14 00 84 e5                                      str r0, [r4, #0x14]
006b419c  10 20 95 e5                                      ldr r2, [r5, #0x10]
006b41a0  14 10 91 e5                                      ldr r1, [r1, #0x14]
006b41a4  92 c7 f1 eb                                      bl #0x325ff4
006b41a8  18 00 84 e2                                      add r0, r4, #0x18
006b41ac  28 00 84 e5                                      str r0, [r4, #0x28]
006b41b0  2c 00 84 e5                                      str r0, [r4, #0x2c]
006b41b4  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
006b41b8  28 20 95 e5                                      ldr r2, [r5, #0x28]
006b41bc  8c c7 f1 eb                                      bl #0x325ff4
006b41c0  30 30 95 e5                                      ldr r3, [r5, #0x30]
006b41c4  04 00 a0 e1                                      mov r0, r4
006b41c8  30 30 84 e5                                      str r3, [r4, #0x30]
006b41cc  34 30 d5 e5                                      ldrb r3, [r5, #0x34]
006b41d0  34 30 c4 e5                                      strb r3, [r4, #0x34]
006b41d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

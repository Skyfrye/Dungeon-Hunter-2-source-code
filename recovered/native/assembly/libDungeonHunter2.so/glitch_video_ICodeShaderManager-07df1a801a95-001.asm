; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e0a3c, declared_size=296, range_size=296, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManager20initAdditionalConfigEPKc
; demangled: glitch::video::ICodeShaderManager::initAdditionalConfig(char const*)
; decoder-mode: arm
006e0a3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e0a40  80 30 90 e5                                      ldr r3, [r0, #0x80]
006e0a44  00 40 a0 e1                                      mov r4, r0
006e0a48  01 70 a0 e1                                      mov r7, r1
006e0a4c  01 00 73 e3                                      cmn r3, #1
006e0a50  00 00 00 0a                                      beq #0x6e0a58
006e0a54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e0a58  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
006e0a5c  d4 30 93 e5                                      ldr r3, [r3, #0xd4]
006e0a60  34 50 93 e5                                      ldr r5, [r3, #0x34]
006e0a64  00 00 55 e3                                      cmp r5, #0
006e0a68  04 30 95 15                                      ldrne r3, [r5, #4]
006e0a6c  05 00 a0 e1                                      mov r0, r5
006e0a70  01 30 83 12                                      addne r3, r3, #1
006e0a74  04 30 85 15                                      strne r3, [r5, #4]
006e0a78  00 30 95 e5                                      ldr r3, [r5]
006e0a7c  0f e0 a0 e1                                      mov lr, pc
006e0a80  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006e0a84  00 60 50 e2                                      subs r6, r0, #0
006e0a88  27 00 00 0a                                      beq #0x6e0b2c
006e0a8c  00 30 96 e5                                      ldr r3, [r6]
006e0a90  0f e0 a0 e1                                      mov lr, pc
006e0a94  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006e0a98  00 10 a0 e3                                      mov r1, #0
006e0a9c  80 00 84 e5                                      str r0, [r4, #0x80]
006e0aa0  01 00 80 e2                                      add r0, r0, #1
006e0aa4  bf 4d f9 eb                                      bl #0x5341a8
006e0aa8  00 10 a0 e1                                      mov r1, r0
006e0aac  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
006e0ab0  7c 10 84 e5                                      str r1, [r4, #0x7c]
006e0ab4  00 00 50 e3                                      cmp r0, #0
006e0ab8  01 00 00 0a                                      beq #0x6e0ac4
006e0abc  7d b5 f0 eb                                      bl #0x30e0b8
006e0ac0  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
006e0ac4  80 20 94 e5                                      ldr r2, [r4, #0x80]
006e0ac8  00 30 96 e5                                      ldr r3, [r6]
006e0acc  06 00 a0 e1                                      mov r0, r6
006e0ad0  0f e0 a0 e1                                      mov lr, pc
006e0ad4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006e0ad8  06 00 a0 e1                                      mov r0, r6
006e0adc  a8 f2 f0 eb                                      bl #0x31d584
006e0ae0  80 30 94 e5                                      ldr r3, [r4, #0x80]
006e0ae4  7c 20 94 e5                                      ldr r2, [r4, #0x7c]
006e0ae8  00 10 a0 e3                                      mov r1, #0
006e0aec  03 10 c2 e7                                      strb r1, [r2, r3]
006e0af0  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
006e0af4  80 10 94 e5                                      ldr r1, [r4, #0x80]
006e0af8  01 10 83 e0                                      add r1, r3, r1
006e0afc  03 00 51 e1                                      cmp r1, r3
006e0b00  06 00 00 0a                                      beq #0x6e0b20
006e0b04  0a 00 a0 e3                                      mov r0, #0xa
006e0b08  d0 20 d3 e1                                      ldrsb r2, [r3]
006e0b0c  5e 00 52 e3                                      cmp r2, #0x5e
006e0b10  00 00 c3 05                                      strbeq r0, [r3]
006e0b14  01 30 83 e2                                      add r3, r3, #1
006e0b18  01 00 53 e1                                      cmp r3, r1
006e0b1c  f9 ff ff 1a                                      bne #0x6e0b08
006e0b20  05 00 a0 e1                                      mov r0, r5
006e0b24  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
006e0b28  95 f2 f0 ea                                      b #0x31d584
006e0b2c  28 40 9f e5                                      ldr r4, [pc, #0x28]
006e0b30  04 40 8f e0                                      add r4, pc, r4
006e0b34  00 30 d4 e5                                      ldrb r3, [r4]
006e0b38  00 00 53 e3                                      cmp r3, #0
006e0b3c  f7 ff ff 0a                                      beq #0x6e0b20
006e0b40  18 10 9f e5                                      ldr r1, [pc, #0x18]
006e0b44  07 20 a0 e1                                      mov r2, r7
006e0b48  02 00 a0 e3                                      mov r0, #2
006e0b4c  01 10 8f e0                                      add r1, pc, r1
006e0b50  37 a9 fc eb                                      bl #0x60b034
006e0b54  00 60 c4 e5                                      strb r6, [r4]
006e0b58  f0 ff ff ea                                      b #0x6e0b20
; mapping-symbol data/literal pool
006e0b5c  e0 cf 2b 00 bc e4 20 00                          .byte 0xe0, 0xcf, 0x2b, 0x00, 0xbc, 0xe4, 0x20, 0x00

; FUNCTION 0x006e0b64, declared_size=172, range_size=172, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManager18makeShaderCodeNameEPKcjS3_jS3_jPj
; demangled: glitch::video::ICodeShaderManager::makeShaderCodeName(char const*, unsigned int, char const*, unsigned int, char const*, unsigned int, unsigned int*)
; decoder-mode: arm
006e0b64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e0b68  0c d0 4d e2                                      sub sp, sp, #0xc
006e0b6c  02 50 a0 e1                                      mov r5, r2
006e0b70  00 40 a0 e1                                      mov r4, r0
006e0b74  01 b0 a0 e1                                      mov fp, r1
006e0b78  03 90 a0 e1                                      mov sb, r3
006e0b7c  b4 4d f9 eb                                      bl #0x534254
006e0b80  04 00 8d e5                                      str r0, [sp, #4]
006e0b84  01 00 a0 e3                                      mov r0, #1
006e0b88  b6 4d f9 eb                                      bl #0x534268
006e0b8c  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
006e0b90  30 70 9d e5                                      ldr r7, [sp, #0x30]
006e0b94  38 a0 9d e5                                      ldr sl, [sp, #0x38]
006e0b98  00 00 53 e3                                      cmp r3, #0
006e0b9c  80 80 94 15                                      ldrne r8, [r4, #0x80]
006e0ba0  05 70 87 e0                                      add r7, r7, r5
006e0ba4  07 a0 8a e0                                      add sl, sl, r7
006e0ba8  0a 80 a0 01                                      moveq r8, sl
006e0bac  08 80 8a 10                                      addne r8, sl, r8
006e0bb0  01 00 88 e2                                      add r0, r8, #1
006e0bb4  8e 4e f9 eb                                      bl #0x5345f4
006e0bb8  0b 10 a0 e1                                      mov r1, fp
006e0bbc  00 60 a0 e1                                      mov r6, r0
006e0bc0  56 b6 f0 eb                                      bl #0x30e520
006e0bc4  09 10 a0 e1                                      mov r1, sb
006e0bc8  05 00 86 e0                                      add r0, r6, r5
006e0bcc  53 b6 f0 eb                                      bl #0x30e520
006e0bd0  34 10 9d e5                                      ldr r1, [sp, #0x34]
006e0bd4  07 00 86 e0                                      add r0, r6, r7
006e0bd8  50 b6 f0 eb                                      bl #0x30e520
006e0bdc  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
006e0be0  00 00 51 e3                                      cmp r1, #0
006e0be4  01 00 00 0a                                      beq #0x6e0bf0
006e0be8  0a 00 86 e0                                      add r0, r6, sl
006e0bec  4b b6 f0 eb                                      bl #0x30e520
006e0bf0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006e0bf4  00 00 53 e3                                      cmp r3, #0
006e0bf8  00 80 83 15                                      strne r8, [r3]
006e0bfc  04 00 9d e5                                      ldr r0, [sp, #4]
006e0c00  98 4d f9 eb                                      bl #0x534268
006e0c04  06 00 a0 e1                                      mov r0, r6
006e0c08  0c d0 8d e2                                      add sp, sp, #0xc
006e0c0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006e0c10, declared_size=148, range_size=148, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManager18makeShaderCodeNameEPKcS3_S3_Pj
; demangled: glitch::video::ICodeShaderManager::makeShaderCodeName(char const*, char const*, char const*, unsigned int*)
; decoder-mode: arm
006e0c10  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006e0c14  00 50 52 e2                                      subs r5, r2, #0
006e0c18  14 d0 4d e2                                      sub sp, sp, #0x14
006e0c1c  00 80 a0 e1                                      mov r8, r0
006e0c20  01 a0 a0 e1                                      mov sl, r1
006e0c24  03 40 a0 e1                                      mov r4, r3
006e0c28  17 00 00 0a                                      beq #0x6e0c8c
006e0c2c  05 00 a0 e1                                      mov r0, r5
006e0c30  87 b4 f0 eb                                      bl #0x30de54
006e0c34  00 60 a0 e1                                      mov r6, r0
006e0c38  00 00 54 e3                                      cmp r4, #0
006e0c3c  0e 00 00 0a                                      beq #0x6e0c7c
006e0c40  04 00 a0 e1                                      mov r0, r4
006e0c44  82 b4 f0 eb                                      bl #0x30de54
006e0c48  00 70 a0 e1                                      mov r7, r0
006e0c4c  0a 00 a0 e1                                      mov r0, sl
006e0c50  7f b4 f0 eb                                      bl #0x30de54
006e0c54  30 c0 9d e5                                      ldr ip, [sp, #0x30]
006e0c58  00 20 a0 e1                                      mov r2, r0
006e0c5c  0a 10 a0 e1                                      mov r1, sl
006e0c60  08 00 a0 e1                                      mov r0, r8
006e0c64  05 30 a0 e1                                      mov r3, r5
006e0c68  00 60 8d e5                                      str r6, [sp]
006e0c6c  90 10 8d e9                                      stmib sp, {r4, r7, ip}
006e0c70  bb ff ff eb                                      bl #0x6e0b64
006e0c74  14 d0 8d e2                                      add sp, sp, #0x14
006e0c78  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006e0c7c  04 70 a0 e1                                      mov r7, r4
006e0c80  14 40 9f e5                                      ldr r4, [pc, #0x14]
006e0c84  04 40 8f e0                                      add r4, pc, r4
006e0c88  ef ff ff ea                                      b #0x6e0c4c
006e0c8c  05 60 a0 e1                                      mov r6, r5
006e0c90  08 50 9f e5                                      ldr r5, [pc, #8]
006e0c94  05 50 8f e0                                      add r5, pc, r5
006e0c98  e6 ff ff ea                                      b #0x6e0c38
; mapping-symbol data/literal pool
006e0c9c  84 ab 1e 00 74 ab 1e 00                          .byte 0x84, 0xab, 0x1e, 0x00, 0x74, 0xab, 0x1e, 0x00

; FUNCTION 0x006e0ca4, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManagerC1Ev
; demangled: glitch::video::ICodeShaderManager::ICodeShaderManager()
; decoder-mode: arm
006e0ca4  70 40 2d e9                                      push {r4, r5, r6, lr}
006e0ca8  38 50 9f e5                                      ldr r5, [pc, #0x38]
006e0cac  00 40 a0 e1                                      mov r4, r0
006e0cb0  ae 12 fc eb                                      bl #0x5e5770
006e0cb4  30 30 9f e5                                      ldr r3, [pc, #0x30]
006e0cb8  05 50 8f e0                                      add r5, pc, r5
006e0cbc  04 00 a0 e1                                      mov r0, r4
006e0cc0  03 30 95 e7                                      ldr r3, [r5, r3]
006e0cc4  08 30 83 e2                                      add r3, r3, #8
006e0cc8  54 30 80 e4                                      str r3, [r0], #0x54
006e0ccc  cc fe ff eb                                      bl #0x6e0804
006e0cd0  00 30 a0 e3                                      mov r3, #0
006e0cd4  7c 30 84 e5                                      str r3, [r4, #0x7c]
006e0cd8  00 30 e0 e3                                      mvn r3, #0
006e0cdc  80 30 84 e5                                      str r3, [r4, #0x80]
006e0ce0  04 00 a0 e1                                      mov r0, r4
006e0ce4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e0ce8  d8 3d 2b 00 e4 41 00 00                          .byte 0xd8, 0x3d, 0x2b, 0x00, 0xe4, 0x41, 0x00, 0x00

; FUNCTION 0x006e0cf0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManagerC2Ev
; demangled: glitch::video::ICodeShaderManager::ICodeShaderManager()
; decoder-mode: arm
006e0cf0  70 40 2d e9                                      push {r4, r5, r6, lr}
006e0cf4  38 50 9f e5                                      ldr r5, [pc, #0x38]
006e0cf8  00 40 a0 e1                                      mov r4, r0
006e0cfc  9b 12 fc eb                                      bl #0x5e5770
006e0d00  30 30 9f e5                                      ldr r3, [pc, #0x30]
006e0d04  05 50 8f e0                                      add r5, pc, r5
006e0d08  04 00 a0 e1                                      mov r0, r4
006e0d0c  03 30 95 e7                                      ldr r3, [r5, r3]
006e0d10  08 30 83 e2                                      add r3, r3, #8
006e0d14  54 30 80 e4                                      str r3, [r0], #0x54
006e0d18  b9 fe ff eb                                      bl #0x6e0804
006e0d1c  00 30 a0 e3                                      mov r3, #0
006e0d20  7c 30 84 e5                                      str r3, [r4, #0x7c]
006e0d24  00 30 e0 e3                                      mvn r3, #0
006e0d28  80 30 84 e5                                      str r3, [r4, #0x80]
006e0d2c  04 00 a0 e1                                      mov r0, r4
006e0d30  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e0d34  8c 3d 2b 00 e4 41 00 00                          .byte 0x8c, 0x3d, 0x2b, 0x00, 0xe4, 0x41, 0x00, 0x00

; FUNCTION 0x006e176c, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManagerD1Ev
; demangled: glitch::video::ICodeShaderManager::~ICodeShaderManager()
; decoder-mode: arm
006e176c  10 40 2d e9                                      push {r4, lr}
006e1770  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006e1774  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
006e1778  00 40 a0 e1                                      mov r4, r0
006e177c  03 30 8f e0                                      add r3, pc, r3
006e1780  7c 00 90 e5                                      ldr r0, [r0, #0x7c]
006e1784  02 20 93 e7                                      ldr r2, [r3, r2]
006e1788  00 00 50 e3                                      cmp r0, #0
006e178c  08 20 82 e2                                      add r2, r2, #8
006e1790  00 20 84 e5                                      str r2, [r4]
006e1794  00 00 00 0a                                      beq #0x6e179c
006e1798  46 b2 f0 eb                                      bl #0x30e0b8
006e179c  54 00 84 e2                                      add r0, r4, #0x54
006e17a0  ec ff ff eb                                      bl #0x6e1758
006e17a4  04 00 a0 e1                                      mov r0, r4
006e17a8  23 14 fc eb                                      bl #0x5e683c
006e17ac  04 00 a0 e1                                      mov r0, r4
006e17b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e17b4  14 33 2b 00 e4 41 00 00                          .byte 0x14, 0x33, 0x2b, 0x00, 0xe4, 0x41, 0x00, 0x00

; FUNCTION 0x006e17bc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManagerD0Ev
; demangled: glitch::video::ICodeShaderManager::~ICodeShaderManager()
; decoder-mode: arm
006e17bc  10 40 2d e9                                      push {r4, lr}
006e17c0  00 40 a0 e1                                      mov r4, r0
006e17c4  e8 ff ff eb                                      bl #0x6e176c
006e17c8  04 00 a0 e1                                      mov r0, r4
006e17cc  b7 b2 f0 eb                                      bl #0x30e2b0
006e17d0  04 00 a0 e1                                      mov r0, r4
006e17d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e17d8, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManagerD2Ev
; demangled: glitch::video::ICodeShaderManager::~ICodeShaderManager()
; decoder-mode: arm
006e17d8  10 40 2d e9                                      push {r4, lr}
006e17dc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006e17e0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
006e17e4  00 40 a0 e1                                      mov r4, r0
006e17e8  03 30 8f e0                                      add r3, pc, r3
006e17ec  7c 00 90 e5                                      ldr r0, [r0, #0x7c]
006e17f0  02 20 93 e7                                      ldr r2, [r3, r2]
006e17f4  00 00 50 e3                                      cmp r0, #0
006e17f8  08 20 82 e2                                      add r2, r2, #8
006e17fc  00 20 84 e5                                      str r2, [r4]
006e1800  00 00 00 0a                                      beq #0x6e1808
006e1804  2b b2 f0 eb                                      bl #0x30e0b8
006e1808  54 00 84 e2                                      add r0, r4, #0x54
006e180c  d1 ff ff eb                                      bl #0x6e1758
006e1810  04 00 a0 e1                                      mov r0, r4
006e1814  08 14 fc eb                                      bl #0x5e683c
006e1818  04 00 a0 e1                                      mov r0, r4
006e181c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e1820  a8 32 2b 00 e4 41 00 00                          .byte 0xa8, 0x32, 0x2b, 0x00, 0xe4, 0x41, 0x00, 0x00

; FUNCTION 0x006e1b08, declared_size=128, range_size=128, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZNK6glitch5video18ICodeShaderManager13getShaderCodeEPKc
; demangled: glitch::video::ICodeShaderManager::getShaderCode(char const*) const
; decoder-mode: arm
006e1b08  70 40 2d e9                                      push {r4, r5, r6, lr}
006e1b0c  01 40 a0 e1                                      mov r4, r1
006e1b10  00 50 a0 e1                                      mov r5, r0
006e1b14  02 10 a0 e1                                      mov r1, r2
006e1b18  54 00 84 e2                                      add r0, r4, #0x54
006e1b1c  e4 ff ff eb                                      bl #0x6e1ab4
006e1b20  58 60 9f e5                                      ldr r6, [pc, #0x58]
006e1b24  ff 3f 0f e3                                      movw r3, #0xffff
006e1b28  03 00 50 e1                                      cmp r0, r3
006e1b2c  00 30 a0 03                                      moveq r3, #0
006e1b30  06 60 8f e0                                      add r6, pc, r6
006e1b34  00 30 85 05                                      streq r3, [r5]
006e1b38  0b 00 00 0a                                      beq #0x6e1b6c
006e1b3c  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
006e1b40  70 20 94 e5                                      ldr r2, [r4, #0x70]
006e1b44  02 20 63 e0                                      rsb r2, r3, r2
006e1b48  c2 01 50 e1                                      cmp r0, r2, asr #3
006e1b4c  80 01 83 30                                      addlo r0, r3, r0, lsl #3
006e1b50  07 00 00 2a                                      bhs #0x6e1b74
006e1b54  00 30 90 e5                                      ldr r3, [r0]
006e1b58  00 00 53 e3                                      cmp r3, #0
006e1b5c  00 30 85 e5                                      str r3, [r5]
006e1b60  04 20 93 15                                      ldrne r2, [r3, #4]
006e1b64  01 20 82 12                                      addne r2, r2, #1
006e1b68  04 20 83 15                                      strne r2, [r3, #4]
006e1b6c  05 00 a0 e1                                      mov r0, r5
006e1b70  70 80 bd e8                                      pop {r4, r5, r6, pc}
006e1b74  08 30 9f e5                                      ldr r3, [pc, #8]
006e1b78  03 00 96 e7                                      ldr r0, [r6, r3]
006e1b7c  f4 ff ff ea                                      b #0x6e1b54
; mapping-symbol data/literal pool
006e1b80  60 2f 2b 00 4c 19 00 00                          .byte 0x60, 0x2f, 0x2b, 0x00, 0x4c, 0x19, 0x00, 0x00

; FUNCTION 0x006e1d70, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManager13addShaderCodeERKN5boost13intrusive_ptrINS0_11IShaderCodeEEE
; demangled: glitch::video::ICodeShaderManager::addShaderCode(boost::intrusive_ptr<glitch::video::IShaderCode> const&)
; decoder-mode: arm
006e1d70  00 30 91 e5                                      ldr r3, [r1]
006e1d74  01 20 a0 e1                                      mov r2, r1
006e1d78  54 00 80 e2                                      add r0, r0, #0x54
006e1d7c  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
006e1d80  00 30 a0 e3                                      mov r3, #0
006e1d84  94 ff ff ea                                      b #0x6e1bdc

; FUNCTION 0x006e2028, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManager23removeUnusedShaderCodesEv
; demangled: glitch::video::ICodeShaderManager::removeUnusedShaderCodes()
; decoder-mode: arm
006e2028  54 00 80 e2                                      add r0, r0, #0x54
006e202c  00 10 a0 e3                                      mov r1, #0
006e2030  c6 ff ff ea                                      b #0x6e1f50

; FUNCTION 0x006e2034, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::ICodeShaderManager
; alias: _ZN6glitch5video18ICodeShaderManager19removeUnusedShadersEv
; demangled: glitch::video::ICodeShaderManager::removeUnusedShaders()
; decoder-mode: arm
006e2034  70 40 2d e9                                      push {r4, r5, r6, lr}
006e2038  00 50 a0 e1                                      mov r5, r0
006e203c  db 11 fc eb                                      bl #0x5e67b0
006e2040  00 40 a0 e1                                      mov r4, r0
006e2044  05 00 a0 e1                                      mov r0, r5
006e2048  f6 ff ff eb                                      bl #0x6e2028
006e204c  04 00 a0 e1                                      mov r0, r4
006e2050  70 80 bd e8                                      pop {r4, r5, r6, pc}

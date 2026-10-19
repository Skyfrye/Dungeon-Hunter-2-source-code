; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051b3a4, declared_size=80, range_size=80, mode=arm
; class-group: OnScreenKeyboard
; alias: _ZN16OnScreenKeyboard11ClearStringEv
; demangled: OnScreenKeyboard::ClearString()
; decoder-mode: arm
0051b3a4  38 30 9f e5                                      ldr r3, [pc, #0x38]
0051b3a8  38 20 9f e5                                      ldr r2, [pc, #0x38]
0051b3ac  03 30 8f e0                                      add r3, pc, r3
0051b3b0  02 20 93 e7                                      ldr r2, [r3, r2]
0051b3b4  00 20 92 e5                                      ldr r2, [r2]
0051b3b8  00 00 52 e3                                      cmp r2, #0
0051b3bc  1e ff 2f 01                                      bxeq lr
0051b3c0  24 10 9f e5                                      ldr r1, [pc, #0x24]
0051b3c4  00 20 a0 e3                                      mov r2, #0
0051b3c8  01 00 93 e7                                      ldr r0, [r3, r1]
0051b3cc  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0051b3d0  01 10 93 e7                                      ldr r1, [r3, r1]
0051b3d4  00 30 90 e5                                      ldr r3, [r0]
0051b3d8  00 20 81 e5                                      str r2, [r1]
0051b3dc  00 20 c3 e5                                      strb r2, [r3]
0051b3e0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0051b3e4  e4 96 47 00 90 4b 00 00 e4 26 00 00 b0 14 00 00  .byte 0xe4, 0x96, 0x47, 0x00, 0x90, 0x4b, 0x00, 0x00, 0xe4, 0x26, 0x00, 0x00, 0xb0, 0x14, 0x00, 0x00

; FUNCTION 0x0051b3f4, declared_size=36, range_size=36, mode=arm
; class-group: OnScreenKeyboard
; alias: _ZN16OnScreenKeyboardC2Ev
; demangled: OnScreenKeyboard::OnScreenKeyboard()
; decoder-mode: arm
0051b3f4  14 30 9f e5                                      ldr r3, [pc, #0x14]
0051b3f8  14 20 9f e5                                      ldr r2, [pc, #0x14]
0051b3fc  03 30 8f e0                                      add r3, pc, r3
0051b400  02 20 93 e7                                      ldr r2, [r3, r2]
0051b404  08 20 82 e2                                      add r2, r2, #8
0051b408  00 20 80 e5                                      str r2, [r0]
0051b40c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0051b410  94 96 47 00 38 44 00 00                          .byte 0x94, 0x96, 0x47, 0x00, 0x38, 0x44, 0x00, 0x00

; FUNCTION 0x0051b418, declared_size=36, range_size=36, mode=arm
; class-group: OnScreenKeyboard
; alias: _ZN16OnScreenKeyboardC1Ev
; demangled: OnScreenKeyboard::OnScreenKeyboard()
; decoder-mode: arm
0051b418  14 30 9f e5                                      ldr r3, [pc, #0x14]
0051b41c  14 20 9f e5                                      ldr r2, [pc, #0x14]
0051b420  03 30 8f e0                                      add r3, pc, r3
0051b424  02 20 93 e7                                      ldr r2, [r3, r2]
0051b428  08 20 82 e2                                      add r2, r2, #8
0051b42c  00 20 80 e5                                      str r2, [r0]
0051b430  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0051b434  70 96 47 00 38 44 00 00                          .byte 0x70, 0x96, 0x47, 0x00, 0x38, 0x44, 0x00, 0x00

; FUNCTION 0x0051b43c, declared_size=4, range_size=4, mode=arm
; class-group: OnScreenKeyboard
; alias: _ZN16OnScreenKeyboardD2Ev
; demangled: OnScreenKeyboard::~OnScreenKeyboard()
; decoder-mode: arm
0051b43c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051b440, declared_size=4, range_size=4, mode=arm
; class-group: OnScreenKeyboard
; alias: _ZN16OnScreenKeyboardD1Ev
; demangled: OnScreenKeyboard::~OnScreenKeyboard()
; decoder-mode: arm
0051b440  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051b444, declared_size=324, range_size=324, mode=arm
; class-group: OnScreenKeyboard
; alias: _ZN16OnScreenKeyboard7onEventEPK6IEventPK12EventManager
; demangled: OnScreenKeyboard::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0051b444  70 40 2d e9                                      push {r4, r5, r6, lr}
0051b448  01 00 a0 e1                                      mov r0, r1
0051b44c  00 30 91 e5                                      ldr r3, [r1]
0051b450  01 50 a0 e1                                      mov r5, r1
0051b454  0f e0 a0 e1                                      mov lr, pc
0051b458  08 f0 93 e5                                      ldr pc, [r3, #8]
0051b45c  08 41 9f e5                                      ldr r4, [pc, #0x108]
0051b460  00 20 50 e2                                      subs r2, r0, #0
0051b464  04 40 8f e0                                      add r4, pc, r4
0051b468  21 00 00 1a                                      bne #0x51b4f4
0051b46c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0051b470  0d 00 53 e3                                      cmp r3, #0xd
0051b474  19 00 00 0a                                      beq #0x51b4e0
0051b478  08 00 53 e3                                      cmp r3, #8
0051b47c  1e 00 00 0a                                      beq #0x51b4fc
0051b480  08 30 95 e5                                      ldr r3, [r5, #8]
0051b484  00 00 53 e3                                      cmp r3, #0
0051b488  17 00 00 0a                                      beq #0x51b4ec
0051b48c  10 20 d5 e5                                      ldrb r2, [r5, #0x10]
0051b490  00 00 52 e3                                      cmp r2, #0
0051b494  14 00 00 0a                                      beq #0x51b4ec
0051b498  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
0051b49c  02 10 94 e7                                      ldr r1, [r4, r2]
0051b4a0  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
0051b4a4  00 00 91 e5                                      ldr r0, [r1]
0051b4a8  02 20 94 e7                                      ldr r2, [r4, r2]
0051b4ac  01 00 40 e2                                      sub r0, r0, #1
0051b4b0  00 10 92 e5                                      ldr r1, [r2]
0051b4b4  01 00 50 e1                                      cmp r0, r1
0051b4b8  0b 00 00 9a                                      bls #0x51b4ec
0051b4bc  b4 c0 9f e5                                      ldr ip, [pc, #0xb4]
0051b4c0  01 00 a0 e3                                      mov r0, #1
0051b4c4  0c c0 94 e7                                      ldr ip, [r4, ip]
0051b4c8  00 c0 9c e5                                      ldr ip, [ip]
0051b4cc  01 30 cc e7                                      strb r3, [ip, r1]
0051b4d0  00 30 92 e5                                      ldr r3, [r2]
0051b4d4  00 30 83 e0                                      add r3, r3, r0
0051b4d8  00 30 82 e5                                      str r3, [r2]
0051b4dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0051b4e0  10 10 d5 e5                                      ldrb r1, [r5, #0x10]
0051b4e4  00 00 51 e3                                      cmp r1, #0
0051b4e8  13 00 00 0a                                      beq #0x51b53c
0051b4ec  01 00 a0 e3                                      mov r0, #1
0051b4f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0051b4f4  00 00 a0 e3                                      mov r0, #0
0051b4f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0051b4fc  10 30 d5 e5                                      ldrb r3, [r5, #0x10]
0051b500  00 00 53 e3                                      cmp r3, #0
0051b504  f8 ff ff 0a                                      beq #0x51b4ec
0051b508  64 30 9f e5                                      ldr r3, [pc, #0x64]
0051b50c  03 30 94 e7                                      ldr r3, [r4, r3]
0051b510  00 10 93 e5                                      ldr r1, [r3]
0051b514  00 00 51 e3                                      cmp r1, #0
0051b518  f3 ff ff 0a                                      beq #0x51b4ec
0051b51c  01 10 41 e2                                      sub r1, r1, #1
0051b520  00 10 83 e5                                      str r1, [r3]
0051b524  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0051b528  01 00 a0 e3                                      mov r0, #1
0051b52c  03 30 94 e7                                      ldr r3, [r4, r3]
0051b530  00 30 93 e5                                      ldr r3, [r3]
0051b534  01 20 c3 e7                                      strb r2, [r3, r1]
0051b538  70 80 bd e8                                      pop {r4, r5, r6, pc}
0051b53c  38 30 9f e5                                      ldr r3, [pc, #0x38]
0051b540  38 20 9f e5                                      ldr r2, [pc, #0x38]
0051b544  03 30 94 e7                                      ldr r3, [r4, r3]
0051b548  02 20 94 e7                                      ldr r2, [r4, r2]
0051b54c  14 00 93 e5                                      ldr r0, [r3, #0x14]
0051b550  f1 72 f8 eb                                      bl #0x33811c
0051b554  28 20 9f e5                                      ldr r2, [pc, #0x28]
0051b558  01 30 a0 e3                                      mov r3, #1
0051b55c  03 00 a0 e1                                      mov r0, r3
0051b560  02 20 94 e7                                      ldr r2, [r4, r2]
0051b564  00 30 c2 e5                                      strb r3, [r2]
0051b568  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0051b56c  2c 96 47 00 90 4b 00 00 b0 14 00 00 e4 26 00 00  .byte 0x2c, 0x96, 0x47, 0x00, 0x90, 0x4b, 0x00, 0x00, 0xb0, 0x14, 0x00, 0x00, 0xe4, 0x26, 0x00, 0x00
0051b57c  f4 37 00 00 00 2b 00 00 30 29 00 00              .byte 0xf4, 0x37, 0x00, 0x00, 0x00, 0x2b, 0x00, 0x00, 0x30, 0x29, 0x00, 0x00

; FUNCTION 0x0051b588, declared_size=76, range_size=76, mode=arm
; class-group: OnScreenKeyboard
; alias: _ZN16OnScreenKeyboard15ReleaseKeyboardEv
; demangled: OnScreenKeyboard::ReleaseKeyboard()
; decoder-mode: arm
0051b588  10 40 2d e9                                      push {r4, lr}
0051b58c  30 40 9f e5                                      ldr r4, [pc, #0x30]
0051b590  30 30 9f e5                                      ldr r3, [pc, #0x30]
0051b594  30 20 9f e5                                      ldr r2, [pc, #0x30]
0051b598  04 40 8f e0                                      add r4, pc, r4
0051b59c  03 30 94 e7                                      ldr r3, [r4, r3]
0051b5a0  02 20 94 e7                                      ldr r2, [r4, r2]
0051b5a4  00 10 a0 e3                                      mov r1, #0
0051b5a8  14 00 93 e5                                      ldr r0, [r3, #0x14]
0051b5ac  da 72 f8 eb                                      bl #0x33811c
0051b5b0  18 30 9f e5                                      ldr r3, [pc, #0x18]
0051b5b4  01 20 a0 e3                                      mov r2, #1
0051b5b8  03 30 94 e7                                      ldr r3, [r4, r3]
0051b5bc  00 20 c3 e5                                      strb r2, [r3]
0051b5c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0051b5c4  f8 94 47 00 f4 37 00 00 00 2b 00 00 30 29 00 00  .byte 0xf8, 0x94, 0x47, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x00, 0x2b, 0x00, 0x00, 0x30, 0x29, 0x00, 0x00

; FUNCTION 0x0051b5d4, declared_size=28, range_size=28, mode=arm
; class-group: OnScreenKeyboard
; alias: _ZN16OnScreenKeyboardD0Ev
; demangled: OnScreenKeyboard::~OnScreenKeyboard()
; decoder-mode: arm
0051b5d4  10 40 2d e9                                      push {r4, lr}
0051b5d8  00 40 a0 e1                                      mov r4, r0
0051b5dc  97 ff ff eb                                      bl #0x51b440
0051b5e0  04 00 a0 e1                                      mov r0, r4
0051b5e4  95 d3 f7 eb                                      bl #0x310440
0051b5e8  04 00 a0 e1                                      mov r0, r4
0051b5ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0051b5f0, declared_size=404, range_size=404, mode=arm
; class-group: OnScreenKeyboard
; alias: _ZN16OnScreenKeyboard9GetStringEPKcPcjS1_
; demangled: OnScreenKeyboard::GetString(char const*, char*, unsigned int, char const*)
; decoder-mode: arm
0051b5f0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0051b5f4  54 41 9f e5                                      ldr r4, [pc, #0x154]
0051b5f8  54 51 9f e5                                      ldr r5, [pc, #0x154]
0051b5fc  01 60 a0 e1                                      mov r6, r1
0051b600  04 40 8f e0                                      add r4, pc, r4
0051b604  05 10 94 e7                                      ldr r1, [r4, r5]
0051b608  03 70 a0 e1                                      mov r7, r3
0051b60c  0c d0 4d e2                                      sub sp, sp, #0xc
0051b610  00 30 d1 e5                                      ldrb r3, [r1]
0051b614  02 a0 a0 e1                                      mov sl, r2
0051b618  00 00 53 e3                                      cmp r3, #0
0051b61c  2c 00 00 1a                                      bne #0x51b6d4
0051b620  30 81 9f e5                                      ldr r8, [pc, #0x130]
0051b624  08 30 94 e7                                      ldr r3, [r4, r8]
0051b628  00 30 d3 e5                                      ldrb r3, [r3]
0051b62c  00 00 53 e3                                      cmp r3, #0
0051b630  27 00 00 0a                                      beq #0x51b6d4
0051b634  00 00 56 e3                                      cmp r6, #0
0051b638  28 00 00 0a                                      beq #0x51b6e0
0051b63c  18 31 9f e5                                      ldr r3, [pc, #0x118]
0051b640  08 20 94 e7                                      ldr r2, [r4, r8]
0051b644  05 10 94 e7                                      ldr r1, [r4, r5]
0051b648  03 80 94 e7                                      ldr r8, [r4, r3]
0051b64c  01 00 a0 e3                                      mov r0, #1
0051b650  00 30 a0 e3                                      mov r3, #0
0051b654  00 00 57 e3                                      cmp r7, #0
0051b658  00 00 c1 e5                                      strb r0, [r1]
0051b65c  00 30 c2 e5                                      strb r3, [r2]
0051b660  00 30 88 e5                                      str r3, [r8]
0051b664  32 00 00 0a                                      beq #0x51b734
0051b668  07 00 a0 e1                                      mov r0, r7
0051b66c  f8 c9 f7 eb                                      bl #0x30de54
0051b670  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
0051b674  00 30 a0 e1                                      mov r3, r0
0051b678  07 10 a0 e1                                      mov r1, r7
0051b67c  02 e0 94 e7                                      ldr lr, [r4, r2]
0051b680  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0051b684  06 00 a0 e1                                      mov r0, r6
0051b688  00 30 88 e5                                      str r3, [r8]
0051b68c  02 c0 94 e7                                      ldr ip, [r4, r2]
0051b690  00 60 8e e5                                      str r6, [lr]
0051b694  03 20 a0 e1                                      mov r2, r3
0051b698  00 a0 8c e5                                      str sl, [ip]
0051b69c  e0 c9 f7 eb                                      bl #0x30de24
0051b6a0  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
0051b6a4  00 10 a0 e3                                      mov r1, #0
0051b6a8  03 00 94 e7                                      ldr r0, [r4, r3]
0051b6ac  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0051b6b0  14 00 90 e5                                      ldr r0, [r0, #0x14]
0051b6b4  03 20 94 e7                                      ldr r2, [r4, r3]
0051b6b8  02 31 e0 e3                                      mvn r3, #0x80000000
0051b6bc  b7 75 f8 eb                                      bl #0x338da0
0051b6c0  05 30 94 e7                                      ldr r3, [r4, r5]
0051b6c4  00 20 a0 e3                                      mov r2, #0
0051b6c8  01 00 a0 e3                                      mov r0, #1
0051b6cc  00 20 c3 e5                                      strb r2, [r3]
0051b6d0  00 00 00 ea                                      b #0x51b6d8
0051b6d4  00 00 a0 e3                                      mov r0, #0
0051b6d8  0c d0 8d e2                                      add sp, sp, #0xc
0051b6dc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0051b6e0  88 30 9f e5                                      ldr r3, [pc, #0x88]
0051b6e4  03 30 94 e7                                      ldr r3, [r4, r3]
0051b6e8  00 30 93 e5                                      ldr r3, [r3]
0051b6ec  02 00 53 e3                                      cmp r3, #2
0051b6f0  00 60 86 05                                      streq r6, [r6]
0051b6f4  d0 ff ff 0a                                      beq #0x51b63c
0051b6f8  01 00 53 e3                                      cmp r3, #1
0051b6fc  ce ff ff 1a                                      bne #0x51b63c
0051b700  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
0051b704  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0051b708  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0051b70c  00 00 94 e7                                      ldr r0, [r4, r0]
0051b710  68 30 9f e5                                      ldr r3, [pc, #0x68]
0051b714  62 c0 a0 e3                                      mov ip, #0x62
0051b718  01 10 8f e0                                      add r1, pc, r1
0051b71c  02 20 8f e0                                      add r2, pc, r2
0051b720  03 30 8f e0                                      add r3, pc, r3
0051b724  a8 00 80 e2                                      add r0, r0, #0xa8
0051b728  00 c0 8d e5                                      str ip, [sp]
0051b72c  34 ca f7 eb                                      bl #0x30e004
0051b730  c1 ff ff ea                                      b #0x51b63c
0051b734  24 30 9f e5                                      ldr r3, [pc, #0x24]
0051b738  03 20 94 e7                                      ldr r2, [r4, r3]
0051b73c  20 30 9f e5                                      ldr r3, [pc, #0x20]
0051b740  00 60 82 e5                                      str r6, [r2]
0051b744  03 30 94 e7                                      ldr r3, [r4, r3]
0051b748  00 a0 83 e5                                      str sl, [r3]
0051b74c  d3 ff ff ea                                      b #0x51b6a0
; mapping-symbol data/literal pool
0051b750  90 94 47 00 f8 34 00 00 30 29 00 00 b0 14 00 00  .byte 0x90, 0x94, 0x47, 0x00, 0xf8, 0x34, 0x00, 0x00, 0x30, 0x29, 0x00, 0x00, 0xb0, 0x14, 0x00, 0x00
0051b760  e4 26 00 00 90 4b 00 00 f4 37 00 00 00 2b 00 00  .byte 0xe4, 0x26, 0x00, 0x00, 0x90, 0x4b, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x00, 0x2b, 0x00, 0x00
0051b770  c0 39 00 00 c0 19 00 00 c0 2c 3a 00 54 11 3c 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc0, 0x2c, 0x3a, 0x00, 0x54, 0x11, 0x3c, 0x00
0051b780  60 11 3c 00                                      .byte 0x60, 0x11, 0x3c, 0x00

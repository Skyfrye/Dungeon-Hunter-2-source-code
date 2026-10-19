; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039b26c, declared_size=16, range_size=16, mode=arm
; class-group: TriggerZone
; alias: _ZN11TriggerZone11setUpdatingEb
; demangled: TriggerZone::setUpdating(bool)
; decoder-mode: arm
0039b26c  00 00 51 e3                                      cmp r1, #0
0039b270  85 10 c0 e5                                      strb r1, [r0, #0x85]
0039b274  b4 17 c0 05                                      strbeq r1, [r0, #0x7b4]
0039b278  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039b27c, declared_size=36, range_size=36, mode=arm
; class-group: TriggerZone
; alias: _ZNK11TriggerZone21IsDoorClosedActivatedEv
; demangled: TriggerZone::IsDoorClosedActivated() const
; decoder-mode: arm
0039b27c  b8 07 90 e5                                      ldr r0, [r0, #0x7b8]
0039b280  00 00 50 e3                                      cmp r0, #0
0039b284  1e ff 2f 01                                      bxeq lr
0039b288  a8 03 90 e5                                      ldr r0, [r0, #0x3a8]
0039b28c  01 00 50 e3                                      cmp r0, #1
0039b290  03 00 50 13                                      cmpne r0, #3
0039b294  00 00 a0 13                                      movne r0, #0
0039b298  01 00 a0 03                                      moveq r0, #1
0039b29c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039b2a0, declared_size=84, range_size=84, mode=arm
; class-group: TriggerZone
; alias: _ZNK11TriggerZone23SafeStartScriptOnlyOnceEi
; demangled: TriggerZone::SafeStartScriptOnlyOnce(int) const
; decoder-mode: arm
0039b2a0  44 30 9f e5                                      ldr r3, [pc, #0x44]
0039b2a4  01 00 71 e3                                      cmn r1, #1
0039b2a8  70 40 2d e9                                      push {r4, r5, r6, lr}
0039b2ac  03 30 8f e0                                      add r3, pc, r3
0039b2b0  01 40 a0 e1                                      mov r4, r1
0039b2b4  00 60 a0 e1                                      mov r6, r0
0039b2b8  0a 00 00 0a                                      beq #0x39b2e8
0039b2bc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0039b2c0  02 50 93 e7                                      ldr r5, [r3, r2]
0039b2c4  05 00 a0 e1                                      mov r0, r5
0039b2c8  47 ea 02 eb                                      bl #0x455bec
0039b2cc  00 30 50 e2                                      subs r3, r0, #0
0039b2d0  04 00 00 1a                                      bne #0x39b2e8
0039b2d4  64 20 96 e5                                      ldr r2, [r6, #0x64]
0039b2d8  05 00 a0 e1                                      mov r0, r5
0039b2dc  04 10 a0 e1                                      mov r1, r4
0039b2e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0039b2e4  b5 14 03 ea                                      b #0x4605c0
0039b2e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039b2ec  e4 97 5f 00 20 1a 00 00                          .byte 0xe4, 0x97, 0x5f, 0x00, 0x20, 0x1a, 0x00, 0x00

; FUNCTION 0x0039b2f4, declared_size=96, range_size=96, mode=arm
; class-group: TriggerZone
; alias: _ZN11TriggerZone10HideMarkerEv
; demangled: TriggerZone::HideMarker()
; decoder-mode: arm
0039b2f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0039b2f8  b0 37 90 e5                                      ldr r3, [r0, #0x7b0]
0039b2fc  48 40 9f e5                                      ldr r4, [pc, #0x48]
0039b300  00 50 a0 e1                                      mov r5, r0
0039b304  00 00 53 e3                                      cmp r3, #0
0039b308  04 40 8f e0                                      add r4, pc, r4
0039b30c  0d 00 00 0a                                      beq #0x39b348
0039b310  00 60 a0 e3                                      mov r6, #0
0039b314  03 00 a0 e1                                      mov r0, r3
0039b318  28 60 83 e5                                      str r6, [r3, #0x28]
0039b31c  01 10 a0 e3                                      mov r1, #1
0039b320  05 70 a0 e1                                      mov r7, r5
0039b324  dd dd 03 eb                                      bl #0x492aa0
0039b328  b0 07 b7 e5                                      ldr r0, [r7, #0x7b0]!
0039b32c  06 10 a0 e1                                      mov r1, r6
0039b330  ee de 03 eb                                      bl #0x492ef0
0039b334  14 30 9f e5                                      ldr r3, [pc, #0x14]
0039b338  07 10 a0 e1                                      mov r1, r7
0039b33c  03 00 94 e7                                      ldr r0, [r4, r3]
0039b340  8c e5 03 eb                                      bl #0x494978
0039b344  b0 67 85 e5                                      str r6, [r5, #0x7b0]
0039b348  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0039b34c  88 97 5f 00 08 1b 00 00                          .byte 0x88, 0x97, 0x5f, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x0039b354, declared_size=260, range_size=260, mode=arm
; class-group: TriggerZone
; alias: _ZN11TriggerZone10ShowMarkerEv
; demangled: TriggerZone::ShowMarker()
; decoder-mode: arm
0039b354  30 40 2d e9                                      push {r4, r5, lr}
0039b358  ac 17 90 e5                                      ldr r1, [r0, #0x7ac]
0039b35c  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
0039b360  0c d0 4d e2                                      sub sp, sp, #0xc
0039b364  01 00 71 e3                                      cmn r1, #1
0039b368  00 40 a0 e1                                      mov r4, r0
0039b36c  05 50 8f e0                                      add r5, pc, r5
0039b370  21 00 00 0a                                      beq #0x39b3fc
0039b374  b0 37 90 e5                                      ldr r3, [r0, #0x7b0]
0039b378  00 00 53 e3                                      cmp r3, #0
0039b37c  08 00 00 0a                                      beq #0x39b3a4
0039b380  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0039b384  03 30 95 e7                                      ldr r3, [r5, r3]
0039b388  00 30 93 e5                                      ldr r3, [r3]
0039b38c  02 00 53 e3                                      cmp r3, #2
0039b390  00 30 a0 03                                      moveq r3, #0
0039b394  00 30 83 05                                      streq r3, [r3]
0039b398  01 00 00 0a                                      beq #0x39b3a4
0039b39c  01 00 53 e3                                      cmp r3, #1
0039b3a0  17 00 00 0a                                      beq #0x39b404
0039b3a4  98 30 9f e5                                      ldr r3, [pc, #0x98]
0039b3a8  00 20 a0 e3                                      mov r2, #0
0039b3ac  03 00 95 e7                                      ldr r0, [r5, r3]
0039b3b0  1e e8 03 eb                                      bl #0x495430
0039b3b4  00 00 50 e3                                      cmp r0, #0
0039b3b8  b0 07 84 e5                                      str r0, [r4, #0x7b0]
0039b3bc  0e 00 00 0a                                      beq #0x39b3fc
0039b3c0  28 40 80 e5                                      str r4, [r0, #0x28]
0039b3c4  01 10 a0 e3                                      mov r1, #1
0039b3c8  b4 dd 03 eb                                      bl #0x492aa0
0039b3cc  01 10 a0 e3                                      mov r1, #1
0039b3d0  b0 07 94 e5                                      ldr r0, [r4, #0x7b0]
0039b3d4  c5 de 03 eb                                      bl #0x492ef0
0039b3d8  b0 07 94 e5                                      ldr r0, [r4, #0x7b0]
0039b3dc  a6 dc 03 eb                                      bl #0x49267c
0039b3e0  00 30 90 e5                                      ldr r3, [r0]
0039b3e4  0f e0 a0 e1                                      mov lr, pc
0039b3e8  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0039b3ec  01 10 a0 e3                                      mov r1, #1
0039b3f0  00 30 90 e5                                      ldr r3, [r0]
0039b3f4  0f e0 a0 e1                                      mov lr, pc
0039b3f8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0039b3fc  0c d0 8d e2                                      add sp, sp, #0xc
0039b400  30 80 bd e8                                      pop {r4, r5, pc}
0039b404  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0039b408  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0039b40c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0039b410  00 00 95 e7                                      ldr r0, [r5, r0]
0039b414  38 30 9f e5                                      ldr r3, [pc, #0x38]
0039b418  01 10 8f e0                                      add r1, pc, r1
0039b41c  2a c1 00 e3                                      movw ip, #0x12a
0039b420  a8 00 80 e2                                      add r0, r0, #0xa8
0039b424  02 20 8f e0                                      add r2, pc, r2
0039b428  03 30 8f e0                                      add r3, pc, r3
0039b42c  00 c0 8d e5                                      str ip, [sp]
0039b430  f3 ca fd eb                                      bl #0x30e004
0039b434  ac 17 94 e5                                      ldr r1, [r4, #0x7ac]
0039b438  d9 ff ff ea                                      b #0x39b3a4
; mapping-symbol data/literal pool
0039b43c  24 97 5f 00 c0 39 00 00 08 1b 00 00 c0 19 00 00  .byte 0x24, 0x97, 0x5f, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0039b44c  c0 2f 52 00 1c 78 52 00 38 78 52 00              .byte 0xc0, 0x2f, 0x52, 0x00, 0x1c, 0x78, 0x52, 0x00, 0x38, 0x78, 0x52, 0x00

; FUNCTION 0x0039b458, declared_size=756, range_size=756, mode=arm
; class-group: TriggerZone
; alias: _ZN11TriggerZone6UpdateEv
; demangled: TriggerZone::Update()
; decoder-mode: arm
0039b458  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0039b45c  e0 42 9f e5                                      ldr r4, [pc, #0x2e0]
0039b460  e0 62 9f e5                                      ldr r6, [pc, #0x2e0]
0039b464  04 d0 4d e2                                      sub sp, sp, #4
0039b468  04 40 8f e0                                      add r4, pc, r4
0039b46c  06 30 94 e7                                      ldr r3, [r4, r6]
0039b470  00 50 a0 e1                                      mov r5, r0
0039b474  00 10 a0 e3                                      mov r1, #0
0039b478  40 70 93 e5                                      ldr r7, [r3, #0x40]
0039b47c  01 20 a0 e3                                      mov r2, #1
0039b480  07 00 a0 e1                                      mov r0, r7
0039b484  fb 4b ff eb                                      bl #0x36e478
0039b488  60 36 90 e5                                      ldr r3, [r0, #0x660]
0039b48c  00 00 53 e3                                      cmp r3, #0
0039b490  05 00 00 0a                                      beq #0x39b4ac
0039b494  52 2d a0 e3                                      mov r2, #0x1480
0039b498  02 30 d3 e7                                      ldrb r3, [r3, r2]
0039b49c  00 00 53 e3                                      cmp r3, #0
0039b4a0  01 00 00 0a                                      beq #0x39b4ac
0039b4a4  04 d0 8d e2                                      add sp, sp, #4
0039b4a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0039b4ac  05 00 a0 e1                                      mov r0, r5
0039b4b0  71 ff ff eb                                      bl #0x39b27c
0039b4b4  00 00 50 e3                                      cmp r0, #0
0039b4b8  f9 ff ff 1a                                      bne #0x39b4a4
0039b4bc  05 00 a0 e1                                      mov r0, r5
0039b4c0  b9 f4 ff eb                                      bl #0x3987ac
0039b4c4  00 00 50 e3                                      cmp r0, #0
0039b4c8  f5 ff ff 0a                                      beq #0x39b4a4
0039b4cc  05 00 a0 e1                                      mov r0, r5
0039b4d0  a2 bd ff eb                                      bl #0x38ab60
0039b4d4  00 00 50 e3                                      cmp r0, #0
0039b4d8  f1 ff ff 0a                                      beq #0x39b4a4
0039b4dc  ac 88 11 eb                                      bl #0x7fd794
0039b4e0  05 30 d0 e5                                      ldrb r3, [r0, #5]
0039b4e4  00 00 53 e3                                      cmp r3, #0
0039b4e8  59 00 00 1a                                      bne #0x39b654
0039b4ec  05 00 a0 e1                                      mov r0, r5
0039b4f0  d0 f4 ff eb                                      bl #0x398838
0039b4f4  c4 76 97 e5                                      ldr r7, [r7, #0x6c4]
0039b4f8  a5 88 11 eb                                      bl #0x7fd794
0039b4fc  05 30 d0 e5                                      ldrb r3, [r0, #5]
0039b500  00 00 53 e3                                      cmp r3, #0
0039b504  6a 00 00 1a                                      bne #0x39b6b4
0039b508  05 00 a0 e1                                      mov r0, r5
0039b50c  b9 f4 ff eb                                      bl #0x3987f8
0039b510  00 90 a0 e1                                      mov sb, r0
0039b514  c0 03 85 e5                                      str r0, [r5, #0x3c0]
0039b518  74 37 95 e5                                      ldr r3, [r5, #0x774]
0039b51c  90 a7 95 e5                                      ldr sl, [r5, #0x790]
0039b520  01 00 73 e3                                      cmn r3, #1
0039b524  03 b0 a0 11                                      movne fp, r3
0039b528  3c b7 95 05                                      ldreq fp, [r5, #0x73c]
0039b52c  01 00 7a e3                                      cmn sl, #1
0039b530  58 a7 95 05                                      ldreq sl, [r5, #0x758]
0039b534  01 00 73 e3                                      cmn r3, #1
0039b538  65 00 00 0a                                      beq #0x39b6d4
0039b53c  07 00 59 e1                                      cmp sb, r7
0039b540  00 80 a0 13                                      movne r8, #0
0039b544  01 80 a0 03                                      moveq r8, #1
0039b548  06 30 94 e7                                      ldr r3, [r4, r6]
0039b54c  00 10 a0 e3                                      mov r1, #0
0039b550  01 20 a0 e3                                      mov r2, #1
0039b554  40 00 93 e5                                      ldr r0, [r3, #0x40]
0039b558  c6 4b ff eb                                      bl #0x36e478
0039b55c  01 60 79 e2                                      rsbs r6, sb, #1
0039b560  00 60 a0 33                                      movlo r6, #0
0039b564  00 00 58 e3                                      cmp r8, #0
0039b568  60 46 90 e5                                      ldr r4, [r0, #0x660]
0039b56c  3f 00 00 0a                                      beq #0x39b670
0039b570  bc 33 d5 e5                                      ldrb r3, [r5, #0x3bc]
0039b574  00 00 53 e3                                      cmp r3, #0
0039b578  3e 00 00 0a                                      beq #0x39b678
0039b57c  00 00 54 e3                                      cmp r4, #0
0039b580  04 60 a0 01                                      moveq r6, r4
0039b584  12 00 00 0a                                      beq #0x39b5d4
0039b588  05 00 a0 e1                                      mov r0, r5
0039b58c  04 10 a0 e1                                      mov r1, r4
0039b590  e0 bf ff eb                                      bl #0x38b518
0039b594  00 00 50 e3                                      cmp r0, #0
0039b598  34 00 00 1a                                      bne #0x39b670
0039b59c  bc 33 d5 e5                                      ldrb r3, [r5, #0x3bc]
0039b5a0  00 80 a0 e1                                      mov r8, r0
0039b5a4  00 00 53 e3                                      cmp r3, #0
0039b5a8  07 00 00 0a                                      beq #0x39b5cc
0039b5ac  00 00 54 e3                                      cmp r4, #0
0039b5b0  25 00 00 0a                                      beq #0x39b64c
0039b5b4  04 10 a0 e1                                      mov r1, r4
0039b5b8  05 00 a0 e1                                      mov r0, r5
0039b5bc  d5 bf ff eb                                      bl #0x38b518
0039b5c0  00 00 50 e3                                      cmp r0, #0
0039b5c4  01 60 a0 03                                      moveq r6, #1
0039b5c8  1f 00 00 1a                                      bne #0x39b64c
0039b5cc  00 00 58 e3                                      cmp r8, #0
0039b5d0  28 00 00 1a                                      bne #0x39b678
0039b5d4  b4 37 d5 e5                                      ldrb r3, [r5, #0x7b4]
0039b5d8  00 00 53 e3                                      cmp r3, #0
0039b5dc  28 00 00 1a                                      bne #0x39b684
0039b5e0  01 00 57 e3                                      cmp r7, #1
0039b5e4  ae ff ff da                                      ble #0x39b4a4
0039b5e8  bc 33 d5 e5                                      ldrb r3, [r5, #0x3bc]
0039b5ec  00 00 53 e3                                      cmp r3, #0
0039b5f0  ab ff ff 1a                                      bne #0x39b4a4
0039b5f4  74 37 95 e5                                      ldr r3, [r5, #0x774]
0039b5f8  01 00 73 e3                                      cmn r3, #1
0039b5fc  a8 ff ff 0a                                      beq #0x39b4a4
0039b600  3c 17 95 e5                                      ldr r1, [r5, #0x73c]
0039b604  01 00 71 e3                                      cmn r1, #1
0039b608  a5 ff ff 0a                                      beq #0x39b4a4
0039b60c  b5 37 d5 e5                                      ldrb r3, [r5, #0x7b5]
0039b610  00 00 59 e3                                      cmp sb, #0
0039b614  00 90 a0 d3                                      movle sb, #0
0039b618  01 90 a0 c3                                      movgt sb, #1
0039b61c  00 00 53 e3                                      cmp r3, #0
0039b620  2f 00 00 1a                                      bne #0x39b6e4
0039b624  00 00 59 e3                                      cmp sb, #0
0039b628  9d ff ff 0a                                      beq #0x39b4a4
0039b62c  05 00 a0 e1                                      mov r0, r5
0039b630  1a ff ff eb                                      bl #0x39b2a0
0039b634  01 30 a0 e3                                      mov r3, #1
0039b638  05 00 a0 e1                                      mov r0, r5
0039b63c  b5 37 c5 e5                                      strb r3, [r5, #0x7b5]
0039b640  04 d0 8d e2                                      add sp, sp, #4
0039b644  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0039b648  41 ff ff ea                                      b #0x39b354
0039b64c  00 60 a0 e3                                      mov r6, #0
0039b650  dd ff ff ea                                      b #0x39b5cc
0039b654  00 30 95 e5                                      ldr r3, [r5]
0039b658  05 00 a0 e1                                      mov r0, r5
0039b65c  0f e0 a0 e1                                      mov lr, pc
0039b660  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0039b664  00 00 50 e3                                      cmp r0, #0
0039b668  8d ff ff 1a                                      bne #0x39b4a4
0039b66c  9e ff ff ea                                      b #0x39b4ec
0039b670  bc 33 d5 e5                                      ldrb r3, [r5, #0x3bc]
0039b674  ca ff ff ea                                      b #0x39b5a4
0039b678  b4 37 d5 e5                                      ldrb r3, [r5, #0x7b4]
0039b67c  00 00 53 e3                                      cmp r3, #0
0039b680  21 00 00 0a                                      beq #0x39b70c
0039b684  00 00 56 e3                                      cmp r6, #0
0039b688  d4 ff ff 0a                                      beq #0x39b5e0
0039b68c  00 30 a0 e3                                      mov r3, #0
0039b690  01 00 7a e3                                      cmn sl, #1
0039b694  b4 37 c5 e5                                      strb r3, [r5, #0x7b4]
0039b698  d0 ff ff 0a                                      beq #0x39b5e0
0039b69c  05 00 a0 e1                                      mov r0, r5
0039b6a0  0a 10 a0 e1                                      mov r1, sl
0039b6a4  fd fe ff eb                                      bl #0x39b2a0
0039b6a8  05 00 a0 e1                                      mov r0, r5
0039b6ac  38 f4 ff eb                                      bl #0x398794
0039b6b0  ca ff ff ea                                      b #0x39b5e0
0039b6b4  00 30 95 e5                                      ldr r3, [r5]
0039b6b8  05 00 a0 e1                                      mov r0, r5
0039b6bc  0f e0 a0 e1                                      mov lr, pc
0039b6c0  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0039b6c4  00 00 50 e3                                      cmp r0, #0
0039b6c8  c0 93 95 15                                      ldrne sb, [r5, #0x3c0]
0039b6cc  91 ff ff 1a                                      bne #0x39b518
0039b6d0  8c ff ff ea                                      b #0x39b508
0039b6d4  00 00 59 e3                                      cmp sb, #0
0039b6d8  00 80 a0 d3                                      movle r8, #0
0039b6dc  01 80 a0 c3                                      movgt r8, #1
0039b6e0  98 ff ff ea                                      b #0x39b548
0039b6e4  00 00 59 e3                                      cmp sb, #0
0039b6e8  6d ff ff 1a                                      bne #0x39b4a4
0039b6ec  05 00 a0 e1                                      mov r0, r5
0039b6f0  b5 97 c5 e5                                      strb sb, [r5, #0x7b5]
0039b6f4  58 17 95 e5                                      ldr r1, [r5, #0x758]
0039b6f8  e8 fe ff eb                                      bl #0x39b2a0
0039b6fc  05 00 a0 e1                                      mov r0, r5
0039b700  04 d0 8d e2                                      add sp, sp, #4
0039b704  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0039b708  f9 fe ff ea                                      b #0x39b2f4
0039b70c  01 30 a0 e3                                      mov r3, #1
0039b710  b4 37 c5 e5                                      strb r3, [r5, #0x7b4]
0039b714  0b 10 a0 e1                                      mov r1, fp
0039b718  05 00 a0 e1                                      mov r0, r5
0039b71c  df fe ff eb                                      bl #0x39b2a0
0039b720  ac 33 95 e5                                      ldr r3, [r5, #0x3ac]
0039b724  05 00 a0 e1                                      mov r0, r5
0039b728  b8 33 85 e5                                      str r3, [r5, #0x3b8]
0039b72c  f0 fe ff eb                                      bl #0x39b2f4
0039b730  01 00 7a e3                                      cmn sl, #1
0039b734  a6 ff ff 1a                                      bne #0x39b5d4
0039b738  05 00 a0 e1                                      mov r0, r5
0039b73c  14 f4 ff eb                                      bl #0x398794
0039b740  a3 ff ff ea                                      b #0x39b5d4
; mapping-symbol data/literal pool
0039b744  28 96 5f 00 f4 37 00 00                          .byte 0x28, 0x96, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0039b74c, declared_size=8, range_size=8, mode=arm
; class-group: TriggerZone
; alias: _ZThn36_N11TriggerZoneD1Ev
; demangled: non-virtual thunk to TriggerZone::~TriggerZone()
; decoder-mode: arm
0039b74c  24 00 40 e2                                      sub r0, r0, #0x24
0039b750  ff ff ff ea                                      b #0x39b754

; FUNCTION 0x0039b754, declared_size=140, range_size=140, mode=arm
; class-group: TriggerZone
; alias: _ZN11TriggerZoneD1Ev
; demangled: TriggerZone::~TriggerZone()
; decoder-mode: arm
0039b754  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0039b758  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0039b75c  10 40 2d e9                                      push {r4, lr}
0039b760  02 20 8f e0                                      add r2, pc, r2
0039b764  03 30 92 e7                                      ldr r3, [r2, r3]
0039b768  00 40 a0 e1                                      mov r4, r0
0039b76c  f4 20 83 e2                                      add r2, r3, #0xf4
0039b770  08 10 83 e2                                      add r1, r3, #8
0039b774  e8 30 83 e2                                      add r3, r3, #0xe8
0039b778  0a 00 80 e8                                      stm r0, {r1, r3}
0039b77c  24 20 80 e5                                      str r2, [r0, #0x24]
0039b780  db fe ff eb                                      bl #0x39b2f4
0039b784  7b 0e 84 e2                                      add r0, r4, #0x7b0
0039b788  0c 00 80 e2                                      add r0, r0, #0xc
0039b78c  86 e0 fd eb                                      bl #0x3139ac
0039b790  79 0e 84 e2                                      add r0, r4, #0x790
0039b794  04 00 80 e2                                      add r0, r0, #4
0039b798  83 e0 fd eb                                      bl #0x3139ac
0039b79c  77 0e 84 e2                                      add r0, r4, #0x770
0039b7a0  08 00 80 e2                                      add r0, r0, #8
0039b7a4  80 e0 fd eb                                      bl #0x3139ac
0039b7a8  75 0e 84 e2                                      add r0, r4, #0x750
0039b7ac  0c 00 80 e2                                      add r0, r0, #0xc
0039b7b0  7d e0 fd eb                                      bl #0x3139ac
0039b7b4  1d 0d 84 e2                                      add r0, r4, #0x740
0039b7b8  7b e0 fd eb                                      bl #0x3139ac
0039b7bc  72 0e 84 e2                                      add r0, r4, #0x720
0039b7c0  04 00 80 e2                                      add r0, r0, #4
0039b7c4  78 e0 fd eb                                      bl #0x3139ac
0039b7c8  04 00 a0 e1                                      mov r0, r4
0039b7cc  90 f6 ff eb                                      bl #0x399214
0039b7d0  04 00 a0 e1                                      mov r0, r4
0039b7d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039b7d8  30 93 5f 00 18 3c 00 00                          .byte 0x30, 0x93, 0x5f, 0x00, 0x18, 0x3c, 0x00, 0x00

; FUNCTION 0x0039b7e0, declared_size=8, range_size=8, mode=arm
; class-group: TriggerZone
; alias: _ZThn36_N11TriggerZoneD0Ev
; demangled: non-virtual thunk to TriggerZone::~TriggerZone()
; decoder-mode: arm
0039b7e0  24 00 40 e2                                      sub r0, r0, #0x24
0039b7e4  ff ff ff ea                                      b #0x39b7e8

; FUNCTION 0x0039b7e8, declared_size=28, range_size=28, mode=arm
; class-group: TriggerZone
; alias: _ZN11TriggerZoneD0Ev
; demangled: TriggerZone::~TriggerZone()
; decoder-mode: arm
0039b7e8  10 40 2d e9                                      push {r4, lr}
0039b7ec  00 40 a0 e1                                      mov r4, r0
0039b7f0  d7 ff ff eb                                      bl #0x39b754
0039b7f4  04 00 a0 e1                                      mov r0, r4
0039b7f8  10 d3 fd eb                                      bl #0x310440
0039b7fc  04 00 a0 e1                                      mov r0, r4
0039b800  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0039b804, declared_size=140, range_size=140, mode=arm
; class-group: TriggerZone
; alias: _ZN11TriggerZoneD2Ev
; demangled: TriggerZone::~TriggerZone()
; decoder-mode: arm
0039b804  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0039b808  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0039b80c  10 40 2d e9                                      push {r4, lr}
0039b810  02 20 8f e0                                      add r2, pc, r2
0039b814  03 30 92 e7                                      ldr r3, [r2, r3]
0039b818  00 40 a0 e1                                      mov r4, r0
0039b81c  f4 20 83 e2                                      add r2, r3, #0xf4
0039b820  08 10 83 e2                                      add r1, r3, #8
0039b824  e8 30 83 e2                                      add r3, r3, #0xe8
0039b828  0a 00 80 e8                                      stm r0, {r1, r3}
0039b82c  24 20 80 e5                                      str r2, [r0, #0x24]
0039b830  af fe ff eb                                      bl #0x39b2f4
0039b834  7b 0e 84 e2                                      add r0, r4, #0x7b0
0039b838  0c 00 80 e2                                      add r0, r0, #0xc
0039b83c  5a e0 fd eb                                      bl #0x3139ac
0039b840  79 0e 84 e2                                      add r0, r4, #0x790
0039b844  04 00 80 e2                                      add r0, r0, #4
0039b848  57 e0 fd eb                                      bl #0x3139ac
0039b84c  77 0e 84 e2                                      add r0, r4, #0x770
0039b850  08 00 80 e2                                      add r0, r0, #8
0039b854  54 e0 fd eb                                      bl #0x3139ac
0039b858  75 0e 84 e2                                      add r0, r4, #0x750
0039b85c  0c 00 80 e2                                      add r0, r0, #0xc
0039b860  51 e0 fd eb                                      bl #0x3139ac
0039b864  1d 0d 84 e2                                      add r0, r4, #0x740
0039b868  4f e0 fd eb                                      bl #0x3139ac
0039b86c  72 0e 84 e2                                      add r0, r4, #0x720
0039b870  04 00 80 e2                                      add r0, r0, #4
0039b874  4c e0 fd eb                                      bl #0x3139ac
0039b878  04 00 a0 e1                                      mov r0, r4
0039b87c  64 f6 ff eb                                      bl #0x399214
0039b880  04 00 a0 e1                                      mov r0, r4
0039b884  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039b888  80 92 5f 00 18 3c 00 00                          .byte 0x80, 0x92, 0x5f, 0x00, 0x18, 0x3c, 0x00, 0x00

; FUNCTION 0x0039b890, declared_size=256, range_size=256, mode=arm
; class-group: TriggerZone
; alias: _ZN11TriggerZoneC1EN10ObjectBase6GO_IDSE
; demangled: TriggerZone::TriggerZone(ObjectBase::GO_IDS)
; decoder-mode: arm
0039b890  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0039b894  01 30 a0 e3                                      mov r3, #1
0039b898  1c d0 4d e2                                      sub sp, sp, #0x1c
0039b89c  00 20 a0 e3                                      mov r2, #0
0039b8a0  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
0039b8a4  00 40 a0 e1                                      mov r4, r0
0039b8a8  c9 f5 ff eb                                      bl #0x398fd4
0039b8ac  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
0039b8b0  05 50 8f e0                                      add r5, pc, r5
0039b8b4  d0 60 9f e5                                      ldr r6, [pc, #0xd0]
0039b8b8  03 30 95 e7                                      ldr r3, [r5, r3]
0039b8bc  72 0e 84 e2                                      add r0, r4, #0x720
0039b8c0  06 60 8f e0                                      add r6, pc, r6
0039b8c4  f4 20 83 e2                                      add r2, r3, #0xf4
0039b8c8  08 10 83 e2                                      add r1, r3, #8
0039b8cc  e8 30 83 e2                                      add r3, r3, #0xe8
0039b8d0  04 30 84 e5                                      str r3, [r4, #4]
0039b8d4  00 70 e0 e3                                      mvn r7, #0
0039b8d8  00 10 84 e5                                      str r1, [r4]
0039b8dc  24 20 84 e5                                      str r2, [r4, #0x24]
0039b8e0  06 10 a0 e1                                      mov r1, r6
0039b8e4  14 20 8d e2                                      add r2, sp, #0x14
0039b8e8  04 00 80 e2                                      add r0, r0, #4
0039b8ec  fe e1 fd eb                                      bl #0x3140ec
0039b8f0  06 10 a0 e1                                      mov r1, r6
0039b8f4  10 20 8d e2                                      add r2, sp, #0x10
0039b8f8  3c 77 84 e5                                      str r7, [r4, #0x73c]
0039b8fc  1d 0d 84 e2                                      add r0, r4, #0x740
0039b900  f9 e1 fd eb                                      bl #0x3140ec
0039b904  75 0e 84 e2                                      add r0, r4, #0x750
0039b908  06 10 a0 e1                                      mov r1, r6
0039b90c  0c 20 8d e2                                      add r2, sp, #0xc
0039b910  58 77 84 e5                                      str r7, [r4, #0x758]
0039b914  0c 00 80 e2                                      add r0, r0, #0xc
0039b918  f3 e1 fd eb                                      bl #0x3140ec
0039b91c  77 0e 84 e2                                      add r0, r4, #0x770
0039b920  06 10 a0 e1                                      mov r1, r6
0039b924  08 20 8d e2                                      add r2, sp, #8
0039b928  74 77 84 e5                                      str r7, [r4, #0x774]
0039b92c  08 00 80 e2                                      add r0, r0, #8
0039b930  ed e1 fd eb                                      bl #0x3140ec
0039b934  04 00 a0 e1                                      mov r0, r4
0039b938  90 77 a0 e5                                      str r7, [r0, #0x790]!
0039b93c  06 10 a0 e1                                      mov r1, r6
0039b940  04 20 8d e2                                      add r2, sp, #4
0039b944  04 00 80 e2                                      add r0, r0, #4
0039b948  e7 e1 fd eb                                      bl #0x3140ec
0039b94c  00 30 a0 e3                                      mov r3, #0
0039b950  7b 0e 84 e2                                      add r0, r4, #0x7b0
0039b954  ac 77 84 e5                                      str r7, [r4, #0x7ac]
0039b958  b8 37 84 e5                                      str r3, [r4, #0x7b8]
0039b95c  b0 37 84 e5                                      str r3, [r4, #0x7b0]
0039b960  b4 37 c4 e5                                      strb r3, [r4, #0x7b4]
0039b964  b5 37 c4 e5                                      strb r3, [r4, #0x7b5]
0039b968  06 10 a0 e1                                      mov r1, r6
0039b96c  0d 20 a0 e1                                      mov r2, sp
0039b970  0c 00 80 e2                                      add r0, r0, #0xc
0039b974  dc e1 fd eb                                      bl #0x3140ec
0039b978  04 00 a0 e1                                      mov r0, r4
0039b97c  1c d0 8d e2                                      add sp, sp, #0x1c
0039b980  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0039b984  e0 91 5f 00 18 3c 00 00 48 ff 52 00              .byte 0xe0, 0x91, 0x5f, 0x00, 0x18, 0x3c, 0x00, 0x00, 0x48, 0xff, 0x52, 0x00

; FUNCTION 0x0039b990, declared_size=256, range_size=256, mode=arm
; class-group: TriggerZone
; alias: _ZN11TriggerZoneC2EN10ObjectBase6GO_IDSE
; demangled: TriggerZone::TriggerZone(ObjectBase::GO_IDS)
; decoder-mode: arm
0039b990  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0039b994  01 30 a0 e3                                      mov r3, #1
0039b998  1c d0 4d e2                                      sub sp, sp, #0x1c
0039b99c  00 20 a0 e3                                      mov r2, #0
0039b9a0  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
0039b9a4  00 40 a0 e1                                      mov r4, r0
0039b9a8  89 f5 ff eb                                      bl #0x398fd4
0039b9ac  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
0039b9b0  05 50 8f e0                                      add r5, pc, r5
0039b9b4  d0 60 9f e5                                      ldr r6, [pc, #0xd0]
0039b9b8  03 30 95 e7                                      ldr r3, [r5, r3]
0039b9bc  72 0e 84 e2                                      add r0, r4, #0x720
0039b9c0  06 60 8f e0                                      add r6, pc, r6
0039b9c4  f4 20 83 e2                                      add r2, r3, #0xf4
0039b9c8  08 10 83 e2                                      add r1, r3, #8
0039b9cc  e8 30 83 e2                                      add r3, r3, #0xe8
0039b9d0  04 30 84 e5                                      str r3, [r4, #4]
0039b9d4  00 70 e0 e3                                      mvn r7, #0
0039b9d8  00 10 84 e5                                      str r1, [r4]
0039b9dc  24 20 84 e5                                      str r2, [r4, #0x24]
0039b9e0  06 10 a0 e1                                      mov r1, r6
0039b9e4  14 20 8d e2                                      add r2, sp, #0x14
0039b9e8  04 00 80 e2                                      add r0, r0, #4
0039b9ec  be e1 fd eb                                      bl #0x3140ec
0039b9f0  06 10 a0 e1                                      mov r1, r6
0039b9f4  10 20 8d e2                                      add r2, sp, #0x10
0039b9f8  3c 77 84 e5                                      str r7, [r4, #0x73c]
0039b9fc  1d 0d 84 e2                                      add r0, r4, #0x740
0039ba00  b9 e1 fd eb                                      bl #0x3140ec
0039ba04  75 0e 84 e2                                      add r0, r4, #0x750
0039ba08  06 10 a0 e1                                      mov r1, r6
0039ba0c  0c 20 8d e2                                      add r2, sp, #0xc
0039ba10  58 77 84 e5                                      str r7, [r4, #0x758]
0039ba14  0c 00 80 e2                                      add r0, r0, #0xc
0039ba18  b3 e1 fd eb                                      bl #0x3140ec
0039ba1c  77 0e 84 e2                                      add r0, r4, #0x770
0039ba20  06 10 a0 e1                                      mov r1, r6
0039ba24  08 20 8d e2                                      add r2, sp, #8
0039ba28  74 77 84 e5                                      str r7, [r4, #0x774]
0039ba2c  08 00 80 e2                                      add r0, r0, #8
0039ba30  ad e1 fd eb                                      bl #0x3140ec
0039ba34  04 00 a0 e1                                      mov r0, r4
0039ba38  90 77 a0 e5                                      str r7, [r0, #0x790]!
0039ba3c  06 10 a0 e1                                      mov r1, r6
0039ba40  04 20 8d e2                                      add r2, sp, #4
0039ba44  04 00 80 e2                                      add r0, r0, #4
0039ba48  a7 e1 fd eb                                      bl #0x3140ec
0039ba4c  00 30 a0 e3                                      mov r3, #0
0039ba50  7b 0e 84 e2                                      add r0, r4, #0x7b0
0039ba54  ac 77 84 e5                                      str r7, [r4, #0x7ac]
0039ba58  b8 37 84 e5                                      str r3, [r4, #0x7b8]
0039ba5c  b0 37 84 e5                                      str r3, [r4, #0x7b0]
0039ba60  b4 37 c4 e5                                      strb r3, [r4, #0x7b4]
0039ba64  b5 37 c4 e5                                      strb r3, [r4, #0x7b5]
0039ba68  06 10 a0 e1                                      mov r1, r6
0039ba6c  0d 20 a0 e1                                      mov r2, sp
0039ba70  0c 00 80 e2                                      add r0, r0, #0xc
0039ba74  9c e1 fd eb                                      bl #0x3140ec
0039ba78  04 00 a0 e1                                      mov r0, r4
0039ba7c  1c d0 8d e2                                      add sp, sp, #0x1c
0039ba80  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0039ba84  e0 90 5f 00 18 3c 00 00 48 fe 52 00              .byte 0xe0, 0x90, 0x5f, 0x00, 0x18, 0x3c, 0x00, 0x00, 0x48, 0xfe, 0x52, 0x00

; FUNCTION 0x0039bd70, declared_size=416, range_size=416, mode=arm
; class-group: TriggerZone
; alias: _ZNK11TriggerZone4DrawEv
; demangled: TriggerZone::Draw() const
; decoder-mode: arm
0039bd70  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0039bd74  80 41 9f e5                                      ldr r4, [pc, #0x180]
0039bd78  80 61 9f e5                                      ldr r6, [pc, #0x180]
0039bd7c  80 21 9f e5                                      ldr r2, [pc, #0x180]
0039bd80  04 40 8f e0                                      add r4, pc, r4
0039bd84  06 30 94 e7                                      ldr r3, [r4, r6]
0039bd88  02 80 94 e7                                      ldr r8, [r4, r2]
0039bd8c  40 d0 4d e2                                      sub sp, sp, #0x40
0039bd90  00 30 93 e5                                      ldr r3, [r3]
0039bd94  00 50 a0 e1                                      mov r5, r0
0039bd98  08 00 a0 e1                                      mov r0, r8
0039bd9c  3c 30 8d e5                                      str r3, [sp, #0x3c]
0039bda0  b8 6e fe eb                                      bl #0x337888
0039bda4  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
0039bda8  24 70 8d e2                                      add r7, sp, #0x24
0039bdac  20 20 8d e2                                      add r2, sp, #0x20
0039bdb0  01 10 8f e0                                      add r1, pc, r1
0039bdb4  07 00 a0 e1                                      mov r0, r7
0039bdb8  cb e0 fd eb                                      bl #0x3140ec
0039bdbc  08 00 a0 e1                                      mov r0, r8
0039bdc0  07 10 a0 e1                                      mov r1, r7
0039bdc4  2f 6f fe eb                                      bl #0x337a88
0039bdc8  00 80 a0 e1                                      mov r8, r0
0039bdcc  07 00 a0 e1                                      mov r0, r7
0039bdd0  f5 de fd eb                                      bl #0x3139ac
0039bdd4  00 00 58 e3                                      cmp r8, #0
0039bdd8  02 00 00 0a                                      beq #0x39bde8
0039bddc  b4 33 95 e5                                      ldr r3, [r5, #0x3b4]
0039bde0  00 00 53 e3                                      cmp r3, #0
0039bde4  06 00 00 0a                                      beq #0x39be04
0039bde8  06 30 94 e7                                      ldr r3, [r4, r6]
0039bdec  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0039bdf0  00 30 93 e5                                      ldr r3, [r3]
0039bdf4  03 00 52 e1                                      cmp r2, r3
0039bdf8  3e 00 00 1a                                      bne #0x39bef8
0039bdfc  40 d0 8d e2                                      add sp, sp, #0x40
0039be00  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0039be04  05 00 a0 e1                                      mov r0, r5
0039be08  54 bb ff eb                                      bl #0x38ab60
0039be0c  00 00 50 e3                                      cmp r0, #0
0039be10  f4 ff ff 0a                                      beq #0x39bde8
0039be14  f0 a0 9f e5                                      ldr sl, [pc, #0xf0]
0039be18  0a 30 94 e7                                      ldr r3, [r4, sl]
0039be1c  10 30 93 e5                                      ldr r3, [r3, #0x10]
0039be20  10 80 93 e5                                      ldr r8, [r3, #0x10]
0039be24  ff 3f 0f e3                                      movw r3, #0xffff
0039be28  dc 90 98 e5                                      ldr sb, [r8, #0xdc]
0039be2c  be 22 d9 e1                                      ldrh r2, [sb, #0x2e]
0039be30  03 00 52 e1                                      cmp r2, r3
0039be34  03 00 00 1a                                      bne #0x39be48
0039be38  09 00 a0 e1                                      mov r0, sb
0039be3c  01 10 a0 e3                                      mov r1, #1
0039be40  38 f3 08 eb                                      bl #0x5d8b28
0039be44  00 20 a0 e1                                      mov r2, r0
0039be48  1c 70 8d e2                                      add r7, sp, #0x1c
0039be4c  07 00 a0 e1                                      mov r0, r7
0039be50  09 10 a0 e1                                      mov r1, sb
0039be54  01 30 a0 e3                                      mov r3, #1
0039be58  a1 04 09 eb                                      bl #0x5dd0e4
0039be5c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0039be60  00 00 50 e3                                      cmp r0, #0
0039be64  ff 20 a0 03                                      moveq r2, #0xff
0039be68  01 00 00 0a                                      beq #0x39be74
0039be6c  b0 a7 08 eb                                      bl #0x5c5d34
0039be70  00 20 a0 e1                                      mov r2, r0
0039be74  08 00 a0 e1                                      mov r0, r8
0039be78  07 10 a0 e1                                      mov r1, r7
0039be7c  00 30 a0 e3                                      mov r3, #0
0039be80  38 45 08 eb                                      bl #0x5ad368
0039be84  0a 30 94 e7                                      ldr r3, [r4, sl]
0039be88  2c 91 95 e5                                      ldr sb, [r5, #0x12c]
0039be8c  30 a1 95 e5                                      ldr sl, [r5, #0x130]
0039be90  10 30 93 e5                                      ldr r3, [r3, #0x10]
0039be94  34 81 95 e5                                      ldr r8, [r5, #0x134]
0039be98  38 e1 95 e5                                      ldr lr, [r5, #0x138]
0039be9c  10 00 93 e5                                      ldr r0, [r3, #0x10]
0039bea0  3c c1 95 e5                                      ldr ip, [r5, #0x13c]
0039bea4  40 11 95 e5                                      ldr r1, [r5, #0x140]
0039bea8  00 30 90 e5                                      ldr r3, [r0]
0039beac  00 20 e0 e3                                      mvn r2, #0
0039beb0  00 50 a0 e3                                      mov r5, #0
0039beb4  28 30 93 e5                                      ldr r3, [r3, #0x28]
0039beb8  18 50 cd e5                                      strb r5, [sp, #0x18]
0039bebc  1b 20 cd e5                                      strb r2, [sp, #0x1b]
0039bec0  19 20 cd e5                                      strb r2, [sp, #0x19]
0039bec4  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0039bec8  14 10 8d e5                                      str r1, [sp, #0x14]
0039becc  00 90 8d e5                                      str sb, [sp]
0039bed0  04 a0 8d e5                                      str sl, [sp, #4]
0039bed4  08 80 8d e5                                      str r8, [sp, #8]
0039bed8  0c e0 8d e5                                      str lr, [sp, #0xc]
0039bedc  10 c0 8d e5                                      str ip, [sp, #0x10]
0039bee0  0d 10 a0 e1                                      mov r1, sp
0039bee4  18 20 9d e5                                      ldr r2, [sp, #0x18]
0039bee8  33 ff 2f e1                                      blx r3
0039beec  07 00 a0 e1                                      mov r0, r7
0039bef0  3c d3 fd eb                                      bl #0x310be8
0039bef4  bb ff ff ea                                      b #0x39bde8
0039bef8  04 c9 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0039befc  10 8d 5f 00 ac 40 00 00 84 08 00 00 98 66 52 00  .byte 0x10, 0x8d, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x98, 0x66, 0x52, 0x00
0039bf0c  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0039bf9c, declared_size=8, range_size=8, mode=arm
; class-group: TriggerZone
; alias: _ZThn4_N11TriggerZone17DeclarePropertiesEv
; demangled: non-virtual thunk to TriggerZone::DeclareProperties()
; decoder-mode: arm
0039bf9c  04 00 40 e2                                      sub r0, r0, #4
0039bfa0  ff ff ff ea                                      b #0x39bfa4

; FUNCTION 0x0039bfa4, declared_size=260, range_size=260, mode=arm
; class-group: TriggerZone
; alias: _ZN11TriggerZone17DeclarePropertiesEv
; demangled: TriggerZone::DeclareProperties()
; decoder-mode: arm
0039bfa4  70 40 2d e9                                      push {r4, r5, r6, lr}
0039bfa8  00 50 a0 e1                                      mov r5, r0
0039bfac  b5 f2 ff eb                                      bl #0x398a88
0039bfb0  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0039bfb4  04 40 85 e2                                      add r4, r5, #4
0039bfb8  71 6e 85 e2                                      add r6, r5, #0x710
0039bfbc  04 00 a0 e1                                      mov r0, r4
0039bfc0  08 20 86 e2                                      add r2, r6, #8
0039bfc4  01 10 8f e0                                      add r1, pc, r1
0039bfc8  d0 ff ff eb                                      bl #0x39bf10
0039bfcc  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
0039bfd0  0c 20 86 e2                                      add r2, r6, #0xc
0039bfd4  04 00 a0 e1                                      mov r0, r4
0039bfd8  01 10 8f e0                                      add r1, pc, r1
0039bfdc  cb ff ff eb                                      bl #0x39bf10
0039bfe0  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0039bfe4  72 6e 85 e2                                      add r6, r5, #0x720
0039bfe8  04 00 a0 e1                                      mov r0, r4
0039bfec  06 20 a0 e1                                      mov r2, r6
0039bff0  01 10 8f e0                                      add r1, pc, r1
0039bff4  c5 ff ff eb                                      bl #0x39bf10
0039bff8  90 10 9f e5                                      ldr r1, [pc, #0x90]
0039bffc  04 20 86 e2                                      add r2, r6, #4
0039c000  04 00 a0 e1                                      mov r0, r4
0039c004  01 10 8f e0                                      add r1, pc, r1
0039c008  db 8b fe eb                                      bl #0x33ef7c
0039c00c  80 10 9f e5                                      ldr r1, [pc, #0x80]
0039c010  04 00 a0 e1                                      mov r0, r4
0039c014  1d 2d 85 e2                                      add r2, r5, #0x740
0039c018  01 10 8f e0                                      add r1, pc, r1
0039c01c  d6 8b fe eb                                      bl #0x33ef7c
0039c020  70 10 9f e5                                      ldr r1, [pc, #0x70]
0039c024  75 2e 85 e2                                      add r2, r5, #0x750
0039c028  04 00 a0 e1                                      mov r0, r4
0039c02c  0c 20 82 e2                                      add r2, r2, #0xc
0039c030  01 10 8f e0                                      add r1, pc, r1
0039c034  d0 8b fe eb                                      bl #0x33ef7c
0039c038  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0039c03c  77 2e 85 e2                                      add r2, r5, #0x770
0039c040  04 00 a0 e1                                      mov r0, r4
0039c044  08 20 82 e2                                      add r2, r2, #8
0039c048  01 10 8f e0                                      add r1, pc, r1
0039c04c  ca 8b fe eb                                      bl #0x33ef7c
0039c050  48 10 9f e5                                      ldr r1, [pc, #0x48]
0039c054  79 2e 85 e2                                      add r2, r5, #0x790
0039c058  04 00 a0 e1                                      mov r0, r4
0039c05c  04 20 82 e2                                      add r2, r2, #4
0039c060  01 10 8f e0                                      add r1, pc, r1
0039c064  c4 8b fe eb                                      bl #0x33ef7c
0039c068  34 10 9f e5                                      ldr r1, [pc, #0x34]
0039c06c  7b 2e 85 e2                                      add r2, r5, #0x7b0
0039c070  04 00 a0 e1                                      mov r0, r4
0039c074  01 10 8f e0                                      add r1, pc, r1
0039c078  0c 20 82 e2                                      add r2, r2, #0xc
0039c07c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0039c080  bd 8b fe ea                                      b #0x33ef7c
; mapping-symbol data/literal pool
0039c084  ec 6c 52 00 e0 6c 52 00 d8 6c 52 00 d4 59 52 00  .byte 0xec, 0x6c, 0x52, 0x00, 0xe0, 0x6c, 0x52, 0x00, 0xd8, 0x6c, 0x52, 0x00, 0xd4, 0x59, 0x52, 0x00
0039c094  b8 6c 52 00 b0 6c 52 00 b0 6c 52 00 b8 6c 52 00  .byte 0xb8, 0x6c, 0x52, 0x00, 0xb0, 0x6c, 0x52, 0x00, 0xb0, 0x6c, 0x52, 0x00, 0xb8, 0x6c, 0x52, 0x00
0039c0a4  bc 6c 52 00                                      .byte 0xbc, 0x6c, 0x52, 0x00

; FUNCTION 0x0039c0a8, declared_size=544, range_size=544, mode=arm
; class-group: TriggerZone
; alias: _ZN11TriggerZone8InitPostEv
; demangled: TriggerZone::InitPost()
; decoder-mode: arm
0039c0a8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0039c0ac  00 40 a0 e1                                      mov r4, r0
0039c0b0  1c d0 4d e2                                      sub sp, sp, #0x1c
0039c0b4  ee f1 ff eb                                      bl #0x398874
0039c0b8  34 37 94 e5                                      ldr r3, [r4, #0x734]
0039c0bc  38 17 94 e5                                      ldr r1, [r4, #0x738]
0039c0c0  ec 51 9f e5                                      ldr r5, [pc, #0x1ec]
0039c0c4  01 00 53 e1                                      cmp r3, r1
0039c0c8  00 30 e0 e3                                      mvn r3, #0
0039c0cc  3c 37 84 e5                                      str r3, [r4, #0x73c]
0039c0d0  05 50 8f e0                                      add r5, pc, r5
0039c0d4  04 00 00 0a                                      beq #0x39c0ec
0039c0d8  d8 31 9f e5                                      ldr r3, [pc, #0x1d8]
0039c0dc  00 20 a0 e3                                      mov r2, #0
0039c0e0  03 00 95 e7                                      ldr r0, [r5, r3]
0039c0e4  41 f4 02 eb                                      bl #0x4591f0
0039c0e8  3c 07 84 e5                                      str r0, [r4, #0x73c]
0039c0ec  54 17 94 e5                                      ldr r1, [r4, #0x754]
0039c0f0  50 37 94 e5                                      ldr r3, [r4, #0x750]
0039c0f4  00 20 e0 e3                                      mvn r2, #0
0039c0f8  58 27 84 e5                                      str r2, [r4, #0x758]
0039c0fc  01 00 53 e1                                      cmp r3, r1
0039c100  04 00 00 0a                                      beq #0x39c118
0039c104  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
0039c108  00 20 a0 e3                                      mov r2, #0
0039c10c  03 00 95 e7                                      ldr r0, [r5, r3]
0039c110  36 f4 02 eb                                      bl #0x4591f0
0039c114  58 07 84 e5                                      str r0, [r4, #0x758]
0039c118  70 17 94 e5                                      ldr r1, [r4, #0x770]
0039c11c  6c 37 94 e5                                      ldr r3, [r4, #0x76c]
0039c120  00 20 e0 e3                                      mvn r2, #0
0039c124  74 27 84 e5                                      str r2, [r4, #0x774]
0039c128  01 00 53 e1                                      cmp r3, r1
0039c12c  04 00 00 0a                                      beq #0x39c144
0039c130  80 31 9f e5                                      ldr r3, [pc, #0x180]
0039c134  00 20 a0 e3                                      mov r2, #0
0039c138  03 00 95 e7                                      ldr r0, [r5, r3]
0039c13c  2b f4 02 eb                                      bl #0x4591f0
0039c140  74 07 84 e5                                      str r0, [r4, #0x774]
0039c144  8c 17 94 e5                                      ldr r1, [r4, #0x78c]
0039c148  88 37 94 e5                                      ldr r3, [r4, #0x788]
0039c14c  00 20 e0 e3                                      mvn r2, #0
0039c150  90 27 84 e5                                      str r2, [r4, #0x790]
0039c154  01 00 53 e1                                      cmp r3, r1
0039c158  04 00 00 0a                                      beq #0x39c170
0039c15c  54 31 9f e5                                      ldr r3, [pc, #0x154]
0039c160  00 20 a0 e3                                      mov r2, #0
0039c164  03 00 95 e7                                      ldr r0, [r5, r3]
0039c168  20 f4 02 eb                                      bl #0x4591f0
0039c16c  90 07 84 e5                                      str r0, [r4, #0x790]
0039c170  a8 77 94 e5                                      ldr r7, [r4, #0x7a8]
0039c174  a4 37 94 e5                                      ldr r3, [r4, #0x7a4]
0039c178  00 20 e0 e3                                      mvn r2, #0
0039c17c  ac 27 84 e5                                      str r2, [r4, #0x7ac]
0039c180  07 00 53 e1                                      cmp r3, r7
0039c184  12 00 00 0a                                      beq #0x39c1d4
0039c188  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
0039c18c  03 30 95 e7                                      ldr r3, [r5, r3]
0039c190  00 80 93 e5                                      ldr r8, [r3]
0039c194  00 00 58 e3                                      cmp r8, #0
0039c198  42 00 00 0a                                      beq #0x39c2a8
0039c19c  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0039c1a0  00 60 a0 e3                                      mov r6, #0
0039c1a4  03 30 95 e7                                      ldr r3, [r5, r3]
0039c1a8  00 a0 93 e5                                      ldr sl, [r3]
0039c1ac  02 00 00 ea                                      b #0x39c1bc
0039c1b0  01 60 86 e2                                      add r6, r6, #1
0039c1b4  08 00 56 e1                                      cmp r6, r8
0039c1b8  3a 00 00 0a                                      beq #0x39c2a8
0039c1bc  06 11 9a e7                                      ldr r1, [sl, r6, lsl #2]
0039c1c0  07 00 a0 e1                                      mov r0, r7
0039c1c4  54 c8 fd eb                                      bl #0x30e31c
0039c1c8  00 00 50 e3                                      cmp r0, #0
0039c1cc  f7 ff ff 1a                                      bne #0x39c1b0
0039c1d0  ac 67 84 e5                                      str r6, [r4, #0x7ac]
0039c1d4  d0 27 94 e5                                      ldr r2, [r4, #0x7d0]
0039c1d8  cc 17 94 e5                                      ldr r1, [r4, #0x7cc]
0039c1dc  ac 33 94 e5                                      ldr r3, [r4, #0x3ac]
0039c1e0  01 00 52 e1                                      cmp r2, r1
0039c1e4  b8 33 84 e5                                      str r3, [r4, #0x3b8]
0039c1e8  18 00 00 0a                                      beq #0x39c250
0039c1ec  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
0039c1f0  0c 70 8d e2                                      add r7, sp, #0xc
0039c1f4  00 60 a0 e3                                      mov r6, #0
0039c1f8  03 10 95 e7                                      ldr r1, [r5, r3]
0039c1fc  07 00 a0 e1                                      mov r0, r7
0039c200  00 30 e0 e3                                      mvn r3, #0
0039c204  38 10 91 e5                                      ldr r1, [r1, #0x38]
0039c208  00 60 8d e5                                      str r6, [sp]
0039c20c  04 60 8d e5                                      str r6, [sp, #4]
0039c210  a2 ba fe eb                                      bl #0x34aca0
0039c214  07 00 a0 e1                                      mov r0, r7
0039c218  06 10 a0 e1                                      mov r1, r6
0039c21c  e7 8e fe eb                                      bl #0x33fdc0
0039c220  06 00 50 e1                                      cmp r0, r6
0039c224  09 00 00 0a                                      beq #0x39c250
0039c228  07 00 a0 e1                                      mov r0, r7
0039c22c  06 10 a0 e1                                      mov r1, r6
0039c230  e2 8e fe eb                                      bl #0x33fdc0
0039c234  00 00 50 e3                                      cmp r0, #0
0039c238  02 00 00 0a                                      beq #0x39c248
0039c23c  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0039c240  02 00 53 e3                                      cmp r3, #2
0039c244  00 00 00 0a                                      beq #0x39c24c
0039c248  00 00 a0 e3                                      mov r0, #0
0039c24c  b8 07 84 e5                                      str r0, [r4, #0x7b8]
0039c250  74 37 94 e5                                      ldr r3, [r4, #0x774]
0039c254  01 00 73 e3                                      cmn r3, #1
0039c258  03 00 00 0a                                      beq #0x39c26c
0039c25c  00 30 a0 e3                                      mov r3, #0
0039c260  bc 33 c4 e5                                      strb r3, [r4, #0x3bc]
0039c264  1c d0 8d e2                                      add sp, sp, #0x1c
0039c268  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0039c26c  90 37 94 e5                                      ldr r3, [r4, #0x790]
0039c270  01 00 73 e3                                      cmn r3, #1
0039c274  f8 ff ff 1a                                      bne #0x39c25c
0039c278  3c 37 94 e5                                      ldr r3, [r4, #0x73c]
0039c27c  01 00 73 e3                                      cmn r3, #1
0039c280  f5 ff ff 0a                                      beq #0x39c25c
0039c284  00 00 53 e3                                      cmp r3, #0
0039c288  f3 ff ff ba                                      blt #0x39c25c
0039c28c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0039c290  0c 10 a0 e3                                      mov r1, #0xc
0039c294  02 20 95 e7                                      ldr r2, [r5, r2]
0039c298  18 20 92 e5                                      ldr r2, [r2, #0x18]
0039c29c  91 23 23 e0                                      mla r3, r1, r3, r2
0039c2a0  04 30 d3 e5                                      ldrb r3, [r3, #4]
0039c2a4  ed ff ff ea                                      b #0x39c260
0039c2a8  00 60 e0 e3                                      mvn r6, #0
0039c2ac  ac 67 84 e5                                      str r6, [r4, #0x7ac]
0039c2b0  c7 ff ff ea                                      b #0x39c1d4
; mapping-symbol data/literal pool
0039c2b4  c0 89 5f 00 20 1a 00 00 c4 06 00 00 94 12 00 00  .byte 0xc0, 0x89, 0x5f, 0x00, 0x20, 0x1a, 0x00, 0x00, 0xc4, 0x06, 0x00, 0x00, 0x94, 0x12, 0x00, 0x00
0039c2c4  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0046b004, declared_size=160, range_size=160, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegameC2Ev
; demangled: QuestSavegame::QuestSavegame()
; decoder-mode: arm
0046b004  90 30 9f e5                                      ldr r3, [pc, #0x90]
0046b008  90 20 9f e5                                      ldr r2, [pc, #0x90]
0046b00c  00 10 a0 e3                                      mov r1, #0
0046b010  03 30 8f e0                                      add r3, pc, r3
0046b014  02 20 93 e7                                      ldr r2, [r3, r2]
0046b018  70 00 2d e9                                      push {r4, r5, r6}
0046b01c  01 c0 a0 e1                                      mov ip, r1
0046b020  10 50 80 e2                                      add r5, r0, #0x10
0046b024  1c 40 80 e2                                      add r4, r0, #0x1c
0046b028  08 20 82 e2                                      add r2, r2, #8
0046b02c  00 20 80 e5                                      str r2, [r0]
0046b030  04 10 80 e5                                      str r1, [r0, #4]
0046b034  08 10 80 e5                                      str r1, [r0, #8]
0046b038  0c 10 80 e5                                      str r1, [r0, #0xc]
0046b03c  10 10 80 e5                                      str r1, [r0, #0x10]
0046b040  00 20 a0 e1                                      mov r2, r0
0046b044  08 10 85 e5                                      str r1, [r5, #8]
0046b048  04 10 85 e5                                      str r1, [r5, #4]
0046b04c  0c 60 a0 e1                                      mov r6, ip
0046b050  1c 10 80 e5                                      str r1, [r0, #0x1c]
0046b054  00 50 e0 e3                                      mvn r5, #0
0046b058  08 10 84 e5                                      str r1, [r4, #8]
0046b05c  04 10 84 e5                                      str r1, [r4, #4]
0046b060  5c 10 80 e5                                      str r1, [r0, #0x5c]
0046b064  01 40 a0 e3                                      mov r4, #1
0046b068  00 10 a0 e1                                      mov r1, r0
0046b06c  01 c0 8c e2                                      add ip, ip, #1
0046b070  03 00 5c e3                                      cmp ip, #3
0046b074  2c 50 82 e5                                      str r5, [r2, #0x2c]
0046b078  38 50 82 e5                                      str r5, [r2, #0x38]
0046b07c  44 40 82 e5                                      str r4, [r2, #0x44]
0046b080  50 40 82 e5                                      str r4, [r2, #0x50]
0046b084  28 60 c1 e5                                      strb r6, [r1, #0x28]
0046b088  04 20 82 e2                                      add r2, r2, #4
0046b08c  01 10 81 e2                                      add r1, r1, #1
0046b090  f5 ff ff 1a                                      bne #0x46b06c
0046b094  70 00 bd e8                                      pop {r4, r5, r6}
0046b098  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0046b09c  80 9a 52 00 e4 34 00 00                          .byte 0x80, 0x9a, 0x52, 0x00, 0xe4, 0x34, 0x00, 0x00

; FUNCTION 0x0046b0a4, declared_size=160, range_size=160, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegameC1Ev
; demangled: QuestSavegame::QuestSavegame()
; decoder-mode: arm
0046b0a4  90 30 9f e5                                      ldr r3, [pc, #0x90]
0046b0a8  90 20 9f e5                                      ldr r2, [pc, #0x90]
0046b0ac  00 10 a0 e3                                      mov r1, #0
0046b0b0  03 30 8f e0                                      add r3, pc, r3
0046b0b4  02 20 93 e7                                      ldr r2, [r3, r2]
0046b0b8  70 00 2d e9                                      push {r4, r5, r6}
0046b0bc  01 c0 a0 e1                                      mov ip, r1
0046b0c0  10 50 80 e2                                      add r5, r0, #0x10
0046b0c4  1c 40 80 e2                                      add r4, r0, #0x1c
0046b0c8  08 20 82 e2                                      add r2, r2, #8
0046b0cc  00 20 80 e5                                      str r2, [r0]
0046b0d0  04 10 80 e5                                      str r1, [r0, #4]
0046b0d4  08 10 80 e5                                      str r1, [r0, #8]
0046b0d8  0c 10 80 e5                                      str r1, [r0, #0xc]
0046b0dc  10 10 80 e5                                      str r1, [r0, #0x10]
0046b0e0  00 20 a0 e1                                      mov r2, r0
0046b0e4  08 10 85 e5                                      str r1, [r5, #8]
0046b0e8  04 10 85 e5                                      str r1, [r5, #4]
0046b0ec  0c 60 a0 e1                                      mov r6, ip
0046b0f0  1c 10 80 e5                                      str r1, [r0, #0x1c]
0046b0f4  00 50 e0 e3                                      mvn r5, #0
0046b0f8  08 10 84 e5                                      str r1, [r4, #8]
0046b0fc  04 10 84 e5                                      str r1, [r4, #4]
0046b100  5c 10 80 e5                                      str r1, [r0, #0x5c]
0046b104  01 40 a0 e3                                      mov r4, #1
0046b108  00 10 a0 e1                                      mov r1, r0
0046b10c  01 c0 8c e2                                      add ip, ip, #1
0046b110  03 00 5c e3                                      cmp ip, #3
0046b114  2c 50 82 e5                                      str r5, [r2, #0x2c]
0046b118  38 50 82 e5                                      str r5, [r2, #0x38]
0046b11c  44 40 82 e5                                      str r4, [r2, #0x44]
0046b120  50 40 82 e5                                      str r4, [r2, #0x50]
0046b124  28 60 c1 e5                                      strb r6, [r1, #0x28]
0046b128  04 20 82 e2                                      add r2, r2, #4
0046b12c  01 10 81 e2                                      add r1, r1, #1
0046b130  f5 ff ff 1a                                      bne #0x46b10c
0046b134  70 00 bd e8                                      pop {r4, r5, r6}
0046b138  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0046b13c  e0 99 52 00 e4 34 00 00                          .byte 0xe0, 0x99, 0x52, 0x00, 0xe4, 0x34, 0x00, 0x00

; FUNCTION 0x0046b144, declared_size=44, range_size=44, mode=arm
; class-group: QuestSavegame
; alias: _ZNK13QuestSavegame15IsActCompatibleEii
; demangled: QuestSavegame::IsActCompatible(int, int) const
; decoder-mode: arm
0046b144  14 30 82 e2                                      add r3, r2, #0x14
0046b148  03 31 90 e7                                      ldr r3, [r0, r3, lsl #2]
0046b14c  01 00 53 e1                                      cmp r3, r1
0046b150  00 00 a0 c3                                      movgt r0, #0
0046b154  1e ff 2f c1                                      bxgt lr
0046b158  02 21 80 e0                                      add r2, r0, r2, lsl #2
0046b15c  44 00 92 e5                                      ldr r0, [r2, #0x44]
0046b160  00 00 51 e1                                      cmp r1, r0
0046b164  00 00 a0 c3                                      movgt r0, #0
0046b168  01 00 a0 d3                                      movle r0, #1
0046b16c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0046b170, declared_size=96, range_size=96, mode=arm
; class-group: QuestSavegame
; alias: _ZNK13QuestSavegame15SG_GetNumQuestsEPFbPK5QuestEi
; demangled: QuestSavegame::SG_GetNumQuests(bool (*)(Quest const*), int) const
; decoder-mode: arm
0046b170  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0046b174  0c 30 a0 e3                                      mov r3, #0xc
0046b178  93 02 23 e0                                      mla r3, r3, r2, r0
0046b17c  01 70 a0 e1                                      mov r7, r1
0046b180  44 00 93 e9                                      ldmib r3, {r2, r6}
0046b184  06 60 62 e0                                      rsb r6, r2, r6
0046b188  46 61 b0 e1                                      asrs r6, r6, #2
0046b18c  00 40 a0 13                                      movne r4, #0
0046b190  04 80 83 12                                      addne r8, r3, #4
0046b194  04 50 a0 11                                      movne r5, r4
0046b198  01 00 00 1a                                      bne #0x46b1a4
0046b19c  09 00 00 ea                                      b #0x46b1c8
0046b1a0  00 20 98 e5                                      ldr r2, [r8]
0046b1a4  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
0046b1a8  37 ff 2f e1                                      blx r7
0046b1ac  01 40 84 e2                                      add r4, r4, #1
0046b1b0  00 00 50 e3                                      cmp r0, #0
0046b1b4  01 50 85 12                                      addne r5, r5, #1
0046b1b8  06 00 54 e1                                      cmp r4, r6
0046b1bc  f7 ff ff 1a                                      bne #0x46b1a0
0046b1c0  05 00 a0 e1                                      mov r0, r5
0046b1c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0046b1c8  06 00 a0 e1                                      mov r0, r6
0046b1cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0046b1d0, declared_size=136, range_size=136, mode=arm
; class-group: QuestSavegame
; alias: _ZNK13QuestSavegame15SG_GetQuestByIDEPFbPK5QuestEii
; demangled: QuestSavegame::SG_GetQuestByID(bool (*)(Quest const*), int, int) const
; decoder-mode: arm
0046b1d0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046b1d4  03 50 a0 e1                                      mov r5, r3
0046b1d8  0c 30 a0 e3                                      mov r3, #0xc
0046b1dc  93 05 23 e0                                      mla r3, r3, r5, r0
0046b1e0  01 60 a0 e1                                      mov r6, r1
0046b1e4  02 04 93 e9                                      ldmib r3, {r1, sl}
0046b1e8  00 40 a0 e1                                      mov r4, r0
0046b1ec  02 b0 a0 e1                                      mov fp, r2
0046b1f0  0a a0 61 e0                                      rsb sl, r1, sl
0046b1f4  4a a1 b0 e1                                      asrs sl, sl, #2
0046b1f8  0f 00 00 0a                                      beq #0x46b23c
0046b1fc  00 70 a0 e3                                      mov r7, #0
0046b200  04 90 83 e2                                      add sb, r3, #4
0046b204  07 80 a0 e1                                      mov r8, r7
0046b208  00 00 00 ea                                      b #0x46b210
0046b20c  00 10 99 e5                                      ldr r1, [sb]
0046b210  07 01 91 e7                                      ldr r0, [r1, r7, lsl #2]
0046b214  36 ff 2f e1                                      blx r6
0046b218  00 00 50 e3                                      cmp r0, #0
0046b21c  07 31 a0 e1                                      lsl r3, r7, #2
0046b220  01 70 87 e2                                      add r7, r7, #1
0046b224  02 00 00 0a                                      beq #0x46b234
0046b228  0b 00 58 e1                                      cmp r8, fp
0046b22c  04 00 00 0a                                      beq #0x46b244
0046b230  01 80 88 e2                                      add r8, r8, #1
0046b234  0a 00 57 e1                                      cmp r7, sl
0046b238  f3 ff ff 1a                                      bne #0x46b20c
0046b23c  00 00 a0 e3                                      mov r0, #0
0046b240  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046b244  0c 20 a0 e3                                      mov r2, #0xc
0046b248  92 45 24 e0                                      mla r4, r2, r5, r4
0046b24c  04 20 94 e5                                      ldr r2, [r4, #4]
0046b250  03 00 92 e7                                      ldr r0, [r2, r3]
0046b254  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0046b258, declared_size=124, range_size=124, mode=arm
; class-group: QuestSavegame
; alias: _ZNK13QuestSavegame15SG_GetNextQuestEPFbPK5QuestEii
; demangled: QuestSavegame::SG_GetNextQuest(bool (*)(Quest const*), int, int) const
; decoder-mode: arm
0046b258  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0046b25c  03 50 a0 e1                                      mov r5, r3
0046b260  0c 30 a0 e3                                      mov r3, #0xc
0046b264  93 05 23 e0                                      mla r3, r3, r5, r0
0046b268  c2 6f c2 e1                                      bic r6, r2, r2, asr #31
0046b26c  04 01 93 e9                                      ldmib r3, {r2, r8}
0046b270  00 40 a0 e1                                      mov r4, r0
0046b274  01 a0 a0 e1                                      mov sl, r1
0046b278  08 80 62 e0                                      rsb r8, r2, r8
0046b27c  48 81 a0 e1                                      asr r8, r8, #2
0046b280  08 00 56 e1                                      cmp r6, r8
0046b284  10 00 00 2a                                      bhs #0x46b2cc
0046b288  04 90 83 e2                                      add sb, r3, #4
0046b28c  06 71 a0 e1                                      lsl r7, r6, #2
0046b290  03 00 00 ea                                      b #0x46b2a4
0046b294  08 00 56 e1                                      cmp r6, r8
0046b298  04 70 87 e2                                      add r7, r7, #4
0046b29c  0a 00 00 2a                                      bhs #0x46b2cc
0046b2a0  00 20 99 e5                                      ldr r2, [sb]
0046b2a4  07 00 92 e7                                      ldr r0, [r2, r7]
0046b2a8  3a ff 2f e1                                      blx sl
0046b2ac  00 00 50 e3                                      cmp r0, #0
0046b2b0  01 60 86 e2                                      add r6, r6, #1
0046b2b4  f6 ff ff 0a                                      beq #0x46b294
0046b2b8  0c 30 a0 e3                                      mov r3, #0xc
0046b2bc  93 45 24 e0                                      mla r4, r3, r5, r4
0046b2c0  04 30 94 e5                                      ldr r3, [r4, #4]
0046b2c4  07 00 93 e7                                      ldr r0, [r3, r7]
0046b2c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0046b2cc  00 00 a0 e3                                      mov r0, #0
0046b2d0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0046b2d4, declared_size=136, range_size=136, mode=arm
; class-group: QuestSavegame
; alias: _ZNK13QuestSavegame15SG_GetPrevQuestEPFbPK5QuestEii
; demangled: QuestSavegame::SG_GetPrevQuest(bool (*)(Quest const*), int, int) const
; decoder-mode: arm
0046b2d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0046b2d8  03 50 a0 e1                                      mov r5, r3
0046b2dc  0c 30 a0 e3                                      mov r3, #0xc
0046b2e0  93 05 23 e0                                      mla r3, r3, r5, r0
0046b2e4  01 60 a0 e1                                      mov r6, r1
0046b2e8  82 00 93 e9                                      ldmib r3, {r1, r7}
0046b2ec  00 40 a0 e1                                      mov r4, r0
0046b2f0  07 70 61 e0                                      rsb r7, r1, r7
0046b2f4  47 71 a0 e1                                      asr r7, r7, #2
0046b2f8  07 00 52 e1                                      cmp r2, r7
0046b2fc  02 70 a0 b1                                      movlt r7, r2
0046b300  07 70 a0 a1                                      movge r7, r7
0046b304  00 00 57 e3                                      cmp r7, #0
0046b308  11 00 00 0a                                      beq #0x46b354
0046b30c  07 81 47 e2                                      sub r8, r7, #0xc0000001
0046b310  08 81 a0 e1                                      lsl r8, r8, #2
0046b314  04 a0 83 e2                                      add sl, r3, #4
0046b318  03 00 00 ea                                      b #0x46b32c
0046b31c  00 00 57 e3                                      cmp r7, #0
0046b320  04 80 48 e2                                      sub r8, r8, #4
0046b324  0a 00 00 0a                                      beq #0x46b354
0046b328  00 10 9a e5                                      ldr r1, [sl]
0046b32c  08 00 91 e7                                      ldr r0, [r1, r8]
0046b330  36 ff 2f e1                                      blx r6
0046b334  00 00 50 e3                                      cmp r0, #0
0046b338  01 70 47 e2                                      sub r7, r7, #1
0046b33c  f6 ff ff 0a                                      beq #0x46b31c
0046b340  0c 30 a0 e3                                      mov r3, #0xc
0046b344  93 45 24 e0                                      mla r4, r3, r5, r4
0046b348  04 30 94 e5                                      ldr r3, [r4, #4]
0046b34c  08 00 93 e7                                      ldr r0, [r3, r8]
0046b350  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0046b354  00 00 a0 e3                                      mov r0, #0
0046b358  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0046b35c, declared_size=12, range_size=12, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame25SG_GetCurrentPrimaryQuestEi
; demangled: QuestSavegame::SG_GetCurrentPrimaryQuest(int)
; decoder-mode: arm
0046b35c  0e 10 81 e2                                      add r1, r1, #0xe
0046b360  01 01 90 e7                                      ldr r0, [r0, r1, lsl #2]
0046b364  1e ff 2f e1                                      bx lr

; FUNCTION 0x0046b510, declared_size=176, range_size=176, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame21SG_VerifyCurrentQuestEi
; demangled: QuestSavegame::SG_VerifyCurrentQuest(int)
; decoder-mode: arm
0046b510  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0046b514  0a 80 81 e2                                      add r8, r1, #0xa
0046b518  08 31 80 e0                                      add r3, r0, r8, lsl #2
0046b51c  04 20 93 e5                                      ldr r2, [r3, #4]
0046b520  00 70 a0 e1                                      mov r7, r0
0046b524  01 00 72 e3                                      cmn r2, #1
0046b528  20 00 00 0a                                      beq #0x46b5b0
0046b52c  0c 30 a0 e3                                      mov r3, #0xc
0046b530  93 01 23 e0                                      mla r3, r3, r1, r0
0046b534  04 30 93 e5                                      ldr r3, [r3, #4]
0046b538  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
0046b53c  00 20 92 e5                                      ldr r2, [r2]
0046b540  06 00 52 e3                                      cmp r2, #6
0046b544  18 00 00 0a                                      beq #0x46b5ac
0046b548  0c 50 a0 e3                                      mov r5, #0xc
0046b54c  95 71 21 e0                                      mla r1, r5, r1, r7
0046b550  08 60 91 e5                                      ldr r6, [r1, #8]
0046b554  06 60 63 e0                                      rsb r6, r3, r6
0046b558  46 61 b0 e1                                      asrs r6, r6, #2
0046b55c  12 00 00 0a                                      beq #0x46b5ac
0046b560  04 50 81 e2                                      add r5, r1, #4
0046b564  00 40 a0 e3                                      mov r4, #0
0046b568  03 00 00 ea                                      b #0x46b57c
0046b56c  01 40 84 e2                                      add r4, r4, #1
0046b570  06 00 54 e1                                      cmp r4, r6
0046b574  0c 00 00 0a                                      beq #0x46b5ac
0046b578  00 30 95 e5                                      ldr r3, [r5]
0046b57c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0046b580  dc 50 00 eb                                      bl #0x47f8f8
0046b584  00 00 50 e3                                      cmp r0, #0
0046b588  f7 ff ff 0a                                      beq #0x46b56c
0046b58c  00 30 95 e5                                      ldr r3, [r5]
0046b590  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0046b594  00 30 93 e5                                      ldr r3, [r3]
0046b598  06 00 53 e3                                      cmp r3, #6
0046b59c  f2 ff ff 1a                                      bne #0x46b56c
0046b5a0  08 71 87 e0                                      add r7, r7, r8, lsl #2
0046b5a4  04 40 87 e5                                      str r4, [r7, #4]
0046b5a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0046b5ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0046b5b0  0c 30 a0 e3                                      mov r3, #0xc
0046b5b4  93 01 23 e0                                      mla r3, r3, r1, r0
0046b5b8  04 30 93 e5                                      ldr r3, [r3, #4]
0046b5bc  e1 ff ff ea                                      b #0x46b548

; FUNCTION 0x0046b5c0, declared_size=28, range_size=28, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame18SG_GetCurrentQuestEi
; demangled: QuestSavegame::SG_GetCurrentQuest(int)
; decoder-mode: arm
0046b5c0  70 40 2d e9                                      push {r4, r5, r6, lr}
0046b5c4  00 40 a0 e1                                      mov r4, r0
0046b5c8  01 50 a0 e1                                      mov r5, r1
0046b5cc  05 41 84 e0                                      add r4, r4, r5, lsl #2
0046b5d0  ce ff ff eb                                      bl #0x46b510
0046b5d4  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0046b5d8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0046b5dc, declared_size=104, range_size=104, mode=arm
; class-group: QuestSavegame
; alias: _ZNK13QuestSavegame19HasMainQuestUpdatedEi
; demangled: QuestSavegame::HasMainQuestUpdated(int) const
; decoder-mode: arm
0046b5dc  70 40 2d e9                                      push {r4, r5, r6, lr}
0046b5e0  0c 30 a0 e3                                      mov r3, #0xc
0046b5e4  93 01 23 e0                                      mla r3, r3, r1, r0
0046b5e8  44 00 93 e9                                      ldmib r3, {r2, r6}
0046b5ec  06 60 62 e0                                      rsb r6, r2, r6
0046b5f0  46 61 b0 e1                                      asrs r6, r6, #2
0046b5f4  10 00 00 0a                                      beq #0x46b63c
0046b5f8  04 50 83 e2                                      add r5, r3, #4
0046b5fc  00 40 a0 e3                                      mov r4, #0
0046b600  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
0046b604  bb 50 00 eb                                      bl #0x47f8f8
0046b608  00 00 50 e3                                      cmp r0, #0
0046b60c  06 00 00 0a                                      beq #0x46b62c
0046b610  00 30 95 e5                                      ldr r3, [r5]
0046b614  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0046b618  5d 30 d3 e5                                      ldrb r3, [r3, #0x5d]
0046b61c  00 00 53 e3                                      cmp r3, #0
0046b620  01 00 00 0a                                      beq #0x46b62c
0046b624  01 00 a0 e3                                      mov r0, #1
0046b628  70 80 bd e8                                      pop {r4, r5, r6, pc}
0046b62c  01 40 84 e2                                      add r4, r4, #1
0046b630  06 00 54 e1                                      cmp r4, r6
0046b634  00 20 95 15                                      ldrne r2, [r5]
0046b638  f0 ff ff 1a                                      bne #0x46b600
0046b63c  00 00 a0 e3                                      mov r0, #0
0046b640  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0046b644, declared_size=480, range_size=480, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame11SynchronizeERKS_b
; demangled: QuestSavegame::Synchronize(QuestSavegame const&, bool)
; decoder-mode: arm
0046b644  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046b648  14 d0 4d e2                                      sub sp, sp, #0x14
0046b64c  08 00 8d e5                                      str r0, [sp, #8]
0046b650  5c 00 90 e5                                      ldr r0, [r0, #0x5c]
0046b654  0c 10 8d e5                                      str r1, [sp, #0xc]
0046b658  00 00 50 e3                                      cmp r0, #0
0046b65c  3c 00 00 0a                                      beq #0x46b754
0046b660  5c 30 91 e5                                      ldr r3, [r1, #0x5c]
0046b664  00 00 53 e3                                      cmp r3, #0
0046b668  39 00 00 0a                                      beq #0x46b754
0046b66c  00 00 52 e3                                      cmp r2, #0
0046b670  30 00 00 1a                                      bne #0x46b738
0046b674  08 00 9d e5                                      ldr r0, [sp, #8]
0046b678  02 90 a0 e1                                      mov sb, r2
0046b67c  5c 30 80 e5                                      str r3, [r0, #0x5c]
0046b680  0c a0 9d e5                                      ldr sl, [sp, #0xc]
0046b684  08 80 9d e5                                      ldr r8, [sp, #8]
0046b688  04 a0 8d e5                                      str sl, [sp, #4]
0046b68c  08 b0 a0 e1                                      mov fp, r8
0046b690  2c 30 9a e5                                      ldr r3, [sl, #0x2c]
0046b694  2c 30 88 e5                                      str r3, [r8, #0x2c]
0046b698  38 30 9a e5                                      ldr r3, [sl, #0x38]
0046b69c  38 30 88 e5                                      str r3, [r8, #0x38]
0046b6a0  44 30 9a e5                                      ldr r3, [sl, #0x44]
0046b6a4  44 30 88 e5                                      str r3, [r8, #0x44]
0046b6a8  04 10 9d e5                                      ldr r1, [sp, #4]
0046b6ac  28 30 d1 e5                                      ldrb r3, [r1, #0x28]
0046b6b0  00 00 53 e3                                      cmp r3, #0
0046b6b4  28 30 cb e5                                      strb r3, [fp, #0x28]
0046b6b8  12 00 00 0a                                      beq #0x46b708
0046b6bc  08 20 9d e5                                      ldr r2, [sp, #8]
0046b6c0  09 50 82 e0                                      add r5, r2, sb
0046b6c4  44 00 95 e9                                      ldmib r5, {r2, r6}
0046b6c8  06 60 62 e0                                      rsb r6, r2, r6
0046b6cc  46 61 b0 e1                                      asrs r6, r6, #2
0046b6d0  0c 00 00 0a                                      beq #0x46b708
0046b6d4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0046b6d8  00 40 a0 e3                                      mov r4, #0
0046b6dc  09 70 83 e0                                      add r7, r3, sb
0046b6e0  00 00 00 ea                                      b #0x46b6e8
0046b6e4  04 20 95 e5                                      ldr r2, [r5, #4]
0046b6e8  04 30 97 e5                                      ldr r3, [r7, #4]
0046b6ec  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
0046b6f0  00 20 a0 e3                                      mov r2, #0
0046b6f4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0046b6f8  01 40 84 e2                                      add r4, r4, #1
0046b6fc  ec 52 00 eb                                      bl #0x4802b4
0046b700  06 00 54 e1                                      cmp r4, r6
0046b704  f6 ff ff 1a                                      bne #0x46b6e4
0046b708  04 00 9d e5                                      ldr r0, [sp, #4]
0046b70c  0c 90 89 e2                                      add sb, sb, #0xc
0046b710  24 00 59 e3                                      cmp sb, #0x24
0046b714  01 00 80 e2                                      add r0, r0, #1
0046b718  04 a0 8a e2                                      add sl, sl, #4
0046b71c  04 80 88 e2                                      add r8, r8, #4
0046b720  04 00 8d e5                                      str r0, [sp, #4]
0046b724  01 b0 8b e2                                      add fp, fp, #1
0046b728  d8 ff ff 1a                                      bne #0x46b690
0046b72c  01 00 a0 e3                                      mov r0, #1
0046b730  14 d0 8d e2                                      add sp, sp, #0x14
0046b734  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046b738  69 40 fd eb                                      bl #0x3bb8e4
0046b73c  00 40 a0 e1                                      mov r4, r0
0046b740  04 10 a0 e1                                      mov r1, r4
0046b744  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0046b748  a3 ff ff eb                                      bl #0x46b5dc
0046b74c  00 00 50 e3                                      cmp r0, #0
0046b750  01 00 00 1a                                      bne #0x46b75c
0046b754  00 00 a0 e3                                      mov r0, #0
0046b758  f4 ff ff ea                                      b #0x46b730
0046b75c  08 00 9d e5                                      ldr r0, [sp, #8]
0046b760  10 60 84 e2                                      add r6, r4, #0x10
0046b764  06 61 a0 e1                                      lsl r6, r6, #2
0046b768  06 50 80 e0                                      add r5, r0, r6
0046b76c  04 10 95 e5                                      ldr r1, [r5, #4]
0046b770  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0046b774  04 20 a0 e1                                      mov r2, r4
0046b778  71 fe ff eb                                      bl #0x46b144
0046b77c  00 00 50 e3                                      cmp r0, #0
0046b780  f3 ff ff 0a                                      beq #0x46b754
0046b784  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0046b788  08 00 9d e5                                      ldr r0, [sp, #8]
0046b78c  0e 30 84 e2                                      add r3, r4, #0xe
0046b790  03 11 92 e7                                      ldr r1, [r2, r3, lsl #2]
0046b794  04 21 80 e0                                      add r2, r0, r4, lsl #2
0046b798  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0046b79c  2c 10 82 e5                                      str r1, [r2, #0x2c]
0046b7a0  03 11 90 e7                                      ldr r1, [r0, r3, lsl #2]
0046b7a4  06 60 80 e0                                      add r6, r0, r6
0046b7a8  04 20 80 e0                                      add r2, r0, r4
0046b7ac  08 00 9d e5                                      ldr r0, [sp, #8]
0046b7b0  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
0046b7b4  04 10 96 e5                                      ldr r1, [r6, #4]
0046b7b8  0c 30 a0 e3                                      mov r3, #0xc
0046b7bc  93 04 03 e0                                      mul r3, r3, r4
0046b7c0  04 10 85 e5                                      str r1, [r5, #4]
0046b7c4  28 20 d2 e5                                      ldrb r2, [r2, #0x28]
0046b7c8  04 40 80 e0                                      add r4, r0, r4
0046b7cc  03 70 80 e0                                      add r7, r0, r3
0046b7d0  28 20 c4 e5                                      strb r2, [r4, #0x28]
0046b7d4  44 00 97 e9                                      ldmib r7, {r2, r6}
0046b7d8  06 60 62 e0                                      rsb r6, r2, r6
0046b7dc  46 61 b0 e1                                      asrs r6, r6, #2
0046b7e0  d1 ff ff 0a                                      beq #0x46b72c
0046b7e4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0046b7e8  04 70 87 e2                                      add r7, r7, #4
0046b7ec  00 40 a0 e3                                      mov r4, #0
0046b7f0  03 30 81 e0                                      add r3, r1, r3
0046b7f4  04 50 83 e2                                      add r5, r3, #4
0046b7f8  00 00 00 ea                                      b #0x46b800
0046b7fc  00 20 97 e5                                      ldr r2, [r7]
0046b800  00 30 95 e5                                      ldr r3, [r5]
0046b804  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
0046b808  01 20 a0 e3                                      mov r2, #1
0046b80c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0046b810  02 40 84 e0                                      add r4, r4, r2
0046b814  a6 52 00 eb                                      bl #0x4802b4
0046b818  06 00 54 e1                                      cmp r4, r6
0046b81c  f6 ff ff 1a                                      bne #0x46b7fc
0046b820  c1 ff ff ea                                      b #0x46b72c

; FUNCTION 0x0046b824, declared_size=140, range_size=140, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame13CompileQuestsEb
; demangled: QuestSavegame::CompileQuests(bool)
; decoder-mode: arm
0046b824  00 00 51 e3                                      cmp r1, #0
0046b828  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0046b82c  00 50 a0 e1                                      mov r5, r0
0046b830  17 00 00 0a                                      beq #0x46b894
0046b834  5c 00 95 e5                                      ldr r0, [r5, #0x5c]
0046b838  29 40 fd eb                                      bl #0x3bb8e4
0046b83c  01 30 a0 e3                                      mov r3, #1
0046b840  00 00 85 e0                                      add r0, r5, r0
0046b844  28 30 c0 e5                                      strb r3, [r0, #0x28]
0046b848  5c 00 95 e5                                      ldr r0, [r5, #0x5c]
0046b84c  24 40 fd eb                                      bl #0x3bb8e4
0046b850  0c 70 a0 e3                                      mov r7, #0xc
0046b854  97 50 20 e0                                      mla r0, r7, r0, r5
0046b858  48 00 90 e9                                      ldmib r0, {r3, r6}
0046b85c  06 60 63 e0                                      rsb r6, r3, r6
0046b860  46 61 b0 e1                                      asrs r6, r6, #2
0046b864  09 00 00 0a                                      beq #0x46b890
0046b868  00 40 a0 e3                                      mov r4, #0
0046b86c  5c 00 95 e5                                      ldr r0, [r5, #0x5c]
0046b870  1b 40 fd eb                                      bl #0x3bb8e4
0046b874  97 50 20 e0                                      mla r0, r7, r0, r5
0046b878  04 30 90 e5                                      ldr r3, [r0, #4]
0046b87c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0046b880  01 40 84 e2                                      add r4, r4, #1
0046b884  3b 52 00 eb                                      bl #0x480178
0046b888  06 00 54 e1                                      cmp r4, r6
0046b88c  f6 ff ff 1a                                      bne #0x46b86c
0046b890  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0046b894  5c 00 90 e5                                      ldr r0, [r0, #0x5c]
0046b898  11 40 fd eb                                      bl #0x3bb8e4
0046b89c  00 00 85 e0                                      add r0, r5, r0
0046b8a0  28 30 d0 e5                                      ldrb r3, [r0, #0x28]
0046b8a4  00 00 53 e3                                      cmp r3, #0
0046b8a8  e1 ff ff 0a                                      beq #0x46b834
0046b8ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0046b8b0, declared_size=144, range_size=144, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame36SG_DBG_TraceDetailedQuestInformationEP7__sFILEii
; demangled: QuestSavegame::SG_DBG_TraceDetailedQuestInformation(__sFILE*, int, int)
; decoder-mode: arm
0046b8b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0046b8b4  01 40 a0 e1                                      mov r4, r1
0046b8b8  00 10 a0 e3                                      mov r1, #0
0046b8bc  03 50 a0 e1                                      mov r5, r3
0046b8c0  00 60 a0 e1                                      mov r6, r0
0046b8c4  02 80 a0 e1                                      mov r8, r2
0046b8c8  d5 ff ff eb                                      bl #0x46b824
0046b8cc  0c 30 a0 e3                                      mov r3, #0xc
0046b8d0  93 65 25 e0                                      mla r5, r3, r5, r6
0046b8d4  08 04 95 e9                                      ldmib r5, {r3, sl}
0046b8d8  0a a0 63 e0                                      rsb sl, r3, sl
0046b8dc  4a a1 b0 e1                                      asrs sl, sl, #2
0046b8e0  15 00 00 0a                                      beq #0x46b93c
0046b8e4  00 60 a0 e3                                      mov r6, #0
0046b8e8  04 50 85 e2                                      add r5, r5, #4
0046b8ec  06 70 a0 e1                                      mov r7, r6
0046b8f0  08 00 00 ea                                      b #0x46b918
0046b8f4  06 00 93 e7                                      ldr r0, [r3, r6]
0046b8f8  00 30 90 e5                                      ldr r3, [r0]
0046b8fc  03 00 58 e1                                      cmp r8, r3
0046b900  07 00 00 0a                                      beq #0x46b924
0046b904  01 70 87 e2                                      add r7, r7, #1
0046b908  0a 00 57 e1                                      cmp r7, sl
0046b90c  04 60 86 e2                                      add r6, r6, #4
0046b910  09 00 00 0a                                      beq #0x46b93c
0046b914  00 30 95 e5                                      ldr r3, [r5]
0046b918  00 00 58 e3                                      cmp r8, #0
0046b91c  06 00 93 b7                                      ldrlt r0, [r3, r6]
0046b920  f3 ff ff aa                                      bge #0x46b8f4
0046b924  04 10 a0 e1                                      mov r1, r4
0046b928  01 70 87 e2                                      add r7, r7, #1
0046b92c  7d 52 00 eb                                      bl #0x480328
0046b930  0a 00 57 e1                                      cmp r7, sl
0046b934  04 60 86 e2                                      add r6, r6, #4
0046b938  f5 ff ff 1a                                      bne #0x46b914
0046b93c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0046b940, declared_size=268, range_size=268, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame15SG_GetQuestByIDEiib
; demangled: QuestSavegame::SG_GetQuestByID(int, int, bool)
; decoder-mode: arm
0046b940  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0046b944  e8 c0 9f e5                                      ldr ip, [pc, #0xe8]
0046b948  00 40 51 e2                                      subs r4, r1, #0
0046b94c  0c d0 4d e2                                      sub sp, sp, #0xc
0046b950  0c c0 8f e0                                      add ip, pc, ip
0046b954  00 50 a0 e1                                      mov r5, r0
0046b958  02 60 a0 e1                                      mov r6, r2
0046b95c  03 70 a0 e1                                      mov r7, r3
0046b960  06 00 00 ba                                      blt #0x46b980
0046b964  0c 30 a0 e3                                      mov r3, #0xc
0046b968  93 02 23 e0                                      mla r3, r3, r2, r0
0046b96c  08 20 93 e5                                      ldr r2, [r3, #8]
0046b970  04 30 93 e5                                      ldr r3, [r3, #4]
0046b974  02 20 63 e0                                      rsb r2, r3, r2
0046b978  42 01 54 e1                                      cmp r4, r2, asr #2
0046b97c  14 00 00 ba                                      blt #0x46b9d4
0046b980  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0046b984  03 30 9c e7                                      ldr r3, [ip, r3]
0046b988  00 30 93 e5                                      ldr r3, [r3]
0046b98c  02 00 53 e3                                      cmp r3, #2
0046b990  00 30 a0 03                                      moveq r3, #0
0046b994  00 30 83 05                                      streq r3, [r3]
0046b998  01 00 00 0a                                      beq #0x46b9a4
0046b99c  01 00 53 e3                                      cmp r3, #1
0046b9a0  16 00 00 0a                                      beq #0x46ba00
0046b9a4  00 00 54 e3                                      cmp r4, #0
0046b9a8  06 00 00 ba                                      blt #0x46b9c8
0046b9ac  0c 30 a0 e3                                      mov r3, #0xc
0046b9b0  93 56 23 e0                                      mla r3, r3, r6, r5
0046b9b4  08 20 93 e5                                      ldr r2, [r3, #8]
0046b9b8  04 30 93 e5                                      ldr r3, [r3, #4]
0046b9bc  02 20 63 e0                                      rsb r2, r3, r2
0046b9c0  42 01 54 e1                                      cmp r4, r2, asr #2
0046b9c4  02 00 00 ba                                      blt #0x46b9d4
0046b9c8  00 00 a0 e3                                      mov r0, #0
0046b9cc  0c d0 8d e2                                      add sp, sp, #0xc
0046b9d0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0046b9d4  00 00 57 e3                                      cmp r7, #0
0046b9d8  04 01 93 07                                      ldreq r0, [r3, r4, lsl #2]
0046b9dc  fa ff ff 0a                                      beq #0x46b9cc
0046b9e0  05 00 a0 e1                                      mov r0, r5
0046b9e4  00 10 a0 e3                                      mov r1, #0
0046b9e8  8d ff ff eb                                      bl #0x46b824
0046b9ec  0c 30 a0 e3                                      mov r3, #0xc
0046b9f0  93 56 25 e0                                      mla r5, r3, r6, r5
0046b9f4  04 30 95 e5                                      ldr r3, [r5, #4]
0046b9f8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0046b9fc  f2 ff ff ea                                      b #0x46b9cc
0046ba00  34 00 9f e5                                      ldr r0, [pc, #0x34]
0046ba04  34 10 9f e5                                      ldr r1, [pc, #0x34]
0046ba08  34 20 9f e5                                      ldr r2, [pc, #0x34]
0046ba0c  00 00 9c e7                                      ldr r0, [ip, r0]
0046ba10  30 30 9f e5                                      ldr r3, [pc, #0x30]
0046ba14  26 c1 00 e3                                      movw ip, #0x126
0046ba18  01 10 8f e0                                      add r1, pc, r1
0046ba1c  02 20 8f e0                                      add r2, pc, r2
0046ba20  03 30 8f e0                                      add r3, pc, r3
0046ba24  a8 00 80 e2                                      add r0, r0, #0xa8
0046ba28  00 c0 8d e5                                      str ip, [sp]
0046ba2c  74 89 fa eb                                      bl #0x30e004
0046ba30  db ff ff ea                                      b #0x46b9a4
; mapping-symbol data/literal pool
0046ba34  40 91 52 00 c0 39 00 00 c0 19 00 00 c0 29 45 00  .byte 0x40, 0x91, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc0, 0x29, 0x45, 0x00
0046ba44  0c 1b 46 00 38 1b 46 00                          .byte 0x0c, 0x1b, 0x46, 0x00, 0x38, 0x1b, 0x46, 0x00

; FUNCTION 0x0046ba4c, declared_size=268, range_size=268, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame17SG_GetQuestByNameEPKci
; demangled: QuestSavegame::SG_GetQuestByName(char const*, int)
; decoder-mode: arm
0046ba4c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0046ba50  e0 50 9f e5                                      ldr r5, [pc, #0xe0]
0046ba54  00 40 51 e2                                      subs r4, r1, #0
0046ba58  0c d0 4d e2                                      sub sp, sp, #0xc
0046ba5c  00 70 a0 e1                                      mov r7, r0
0046ba60  05 50 8f e0                                      add r5, pc, r5
0046ba64  02 60 a0 e1                                      mov r6, r2
0046ba68  1d 00 00 0a                                      beq #0x46bae4
0046ba6c  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
0046ba70  03 30 95 e7                                      ldr r3, [r5, r3]
0046ba74  00 a0 93 e5                                      ldr sl, [r3]
0046ba78  00 00 5a e3                                      cmp sl, #0
0046ba7c  15 00 00 0a                                      beq #0x46bad8
0046ba80  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0046ba84  00 80 a0 e3                                      mov r8, #0
0046ba88  03 30 95 e7                                      ldr r3, [r5, r3]
0046ba8c  00 50 93 e5                                      ldr r5, [r3]
0046ba90  02 00 00 ea                                      b #0x46baa0
0046ba94  01 80 88 e2                                      add r8, r8, #1
0046ba98  0a 00 58 e1                                      cmp r8, sl
0046ba9c  0d 00 00 0a                                      beq #0x46bad8
0046baa0  08 11 95 e7                                      ldr r1, [r5, r8, lsl #2]
0046baa4  04 00 a0 e1                                      mov r0, r4
0046baa8  1b 8a fa eb                                      bl #0x30e31c
0046baac  00 00 50 e3                                      cmp r0, #0
0046bab0  f7 ff ff 1a                                      bne #0x46ba94
0046bab4  01 00 78 e3                                      cmn r8, #1
0046bab8  06 00 00 0a                                      beq #0x46bad8
0046babc  07 00 a0 e1                                      mov r0, r7
0046bac0  08 10 a0 e1                                      mov r1, r8
0046bac4  06 20 a0 e1                                      mov r2, r6
0046bac8  01 30 a0 e3                                      mov r3, #1
0046bacc  0c d0 8d e2                                      add sp, sp, #0xc
0046bad0  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
0046bad4  99 ff ff ea                                      b #0x46b940
0046bad8  00 00 a0 e3                                      mov r0, #0
0046badc  0c d0 8d e2                                      add sp, sp, #0xc
0046bae0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0046bae4  58 30 9f e5                                      ldr r3, [pc, #0x58]
0046bae8  03 30 95 e7                                      ldr r3, [r5, r3]
0046baec  00 30 93 e5                                      ldr r3, [r3]
0046baf0  02 00 53 e3                                      cmp r3, #2
0046baf4  00 40 84 05                                      streq r4, [r4]
0046baf8  db ff ff 0a                                      beq #0x46ba6c
0046bafc  01 00 53 e3                                      cmp r3, #1
0046bb00  d9 ff ff 1a                                      bne #0x46ba6c
0046bb04  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0046bb08  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0046bb0c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0046bb10  00 00 95 e7                                      ldr r0, [r5, r0]
0046bb14  38 30 9f e5                                      ldr r3, [pc, #0x38]
0046bb18  4d cf a0 e3                                      mov ip, #0x134
0046bb1c  01 10 8f e0                                      add r1, pc, r1
0046bb20  02 20 8f e0                                      add r2, pc, r2
0046bb24  03 30 8f e0                                      add r3, pc, r3
0046bb28  a8 00 80 e2                                      add r0, r0, #0xa8
0046bb2c  00 c0 8d e5                                      str ip, [sp]
0046bb30  33 89 fa eb                                      bl #0x30e004
0046bb34  cc ff ff ea                                      b #0x46ba6c
; mapping-symbol data/literal pool
0046bb38  30 90 52 00 24 44 00 00 cc 20 00 00 c0 39 00 00  .byte 0x30, 0x90, 0x52, 0x00, 0x24, 0x44, 0x00, 0x00, 0xcc, 0x20, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0046bb48  c0 19 00 00 bc 28 45 00 c8 55 47 00 34 1a 46 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xbc, 0x28, 0x45, 0x00, 0xc8, 0x55, 0x47, 0x00, 0x34, 0x1a, 0x46, 0x00

; FUNCTION 0x0046bb58, declared_size=132, range_size=132, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame12UpdateQuestsEb
; demangled: QuestSavegame::UpdateQuests(bool)
; decoder-mode: arm
0046bb58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0046bb5c  00 40 a0 e1                                      mov r4, r0
0046bb60  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
0046bb64  01 50 a0 e1                                      mov r5, r1
0046bb68  0c 70 a0 e3                                      mov r7, #0xc
0046bb6c  00 00 8f e0                                      add r0, pc, r0
0046bb70  cf 9e fa eb                                      bl #0x3136b4
0046bb74  04 00 a0 e1                                      mov r0, r4
0046bb78  05 10 a0 e1                                      mov r1, r5
0046bb7c  28 ff ff eb                                      bl #0x46b824
0046bb80  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
0046bb84  56 3f fd eb                                      bl #0x3bb8e4
0046bb88  97 40 20 e0                                      mla r0, r7, r0, r4
0046bb8c  48 00 90 e9                                      ldmib r0, {r3, r6}
0046bb90  06 60 63 e0                                      rsb r6, r3, r6
0046bb94  46 61 b0 e1                                      asrs r6, r6, #2
0046bb98  09 00 00 0a                                      beq #0x46bbc4
0046bb9c  00 50 a0 e3                                      mov r5, #0
0046bba0  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
0046bba4  4e 3f fd eb                                      bl #0x3bb8e4
0046bba8  97 40 20 e0                                      mla r0, r7, r0, r4
0046bbac  04 30 90 e5                                      ldr r3, [r0, #4]
0046bbb0  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0046bbb4  01 50 85 e2                                      add r5, r5, #1
0046bbb8  16 57 00 eb                                      bl #0x481818
0046bbbc  06 00 55 e1                                      cmp r5, r6
0046bbc0  f6 ff ff 1a                                      bne #0x46bba0
0046bbc4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0046bbc8  00 00 8f e0                                      add r0, pc, r0
0046bbcc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0046bbd0  b8 9e fa ea                                      b #0x3136b8
; mapping-symbol data/literal pool
0046bbd4  3c 1a 46 00 e0 19 46 00                          .byte 0x3c, 0x1a, 0x46, 0x00, 0xe0, 0x19, 0x46, 0x00

; FUNCTION 0x0046be6c, declared_size=224, range_size=224, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegameD1Ev
; demangled: QuestSavegame::~QuestSavegame()
; decoder-mode: arm
0046be6c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046be70  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0046be74  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
0046be78  00 b0 a0 e3                                      mov fp, #0
0046be7c  03 30 8f e0                                      add r3, pc, r3
0046be80  02 20 93 e7                                      ldr r2, [r3, r2]
0046be84  00 60 a0 e1                                      mov r6, r0
0046be88  0b 90 a0 e1                                      mov sb, fp
0046be8c  08 20 82 e2                                      add r2, r2, #8
0046be90  00 20 80 e5                                      str r2, [r0]
0046be94  0b 80 86 e0                                      add r8, r6, fp
0046be98  80 04 98 e9                                      ldmib r8, {r7, sl}
0046be9c  0a a0 67 e0                                      rsb sl, r7, sl
0046bea0  4a a1 b0 e1                                      asrs sl, sl, #2
0046bea4  0d 00 00 0a                                      beq #0x46bee0
0046bea8  00 40 a0 e3                                      mov r4, #0
0046beac  00 00 00 ea                                      b #0x46beb4
0046beb0  04 70 98 e5                                      ldr r7, [r8, #4]
0046beb4  04 51 97 e7                                      ldr r5, [r7, r4, lsl #2]
0046beb8  00 00 55 e3                                      cmp r5, #0
0046bebc  04 00 00 0a                                      beq #0x46bed4
0046bec0  05 00 a0 e1                                      mov r0, r5
0046bec4  b6 52 00 eb                                      bl #0x4809a4
0046bec8  05 00 a0 e1                                      mov r0, r5
0046becc  5b 91 fa eb                                      bl #0x310440
0046bed0  04 91 87 e7                                      str sb, [r7, r4, lsl #2]
0046bed4  01 40 84 e2                                      add r4, r4, #1
0046bed8  0a 00 54 e1                                      cmp r4, sl
0046bedc  f3 ff ff 1a                                      bne #0x46beb0
0046bee0  0c b0 8b e2                                      add fp, fp, #0xc
0046bee4  24 00 5b e3                                      cmp fp, #0x24
0046bee8  e9 ff ff 1a                                      bne #0x46be94
0046beec  04 50 86 e2                                      add r5, r6, #4
0046bef0  28 40 86 e2                                      add r4, r6, #0x28
0046bef4  03 00 00 ea                                      b #0x46bf08
0046bef8  00 74 0a eb                                      bl #0x708f00
0046befc  0c 40 44 e2                                      sub r4, r4, #0xc
0046bf00  05 00 54 e1                                      cmp r4, r5
0046bf04  0c 00 00 0a                                      beq #0x46bf3c
0046bf08  0c 30 14 e5                                      ldr r3, [r4, #-0xc]
0046bf0c  00 00 53 e3                                      cmp r3, #0
0046bf10  f9 ff ff 0a                                      beq #0x46befc
0046bf14  04 10 14 e5                                      ldr r1, [r4, #-4]
0046bf18  03 00 a0 e1                                      mov r0, r3
0046bf1c  01 10 63 e0                                      rsb r1, r3, r1
0046bf20  03 10 c1 e3                                      bic r1, r1, #3
0046bf24  80 00 51 e3                                      cmp r1, #0x80
0046bf28  f2 ff ff 9a                                      bls #0x46bef8
0046bf2c  0c 40 44 e2                                      sub r4, r4, #0xc
0046bf30  42 91 fa eb                                      bl #0x310440
0046bf34  05 00 54 e1                                      cmp r4, r5
0046bf38  f2 ff ff 1a                                      bne #0x46bf08
0046bf3c  06 00 a0 e1                                      mov r0, r6
0046bf40  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0046bf44  14 8c 52 00 e4 34 00 00                          .byte 0x14, 0x8c, 0x52, 0x00, 0xe4, 0x34, 0x00, 0x00

; FUNCTION 0x0046bf4c, declared_size=28, range_size=28, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegameD0Ev
; demangled: QuestSavegame::~QuestSavegame()
; decoder-mode: arm
0046bf4c  10 40 2d e9                                      push {r4, lr}
0046bf50  00 40 a0 e1                                      mov r4, r0
0046bf54  c4 ff ff eb                                      bl #0x46be6c
0046bf58  04 00 a0 e1                                      mov r0, r4
0046bf5c  37 91 fa eb                                      bl #0x310440
0046bf60  04 00 a0 e1                                      mov r0, r4
0046bf64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046bf68, declared_size=224, range_size=224, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegameD2Ev
; demangled: QuestSavegame::~QuestSavegame()
; decoder-mode: arm
0046bf68  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046bf6c  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0046bf70  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
0046bf74  00 b0 a0 e3                                      mov fp, #0
0046bf78  03 30 8f e0                                      add r3, pc, r3
0046bf7c  02 20 93 e7                                      ldr r2, [r3, r2]
0046bf80  00 60 a0 e1                                      mov r6, r0
0046bf84  0b 90 a0 e1                                      mov sb, fp
0046bf88  08 20 82 e2                                      add r2, r2, #8
0046bf8c  00 20 80 e5                                      str r2, [r0]
0046bf90  0b 80 86 e0                                      add r8, r6, fp
0046bf94  80 04 98 e9                                      ldmib r8, {r7, sl}
0046bf98  0a a0 67 e0                                      rsb sl, r7, sl
0046bf9c  4a a1 b0 e1                                      asrs sl, sl, #2
0046bfa0  0d 00 00 0a                                      beq #0x46bfdc
0046bfa4  00 40 a0 e3                                      mov r4, #0
0046bfa8  00 00 00 ea                                      b #0x46bfb0
0046bfac  04 70 98 e5                                      ldr r7, [r8, #4]
0046bfb0  04 51 97 e7                                      ldr r5, [r7, r4, lsl #2]
0046bfb4  00 00 55 e3                                      cmp r5, #0
0046bfb8  04 00 00 0a                                      beq #0x46bfd0
0046bfbc  05 00 a0 e1                                      mov r0, r5
0046bfc0  77 52 00 eb                                      bl #0x4809a4
0046bfc4  05 00 a0 e1                                      mov r0, r5
0046bfc8  1c 91 fa eb                                      bl #0x310440
0046bfcc  04 91 87 e7                                      str sb, [r7, r4, lsl #2]
0046bfd0  01 40 84 e2                                      add r4, r4, #1
0046bfd4  0a 00 54 e1                                      cmp r4, sl
0046bfd8  f3 ff ff 1a                                      bne #0x46bfac
0046bfdc  0c b0 8b e2                                      add fp, fp, #0xc
0046bfe0  24 00 5b e3                                      cmp fp, #0x24
0046bfe4  e9 ff ff 1a                                      bne #0x46bf90
0046bfe8  04 50 86 e2                                      add r5, r6, #4
0046bfec  28 40 86 e2                                      add r4, r6, #0x28
0046bff0  03 00 00 ea                                      b #0x46c004
0046bff4  c1 73 0a eb                                      bl #0x708f00
0046bff8  0c 40 44 e2                                      sub r4, r4, #0xc
0046bffc  05 00 54 e1                                      cmp r4, r5
0046c000  0c 00 00 0a                                      beq #0x46c038
0046c004  0c 30 14 e5                                      ldr r3, [r4, #-0xc]
0046c008  00 00 53 e3                                      cmp r3, #0
0046c00c  f9 ff ff 0a                                      beq #0x46bff8
0046c010  04 10 14 e5                                      ldr r1, [r4, #-4]
0046c014  03 00 a0 e1                                      mov r0, r3
0046c018  01 10 63 e0                                      rsb r1, r3, r1
0046c01c  03 10 c1 e3                                      bic r1, r1, #3
0046c020  80 00 51 e3                                      cmp r1, #0x80
0046c024  f2 ff ff 9a                                      bls #0x46bff4
0046c028  0c 40 44 e2                                      sub r4, r4, #0xc
0046c02c  03 91 fa eb                                      bl #0x310440
0046c030  05 00 54 e1                                      cmp r4, r5
0046c034  f2 ff ff 1a                                      bne #0x46c004
0046c038  06 00 a0 e1                                      mov r0, r6
0046c03c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0046c040  18 8b 52 00 e4 34 00 00                          .byte 0x18, 0x8b, 0x52, 0x00, 0xe4, 0x34, 0x00, 0x00

; FUNCTION 0x0046c1a8, declared_size=412, range_size=412, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame10InitQuestsEv
; demangled: QuestSavegame::InitQuests()
; decoder-mode: arm
0046c1a8  84 11 9f e5                                      ldr r1, [pc, #0x184]
0046c1ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046c1b0  80 31 9f e5                                      ldr r3, [pc, #0x180]
0046c1b4  01 10 8f e0                                      add r1, pc, r1
0046c1b8  2c d0 4d e2                                      sub sp, sp, #0x2c
0046c1bc  03 30 91 e7                                      ldr r3, [r1, r3]
0046c1c0  74 21 9f e5                                      ldr r2, [pc, #0x174]
0046c1c4  08 10 8d e5                                      str r1, [sp, #8]
0046c1c8  14 30 8d e5                                      str r3, [sp, #0x14]
0046c1cc  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
0046c1d0  00 10 a0 e3                                      mov r1, #0
0046c1d4  1c 20 8d e5                                      str r2, [sp, #0x1c]
0046c1d8  24 20 8d e2                                      add r2, sp, #0x24
0046c1dc  10 30 8d e5                                      str r3, [sp, #0x10]
0046c1e0  0c 10 8d e5                                      str r1, [sp, #0xc]
0046c1e4  00 60 a0 e1                                      mov r6, r0
0046c1e8  04 10 8d e5                                      str r1, [sp, #4]
0046c1ec  18 20 8d e5                                      str r2, [sp, #0x18]
0046c1f0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0046c1f4  14 10 9d e5                                      ldr r1, [sp, #0x14]
0046c1f8  03 40 86 e0                                      add r4, r6, r3
0046c1fc  08 04 94 e9                                      ldmib r4, {r3, sl}
0046c200  00 50 91 e5                                      ldr r5, [r1]
0046c204  0a a0 63 e0                                      rsb sl, r3, sl
0046c208  4a a1 b0 e1                                      asrs sl, sl, #2
0046c20c  13 00 00 0a                                      beq #0x46c260
0046c210  00 00 55 e3                                      cmp r5, #0
0046c214  00 70 a0 13                                      movne r7, #0
0046c218  01 00 00 1a                                      bne #0x46c224
0046c21c  05 00 00 ea                                      b #0x46c238
0046c220  04 30 94 e5                                      ldr r3, [r4, #4]
0046c224  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
0046c228  01 70 87 e2                                      add r7, r7, #1
0046c22c  8b 4f 00 eb                                      bl #0x480060
0046c230  05 00 57 e1                                      cmp r7, r5
0046c234  f9 ff ff 1a                                      bne #0x46c220
0046c238  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0046c23c  04 10 9d e5                                      ldr r1, [sp, #4]
0046c240  0c 30 83 e2                                      add r3, r3, #0xc
0046c244  01 10 81 e2                                      add r1, r1, #1
0046c248  24 00 53 e3                                      cmp r3, #0x24
0046c24c  0c 30 8d e5                                      str r3, [sp, #0xc]
0046c250  04 10 8d e5                                      str r1, [sp, #4]
0046c254  e5 ff ff 1a                                      bne #0x46c1f0
0046c258  2c d0 8d e2                                      add sp, sp, #0x2c
0046c25c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046c260  04 20 9d e5                                      ldr r2, [sp, #4]
0046c264  0c 30 a0 e3                                      mov r3, #0xc
0046c268  05 10 a0 e1                                      mov r1, r5
0046c26c  93 62 20 e0                                      mla r0, r3, r2, r6
0046c270  18 20 9d e5                                      ldr r2, [sp, #0x18]
0046c274  04 00 80 e2                                      add r0, r0, #4
0046c278  24 a0 8d e5                                      str sl, [sp, #0x24]
0046c27c  b8 ff ff eb                                      bl #0x46c164
0046c280  00 00 55 e3                                      cmp r5, #0
0046c284  eb ff ff 0a                                      beq #0x46c238
0046c288  08 20 9d e5                                      ldr r2, [sp, #8]
0046c28c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0046c290  0a 80 a0 e1                                      mov r8, sl
0046c294  01 b0 92 e7                                      ldr fp, [r2, r1]
0046c298  00 10 a0 e3                                      mov r1, #0
0046c29c  6c 00 a0 e3                                      mov r0, #0x6c
0046c2a0  00 90 9b e5                                      ldr sb, [fp]
0046c2a4  b1 90 fa eb                                      bl #0x310570
0046c2a8  04 10 9d e5                                      ldr r1, [sp, #4]
0046c2ac  00 70 a0 e1                                      mov r7, r0
0046c2b0  8b 51 00 eb                                      bl #0x4808e4
0046c2b4  5c 30 96 e5                                      ldr r3, [r6, #0x5c]
0046c2b8  07 00 a0 e1                                      mov r0, r7
0046c2bc  0a 90 89 e0                                      add sb, sb, sl
0046c2c0  60 30 87 e5                                      str r3, [r7, #0x60]
0046c2c4  43 51 00 eb                                      bl #0x4807d8
0046c2c8  08 20 9d e5                                      ldr r2, [sp, #8]
0046c2cc  10 10 9d e5                                      ldr r1, [sp, #0x10]
0046c2d0  07 00 a0 e1                                      mov r0, r7
0046c2d4  47 af 8a e2                                      add sl, sl, #0x11c
0046c2d8  01 30 92 e7                                      ldr r3, [r2, r1]
0046c2dc  09 10 a0 e1                                      mov r1, sb
0046c2e0  00 30 93 e5                                      ldr r3, [r3]
0046c2e4  08 31 93 e7                                      ldr r3, [r3, r8, lsl #2]
0046c2e8  08 80 87 e5                                      str r8, [r7, #8]
0046c2ec  14 30 87 e5                                      str r3, [r7, #0x14]
0046c2f0  49 51 00 eb                                      bl #0x48081c
0046c2f4  07 00 a0 e1                                      mov r0, r7
0046c2f8  58 4f 00 eb                                      bl #0x480060
0046c2fc  04 30 94 e5                                      ldr r3, [r4, #4]
0046c300  08 71 83 e7                                      str r7, [r3, r8, lsl #2]
0046c304  01 80 88 e2                                      add r8, r8, #1
0046c308  05 00 58 e1                                      cmp r8, r5
0046c30c  e1 ff ff 1a                                      bne #0x46c298
0046c310  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0046c314  04 10 9d e5                                      ldr r1, [sp, #4]
0046c318  0c 30 83 e2                                      add r3, r3, #0xc
0046c31c  01 10 81 e2                                      add r1, r1, #1
0046c320  24 00 53 e3                                      cmp r3, #0x24
0046c324  0c 30 8d e5                                      str r3, [sp, #0xc]
0046c328  04 10 8d e5                                      str r1, [sp, #4]
0046c32c  af ff ff 1a                                      bne #0x46c1f0
0046c330  c8 ff ff ea                                      b #0x46c258
; mapping-symbol data/literal pool
0046c334  dc 88 52 00 24 44 00 00 c8 46 00 00 cc 20 00 00  .byte 0xdc, 0x88, 0x52, 0x00, 0x24, 0x44, 0x00, 0x00, 0xc8, 0x46, 0x00, 0x00, 0xcc, 0x20, 0x00, 0x00

; FUNCTION 0x0046c344, declared_size=328, range_size=328, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame11UnpackQuestEiiP11IStreamBaseb
; demangled: QuestSavegame::UnpackQuest(int, int, IStreamBase*, bool)
; decoder-mode: arm
0046c344  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0046c348  20 41 9f e5                                      ldr r4, [pc, #0x120]
0046c34c  20 61 9f e5                                      ldr r6, [pc, #0x120]
0046c350  30 d0 4d e2                                      sub sp, sp, #0x30
0046c354  04 40 8f e0                                      add r4, pc, r4
0046c358  06 c0 94 e7                                      ldr ip, [r4, r6]
0046c35c  14 50 8d e2                                      add r5, sp, #0x14
0046c360  00 70 a0 e1                                      mov r7, r0
0046c364  00 c0 9c e5                                      ldr ip, [ip]
0046c368  05 00 a0 e1                                      mov r0, r5
0046c36c  02 80 a0 e1                                      mov r8, r2
0046c370  03 a0 a0 e1                                      mov sl, r3
0046c374  0c 10 8d e5                                      str r1, [sp, #0xc]
0046c378  2c c0 8d e5                                      str ip, [sp, #0x2c]
0046c37c  24 50 8d e5                                      str r5, [sp, #0x24]
0046c380  28 50 8d e5                                      str r5, [sp, #0x28]
0046c384  50 90 dd e5                                      ldrb sb, [sp, #0x50]
0046c388  b6 fe ff eb                                      bl #0x46be68
0046c38c  24 30 9d e5                                      ldr r3, [sp, #0x24]
0046c390  00 20 a0 e3                                      mov r2, #0
0046c394  0a 00 a0 e1                                      mov r0, sl
0046c398  00 20 c3 e5                                      strb r2, [r3]
0046c39c  0c 10 8d e2                                      add r1, sp, #0xc
0046c3a0  ec 7c fc eb                                      bl #0x38b758
0046c3a4  0c 30 a0 e3                                      mov r3, #0xc
0046c3a8  93 78 27 e0                                      mla r7, r3, r8, r7
0046c3ac  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0046c3b0  04 30 97 e5                                      ldr r3, [r7, #4]
0046c3b4  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
0046c3b8  00 00 50 e3                                      cmp r0, #0
0046c3bc  15 00 00 0a                                      beq #0x46c418
0046c3c0  0a 10 a0 e1                                      mov r1, sl
0046c3c4  09 20 a0 e1                                      mov r2, sb
0046c3c8  ef 4c 00 eb                                      bl #0x47f78c
0046c3cc  28 00 9d e5                                      ldr r0, [sp, #0x28]
0046c3d0  05 00 50 e1                                      cmp r0, r5
0046c3d4  06 00 00 0a                                      beq #0x46c3f4
0046c3d8  00 00 50 e3                                      cmp r0, #0
0046c3dc  04 00 00 0a                                      beq #0x46c3f4
0046c3e0  14 10 9d e5                                      ldr r1, [sp, #0x14]
0046c3e4  01 10 60 e0                                      rsb r1, r0, r1
0046c3e8  80 00 51 e3                                      cmp r1, #0x80
0046c3ec  07 00 00 8a                                      bhi #0x46c410
0046c3f0  c2 72 0a eb                                      bl #0x708f00
0046c3f4  06 30 94 e7                                      ldr r3, [r4, r6]
0046c3f8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0046c3fc  00 30 93 e5                                      ldr r3, [r3]
0046c400  03 00 52 e1                                      cmp r2, r3
0046c404  18 00 00 1a                                      bne #0x46c46c
0046c408  30 d0 8d e2                                      add sp, sp, #0x30
0046c40c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0046c410  0a 90 fa eb                                      bl #0x310440
0046c414  f6 ff ff ea                                      b #0x46c3f4
0046c418  58 30 9f e5                                      ldr r3, [pc, #0x58]
0046c41c  03 30 94 e7                                      ldr r3, [r4, r3]
0046c420  00 30 93 e5                                      ldr r3, [r3]
0046c424  02 00 53 e3                                      cmp r3, #2
0046c428  00 00 80 05                                      streq r0, [r0]
0046c42c  e6 ff ff 0a                                      beq #0x46c3cc
0046c430  01 00 53 e3                                      cmp r3, #1
0046c434  e4 ff ff 1a                                      bne #0x46c3cc
0046c438  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0046c43c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0046c440  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0046c444  00 00 94 e7                                      ldr r0, [r4, r0]
0046c448  38 30 9f e5                                      ldr r3, [pc, #0x38]
0046c44c  c2 c0 a0 e3                                      mov ip, #0xc2
0046c450  01 10 8f e0                                      add r1, pc, r1
0046c454  02 20 8f e0                                      add r2, pc, r2
0046c458  03 30 8f e0                                      add r3, pc, r3
0046c45c  a8 00 80 e2                                      add r0, r0, #0xa8
0046c460  00 c0 8d e5                                      str ip, [sp]
0046c464  e6 86 fa eb                                      bl #0x30e004
0046c468  d7 ff ff ea                                      b #0x46c3cc
0046c46c  a7 87 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046c470  3c 87 52 00 ac 40 00 00 c0 39 00 00 c0 19 00 00  .byte 0x3c, 0x87, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0046c480  88 1f 45 00 04 fa 45 00 00 11 46 00              .byte 0x88, 0x1f, 0x45, 0x00, 0x04, 0xfa, 0x45, 0x00, 0x00, 0x11, 0x46, 0x00

; FUNCTION 0x0046c48c, declared_size=196, range_size=196, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame12UnpackQuestsEiP11IStreamBaseb
; demangled: QuestSavegame::UnpackQuests(int, IStreamBase*, bool)
; decoder-mode: arm
0046c48c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0046c490  01 60 a0 e1                                      mov r6, r1
0046c494  0c 10 a0 e3                                      mov r1, #0xc
0046c498  91 06 21 e0                                      mla r1, r1, r6, r0
0046c49c  02 70 a0 e1                                      mov r7, r2
0046c4a0  14 00 91 e9                                      ldmib r1, {r2, r4}
0046c4a4  10 d0 4d e2                                      sub sp, sp, #0x10
0046c4a8  00 50 a0 e1                                      mov r5, r0
0046c4ac  0c 10 8d e2                                      add r1, sp, #0xc
0046c4b0  07 00 a0 e1                                      mov r0, r7
0046c4b4  04 40 62 e0                                      rsb r4, r2, r4
0046c4b8  03 80 a0 e1                                      mov r8, r3
0046c4bc  a1 9d fa eb                                      bl #0x313b48
0046c4c0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0046c4c4  44 41 a0 e1                                      asr r4, r4, #2
0046c4c8  04 00 53 e1                                      cmp r3, r4
0046c4cc  01 00 00 0a                                      beq #0x46c4d8
0046c4d0  10 d0 8d e2                                      add sp, sp, #0x10
0046c4d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0046c4d8  00 00 53 e3                                      cmp r3, #0
0046c4dc  0a 00 00 0a                                      beq #0x46c50c
0046c4e0  00 40 a0 e3                                      mov r4, #0
0046c4e4  04 10 a0 e1                                      mov r1, r4
0046c4e8  07 30 a0 e1                                      mov r3, r7
0046c4ec  05 00 a0 e1                                      mov r0, r5
0046c4f0  06 20 a0 e1                                      mov r2, r6
0046c4f4  00 80 8d e5                                      str r8, [sp]
0046c4f8  91 ff ff eb                                      bl #0x46c344
0046c4fc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0046c500  01 40 84 e2                                      add r4, r4, #1
0046c504  04 00 53 e1                                      cmp r3, r4
0046c508  f5 ff ff 8a                                      bhi #0x46c4e4
0046c50c  06 11 85 e0                                      add r1, r5, r6, lsl #2
0046c510  2c 10 81 e2                                      add r1, r1, #0x2c
0046c514  07 00 a0 e1                                      mov r0, r7
0046c518  8e 7c fc eb                                      bl #0x38b758
0046c51c  10 40 86 e2                                      add r4, r6, #0x10
0046c520  0e 10 86 e2                                      add r1, r6, #0xe
0046c524  01 11 85 e0                                      add r1, r5, r1, lsl #2
0046c528  07 00 a0 e1                                      mov r0, r7
0046c52c  04 41 85 e0                                      add r4, r5, r4, lsl #2
0046c530  88 7c fc eb                                      bl #0x38b758
0046c534  07 00 a0 e1                                      mov r0, r7
0046c538  04 10 84 e2                                      add r1, r4, #4
0046c53c  85 7c fc eb                                      bl #0x38b758
0046c540  04 30 94 e5                                      ldr r3, [r4, #4]
0046c544  14 60 86 e2                                      add r6, r6, #0x14
0046c548  06 31 85 e7                                      str r3, [r5, r6, lsl #2]
0046c54c  df ff ff ea                                      b #0x46c4d0

; FUNCTION 0x0046c550, declared_size=52, range_size=52, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame10LoadQuestsEP11IStreamBase
; demangled: QuestSavegame::LoadQuests(IStreamBase*)
; decoder-mode: arm
0046c550  70 40 2d e9                                      push {r4, r5, r6, lr}
0046c554  00 60 a0 e1                                      mov r6, r0
0046c558  01 50 a0 e1                                      mov r5, r1
0046c55c  00 40 a0 e3                                      mov r4, #0
0046c560  04 10 a0 e1                                      mov r1, r4
0046c564  06 00 a0 e1                                      mov r0, r6
0046c568  01 40 84 e2                                      add r4, r4, #1
0046c56c  05 20 a0 e1                                      mov r2, r5
0046c570  00 30 a0 e3                                      mov r3, #0
0046c574  c4 ff ff eb                                      bl #0x46c48c
0046c578  03 00 54 e3                                      cmp r4, #3
0046c57c  f7 ff ff 1a                                      bne #0x46c560
0046c580  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0046c584, declared_size=212, range_size=212, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame9PackQuestEiiP11IStreamBase
; demangled: QuestSavegame::PackQuest(int, int, IStreamBase*)
; decoder-mode: arm
0046c584  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0046c588  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
0046c58c  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
0046c590  2c d0 4d e2                                      sub sp, sp, #0x2c
0046c594  04 40 8f e0                                      add r4, pc, r4
0046c598  06 c0 94 e7                                      ldr ip, [r4, r6]
0046c59c  0c 50 8d e2                                      add r5, sp, #0xc
0046c5a0  00 70 a0 e1                                      mov r7, r0
0046c5a4  00 c0 9c e5                                      ldr ip, [ip]
0046c5a8  05 00 a0 e1                                      mov r0, r5
0046c5ac  03 80 a0 e1                                      mov r8, r3
0046c5b0  02 a0 a0 e1                                      mov sl, r2
0046c5b4  24 c0 8d e5                                      str ip, [sp, #0x24]
0046c5b8  04 10 8d e5                                      str r1, [sp, #4]
0046c5bc  1c 50 8d e5                                      str r5, [sp, #0x1c]
0046c5c0  20 50 8d e5                                      str r5, [sp, #0x20]
0046c5c4  27 fe ff eb                                      bl #0x46be68
0046c5c8  0c 30 a0 e3                                      mov r3, #0xc
0046c5cc  93 7a 27 e0                                      mla r7, r3, sl, r7
0046c5d0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0046c5d4  00 20 a0 e3                                      mov r2, #0
0046c5d8  28 10 8d e2                                      add r1, sp, #0x28
0046c5dc  00 20 c3 e5                                      strb r2, [r3]
0046c5e0  24 20 31 e5                                      ldr r2, [r1, #-0x24]!
0046c5e4  04 30 97 e5                                      ldr r3, [r7, #4]
0046c5e8  08 00 a0 e1                                      mov r0, r8
0046c5ec  02 71 93 e7                                      ldr r7, [r3, r2, lsl #2]
0046c5f0  84 7c fc eb                                      bl #0x38b808
0046c5f4  07 00 a0 e1                                      mov r0, r7
0046c5f8  08 10 a0 e1                                      mov r1, r8
0046c5fc  4c 4c 00 eb                                      bl #0x47f734
0046c600  20 00 9d e5                                      ldr r0, [sp, #0x20]
0046c604  05 00 50 e1                                      cmp r0, r5
0046c608  06 00 00 0a                                      beq #0x46c628
0046c60c  00 00 50 e3                                      cmp r0, #0
0046c610  04 00 00 0a                                      beq #0x46c628
0046c614  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0046c618  01 10 60 e0                                      rsb r1, r0, r1
0046c61c  80 00 51 e3                                      cmp r1, #0x80
0046c620  07 00 00 8a                                      bhi #0x46c644
0046c624  35 72 0a eb                                      bl #0x708f00
0046c628  06 30 94 e7                                      ldr r3, [r4, r6]
0046c62c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0046c630  00 30 93 e5                                      ldr r3, [r3]
0046c634  03 00 52 e1                                      cmp r2, r3
0046c638  03 00 00 1a                                      bne #0x46c64c
0046c63c  2c d0 8d e2                                      add sp, sp, #0x2c
0046c640  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0046c644  7d 8f fa eb                                      bl #0x310440
0046c648  f6 ff ff ea                                      b #0x46c628
0046c64c  2f 87 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046c650  fc 84 52 00 ac 40 00 00                          .byte 0xfc, 0x84, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0046c658, declared_size=164, range_size=164, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame10PackQuestsEiP11IStreamBase
; demangled: QuestSavegame::PackQuests(int, IStreamBase*)
; decoder-mode: arm
0046c658  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0046c65c  00 60 a0 e1                                      mov r6, r0
0046c660  0c 00 a0 e3                                      mov r0, #0xc
0046c664  90 61 20 e0                                      mla r0, r0, r1, r6
0046c668  0c d0 4d e2                                      sub sp, sp, #0xc
0046c66c  08 10 90 e9                                      ldmib r0, {r3, ip}
0046c670  01 70 a0 e1                                      mov r7, r1
0046c674  08 10 8d e2                                      add r1, sp, #8
0046c678  0c 30 63 e0                                      rsb r3, r3, ip
0046c67c  43 31 a0 e1                                      asr r3, r3, #2
0046c680  04 30 21 e5                                      str r3, [r1, #-4]!
0046c684  02 00 a0 e1                                      mov r0, r2
0046c688  02 50 a0 e1                                      mov r5, r2
0046c68c  37 d4 ff eb                                      bl #0x461770
0046c690  04 30 9d e5                                      ldr r3, [sp, #4]
0046c694  00 00 53 e3                                      cmp r3, #0
0046c698  09 00 00 0a                                      beq #0x46c6c4
0046c69c  00 40 a0 e3                                      mov r4, #0
0046c6a0  04 10 a0 e1                                      mov r1, r4
0046c6a4  05 30 a0 e1                                      mov r3, r5
0046c6a8  06 00 a0 e1                                      mov r0, r6
0046c6ac  07 20 a0 e1                                      mov r2, r7
0046c6b0  b3 ff ff eb                                      bl #0x46c584
0046c6b4  04 30 9d e5                                      ldr r3, [sp, #4]
0046c6b8  01 40 84 e2                                      add r4, r4, #1
0046c6bc  04 00 53 e1                                      cmp r3, r4
0046c6c0  f6 ff ff 8a                                      bhi #0x46c6a0
0046c6c4  07 11 86 e0                                      add r1, r6, r7, lsl #2
0046c6c8  05 00 a0 e1                                      mov r0, r5
0046c6cc  2c 10 81 e2                                      add r1, r1, #0x2c
0046c6d0  4c 7c fc eb                                      bl #0x38b808
0046c6d4  0e 10 87 e2                                      add r1, r7, #0xe
0046c6d8  01 11 86 e0                                      add r1, r6, r1, lsl #2
0046c6dc  05 00 a0 e1                                      mov r0, r5
0046c6e0  07 61 86 e0                                      add r6, r6, r7, lsl #2
0046c6e4  47 7c fc eb                                      bl #0x38b808
0046c6e8  05 00 a0 e1                                      mov r0, r5
0046c6ec  44 10 86 e2                                      add r1, r6, #0x44
0046c6f0  44 7c fc eb                                      bl #0x38b808
0046c6f4  0c d0 8d e2                                      add sp, sp, #0xc
0046c6f8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0046c6fc, declared_size=60, range_size=60, mode=arm
; class-group: QuestSavegame
; alias: _ZN13QuestSavegame10SaveQuestsEP11IStreamBase
; demangled: QuestSavegame::SaveQuests(IStreamBase*)
; decoder-mode: arm
0046c6fc  70 40 2d e9                                      push {r4, r5, r6, lr}
0046c700  01 40 a0 e1                                      mov r4, r1
0046c704  00 50 a0 e1                                      mov r5, r0
0046c708  04 20 a0 e1                                      mov r2, r4
0046c70c  00 10 a0 e3                                      mov r1, #0
0046c710  d0 ff ff eb                                      bl #0x46c658
0046c714  05 00 a0 e1                                      mov r0, r5
0046c718  04 20 a0 e1                                      mov r2, r4
0046c71c  01 10 a0 e3                                      mov r1, #1
0046c720  cc ff ff eb                                      bl #0x46c658
0046c724  05 00 a0 e1                                      mov r0, r5
0046c728  04 20 a0 e1                                      mov r2, r4
0046c72c  02 10 a0 e3                                      mov r1, #2
0046c730  70 40 bd e8                                      pop {r4, r5, r6, lr}
0046c734  c7 ff ff ea                                      b #0x46c658

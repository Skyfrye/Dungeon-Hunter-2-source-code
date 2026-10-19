; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455638, declared_size=8, range_size=8, mode=arm
; class-group: Script_EnterCutSceneMode
; alias: _ZNK24Script_EnterCutSceneMode10IsBlockingEv
; demangled: Script_EnterCutSceneMode::IsBlocking() const
; decoder-mode: arm
00455638  00 00 a0 e3                                      mov r0, #0
0045563c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045a384, declared_size=748, range_size=748, mode=arm
; class-group: Script_EnterCutSceneMode
; alias: _ZN24Script_EnterCutSceneMode7ExecuteEbi
; demangled: Script_EnterCutSceneMode::Execute(bool, int)
; decoder-mode: arm
0045a384  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
0045a388  bc 42 9f e5                                      ldr r4, [pc, #0x2bc]
0045a38c  bc 52 9f e5                                      ldr r5, [pc, #0x2bc]
0045a390  34 d0 4d e2                                      sub sp, sp, #0x34
0045a394  04 40 8f e0                                      add r4, pc, r4
0045a398  05 60 94 e7                                      ldr r6, [r4, r5]
0045a39c  06 00 a0 e1                                      mov r0, r6
0045a3a0  7b 14 fb eb                                      bl #0x31f594
0045a3a4  00 00 50 e3                                      cmp r0, #0
0045a3a8  1c 00 00 0a                                      beq #0x45a420
0045a3ac  06 00 a0 e1                                      mov r0, r6
0045a3b0  77 14 fb eb                                      bl #0x31f594
0045a3b4  98 31 d0 e5                                      ldrb r3, [r0, #0x198]
0045a3b8  00 00 53 e3                                      cmp r3, #0
0045a3bc  5c 00 00 1a                                      bne #0x45a534
0045a3c0  b1 49 ff eb                                      bl #0x42ca8c
0045a3c4  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0045a3c8  01 10 a0 e3                                      mov r1, #1
0045a3cc  03 00 a0 e1                                      mov r0, r3
0045a3d0  00 30 93 e5                                      ldr r3, [r3]
0045a3d4  0f e0 a0 e1                                      mov lr, pc
0045a3d8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0045a3dc  05 60 94 e7                                      ldr r6, [r4, r5]
0045a3e0  00 10 a0 e3                                      mov r1, #0
0045a3e4  01 20 a0 e3                                      mov r2, #1
0045a3e8  40 00 96 e5                                      ldr r0, [r6, #0x40]
0045a3ec  21 50 fc eb                                      bl #0x36e478
0045a3f0  60 36 90 e5                                      ldr r3, [r0, #0x660]
0045a3f4  00 00 53 e3                                      cmp r3, #0
0045a3f8  05 00 00 0a                                      beq #0x45a414
0045a3fc  40 00 96 e5                                      ldr r0, [r6, #0x40]
0045a400  00 10 a0 e3                                      mov r1, #0
0045a404  01 20 a0 e3                                      mov r2, #1
0045a408  1a 50 fc eb                                      bl #0x36e478
0045a40c  60 06 90 e5                                      ldr r0, [r0, #0x660]
0045a410  67 3e fd eb                                      bl #0x3a9db4
0045a414  05 00 94 e7                                      ldr r0, [r4, r5]
0045a418  00 10 a0 e3                                      mov r1, #0
0045a41c  91 14 fb eb                                      bl #0x31f668
0045a420  db 8c 0e eb                                      bl #0x7fd794
0045a424  05 30 d0 e5                                      ldrb r3, [r0, #5]
0045a428  00 00 53 e3                                      cmp r3, #0
0045a42c  49 00 00 1a                                      bne #0x45a558
0045a430  95 49 ff eb                                      bl #0x42ca8c
0045a434  d4 49 ff eb                                      bl #0x42cb8c
0045a438  00 70 a0 e1                                      mov r7, r0
0045a43c  92 49 ff eb                                      bl #0x42ca8c
0045a440  d1 49 ff eb                                      bl #0x42cb8c
0045a444  18 36 0d eb                                      bl #0x7a7cac
0045a448  41 67 0c eb                                      bl #0x774154
0045a44c  00 22 9f e5                                      ldr r2, [pc, #0x200]
0045a450  00 60 a0 e3                                      mov r6, #0
0045a454  00 10 a0 e1                                      mov r1, r0
0045a458  02 20 8f e0                                      add r2, pc, r2
0045a45c  06 30 a0 e1                                      mov r3, r6
0045a460  07 00 a0 e1                                      mov r0, r7
0045a464  00 60 8d e5                                      str r6, [sp]
0045a468  67 46 0d eb                                      bl #0x7abe0c
0045a46c  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
0045a470  01 10 a0 e3                                      mov r1, #1
0045a474  03 20 94 e7                                      ldr r2, [r4, r3]
0045a478  dc 31 9f e5                                      ldr r3, [pc, #0x1dc]
0045a47c  30 10 c2 e5                                      strb r1, [r2, #0x30]
0045a480  03 30 94 e7                                      ldr r3, [r4, r3]
0045a484  00 60 c3 e5                                      strb r6, [r3]
0045a488  c1 8c 0e eb                                      bl #0x7fd794
0045a48c  05 30 d0 e5                                      ldrb r3, [r0, #5]
0045a490  06 00 53 e1                                      cmp r3, r6
0045a494  24 00 00 0a                                      beq #0x45a52c
0045a498  05 30 94 e7                                      ldr r3, [r4, r5]
0045a49c  40 00 93 e5                                      ldr r0, [r3, #0x40]
0045a4a0  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
0045a4a4  06 00 53 e1                                      cmp r3, r6
0045a4a8  0d 00 00 ca                                      bgt #0x45a4e4
0045a4ac  1e 00 00 ea                                      b #0x45a52c
0045a4b0  60 36 97 e5                                      ldr r3, [r7, #0x660]
0045a4b4  00 00 53 e3                                      cmp r3, #0
0045a4b8  03 00 00 0a                                      beq #0x45a4cc
0045a4bc  03 00 a0 e1                                      mov r0, r3
0045a4c0  00 30 93 e5                                      ldr r3, [r3]
0045a4c4  0f e0 a0 e1                                      mov lr, pc
0045a4c8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0045a4cc  05 30 94 e7                                      ldr r3, [r4, r5]
0045a4d0  01 60 86 e2                                      add r6, r6, #1
0045a4d4  40 00 93 e5                                      ldr r0, [r3, #0x40]
0045a4d8  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
0045a4dc  03 00 56 e1                                      cmp r6, r3
0045a4e0  11 00 00 aa                                      bge #0x45a52c
0045a4e4  06 10 a0 e1                                      mov r1, r6
0045a4e8  00 20 a0 e3                                      mov r2, #0
0045a4ec  94 50 fc eb                                      bl #0x36e744
0045a4f0  00 30 90 e5                                      ldr r3, [r0]
0045a4f4  00 70 a0 e1                                      mov r7, r0
0045a4f8  0f e0 a0 e1                                      mov lr, pc
0045a4fc  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0045a500  00 10 50 e2                                      subs r1, r0, #0
0045a504  e9 ff ff 0a                                      beq #0x45a4b0
0045a508  07 00 a0 e1                                      mov r0, r7
0045a50c  01 10 a0 e3                                      mov r1, #1
0045a510  fa fc ff eb                                      bl #0x459900
0045a514  05 30 94 e7                                      ldr r3, [r4, r5]
0045a518  01 60 86 e2                                      add r6, r6, #1
0045a51c  40 00 93 e5                                      ldr r0, [r3, #0x40]
0045a520  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
0045a524  03 00 56 e1                                      cmp r6, r3
0045a528  ed ff ff ba                                      blt #0x45a4e4
0045a52c  34 d0 8d e2                                      add sp, sp, #0x34
0045a530  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
0045a534  24 31 9f e5                                      ldr r3, [pc, #0x124]
0045a538  03 30 94 e7                                      ldr r3, [r4, r3]
0045a53c  00 30 d3 e5                                      ldrb r3, [r3]
0045a540  00 00 53 e3                                      cmp r3, #0
0045a544  9d ff ff 1a                                      bne #0x45a3c0
0045a548  91 8c 0e eb                                      bl #0x7fd794
0045a54c  05 30 d0 e5                                      ldrb r3, [r0, #5]
0045a550  00 00 53 e3                                      cmp r3, #0
0045a554  b5 ff ff 0a                                      beq #0x45a430
0045a558  05 60 94 e7                                      ldr r6, [r4, r5]
0045a55c  00 10 a0 e3                                      mov r1, #0
0045a560  01 20 a0 e3                                      mov r2, #1
0045a564  40 00 96 e5                                      ldr r0, [r6, #0x40]
0045a568  c2 4f fc eb                                      bl #0x36e478
0045a56c  60 36 90 e5                                      ldr r3, [r0, #0x660]
0045a570  00 00 53 e3                                      cmp r3, #0
0045a574  ad ff ff 0a                                      beq #0x45a430
0045a578  00 10 a0 e3                                      mov r1, #0
0045a57c  01 20 a0 e3                                      mov r2, #1
0045a580  40 00 96 e5                                      ldr r0, [r6, #0x40]
0045a584  bb 4f fc eb                                      bl #0x36e478
0045a588  60 36 90 e5                                      ldr r3, [r0, #0x660]
0045a58c  03 00 a0 e1                                      mov r0, r3
0045a590  00 30 93 e5                                      ldr r3, [r3]
0045a594  0f e0 a0 e1                                      mov lr, pc
0045a598  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0045a59c  00 00 50 e3                                      cmp r0, #0
0045a5a0  a2 ff ff 0a                                      beq #0x45a430
0045a5a4  00 10 a0 e3                                      mov r1, #0
0045a5a8  01 20 a0 e1                                      mov r2, r1
0045a5ac  40 00 96 e5                                      ldr r0, [r6, #0x40]
0045a5b0  b0 4f fc eb                                      bl #0x36e478
0045a5b4  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0045a5b8  28 10 9d e5                                      ldr r1, [sp, #0x28]
0045a5bc  00 30 e0 e3                                      mvn r3, #0
0045a5c0  02 20 94 e7                                      ldr r2, [r4, r2]
0045a5c4  03 00 51 e1                                      cmp r1, r3
0045a5c8  00 60 a0 e1                                      mov r6, r0
0045a5cc  00 10 a0 e3                                      mov r1, #0
0045a5d0  08 20 82 e2                                      add r2, r2, #8
0045a5d4  10 00 a0 e3                                      mov r0, #0x10
0045a5d8  00 80 a0 e3                                      mov r8, #0
0045a5dc  00 90 a0 e3                                      mov sb, #0
0045a5e0  0c 00 8d e5                                      str r0, [sp, #0xc]
0045a5e4  f0 81 cd e1                                      strd r8, sb, [sp, #0x10]
0045a5e8  24 10 cd e5                                      strb r1, [sp, #0x24]
0045a5ec  08 20 8d e5                                      str r2, [sp, #8]
0045a5f0  18 30 8d e5                                      str r3, [sp, #0x18]
0045a5f4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045a5f8  20 10 8d e5                                      str r1, [sp, #0x20]
0045a5fc  08 70 8d 02                                      addeq r7, sp, #8
0045a600  03 00 00 0a                                      beq #0x45a614
0045a604  08 70 8d e2                                      add r7, sp, #8
0045a608  07 00 a0 e1                                      mov r0, r7
0045a60c  28 30 8d e5                                      str r3, [sp, #0x28]
0045a610  5b ea 0e eb                                      bl #0x814f84
0045a614  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0045a618  e2 0f 86 e2                                      add r0, r6, #0x388
0045a61c  20 10 87 e2                                      add r1, r7, #0x20
0045a620  03 30 94 e7                                      ldr r3, [r4, r3]
0045a624  08 30 83 e2                                      add r3, r3, #8
0045a628  08 30 8d e5                                      str r3, [sp, #8]
0045a62c  88 33 96 e5                                      ldr r3, [r6, #0x388]
0045a630  0f e0 a0 e1                                      mov lr, pc
0045a634  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0045a638  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0045a63c  03 30 94 e7                                      ldr r3, [r4, r3]
0045a640  08 30 83 e2                                      add r3, r3, #8
0045a644  08 30 8d e5                                      str r3, [sp, #8]
0045a648  78 ff ff ea                                      b #0x45a430
; mapping-symbol data/literal pool
0045a64c  fc a6 53 00 f4 37 00 00 f8 2b 47 00 20 1a 00 00  .byte 0xfc, 0xa6, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xf8, 0x2b, 0x47, 0x00, 0x20, 0x1a, 0x00, 0x00
0045a65c  ec 3d 00 00 a0 2f 00 00 84 29 00 00 3c 35 00 00  .byte 0xec, 0x3d, 0x00, 0x00, 0xa0, 0x2f, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00
0045a66c  a8 10 00 00                                      .byte 0xa8, 0x10, 0x00, 0x00

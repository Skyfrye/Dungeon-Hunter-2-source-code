; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0058d3d4, declared_size=828, range_size=828, mode=arm
; class-group: glitch::scene::SDefaultEndOfBatchCallback
; alias: _ZN6glitch5scene26SDefaultEndOfBatchCallback8finalizeEv
; demangled: glitch::scene::SDefaultEndOfBatchCallback::finalize()
; decoder-mode: arm
0058d3d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058d3d8  20 13 9f e5                                      ldr r1, [pc, #0x320]
0058d3dc  20 23 9f e5                                      ldr r2, [pc, #0x320]
0058d3e0  4c d0 4d e2                                      sub sp, sp, #0x4c
0058d3e4  01 10 8f e0                                      add r1, pc, r1
0058d3e8  1c 20 8d e5                                      str r2, [sp, #0x1c]
0058d3ec  02 20 91 e7                                      ldr r2, [r1, r2]
0058d3f0  14 10 8d e5                                      str r1, [sp, #0x14]
0058d3f4  0c 13 9f e5                                      ldr r1, [pc, #0x30c]
0058d3f8  00 20 92 e5                                      ldr r2, [r2]
0058d3fc  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0058d400  01 10 8f e0                                      add r1, pc, r1
0058d404  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
0058d408  0c 10 8d e5                                      str r1, [sp, #0xc]
0058d40c  f8 12 9f e5                                      ldr r1, [pc, #0x2f8]
0058d410  44 20 8d e5                                      str r2, [sp, #0x44]
0058d414  dc 50 93 e5                                      ldr r5, [r3, #0xdc]
0058d418  24 20 8d e2                                      add r2, sp, #0x24
0058d41c  14 30 80 e2                                      add r3, r0, #0x14
0058d420  00 a0 a0 e1                                      mov sl, r0
0058d424  08 30 8d e5                                      str r3, [sp, #8]
0058d428  2c 90 8d e2                                      add sb, sp, #0x2c
0058d42c  18 10 8d e5                                      str r1, [sp, #0x18]
0058d430  28 80 8d e2                                      add r8, sp, #0x28
0058d434  10 20 8d e5                                      str r2, [sp, #0x10]
0058d438  08 30 9d e5                                      ldr r3, [sp, #8]
0058d43c  04 00 53 e1                                      cmp r3, r4
0058d440  90 00 00 0a                                      beq #0x58d688
0058d444  10 30 94 e5                                      ldr r3, [r4, #0x10]
0058d448  14 00 94 e5                                      ldr r0, [r4, #0x14]
0058d44c  04 30 8d e5                                      str r3, [sp, #4]
0058d450  04 60 90 e5                                      ldr r6, [r0, #4]
0058d454  00 00 56 e3                                      cmp r6, #0
0058d458  00 30 96 15                                      ldrne r3, [r6]
0058d45c  01 30 83 12                                      addne r3, r3, #1
0058d460  00 30 86 15                                      strne r3, [r6]
0058d464  14 00 94 15                                      ldrne r0, [r4, #0x14]
0058d468  31 e2 00 eb                                      bl #0x5c5d34
0058d46c  18 30 96 e5                                      ldr r3, [r6, #0x18]
0058d470  0c 20 a0 e3                                      mov r2, #0xc
0058d474  14 10 a0 e3                                      mov r1, #0x14
0058d478  92 30 23 e0                                      mla r3, r2, r0, r3
0058d47c  09 00 a0 e1                                      mov r0, sb
0058d480  08 70 93 e5                                      ldr r7, [r3, #8]
0058d484  93 f9 ff eb                                      bl #0x58bad8
0058d488  01 20 a0 e3                                      mov r2, #1
0058d48c  40 10 9d e5                                      ldr r1, [sp, #0x40]
0058d490  05 00 a0 e1                                      mov r0, r5
0058d494  94 41 01 eb                                      bl #0x5ddaec
0058d498  20 70 87 e2                                      add r7, r7, #0x20
0058d49c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0058d4a0  01 20 a0 e3                                      mov r2, #1
0058d4a4  05 00 a0 e1                                      mov r0, r5
0058d4a8  d7 40 01 eb                                      bl #0x5dd80c
0058d4ac  38 30 84 e2                                      add r3, r4, #0x38
0058d4b0  07 10 a0 e1                                      mov r1, r7
0058d4b4  18 20 84 e2                                      add r2, r4, #0x18
0058d4b8  05 00 a0 e1                                      mov r0, r5
0058d4bc  9a 3e 01 eb                                      bl #0x5dcf2c
0058d4c0  14 00 94 e5                                      ldr r0, [r4, #0x14]
0058d4c4  1a e2 00 eb                                      bl #0x5c5d34
0058d4c8  00 20 a0 e3                                      mov r2, #0
0058d4cc  00 10 a0 e1                                      mov r1, r0
0058d4d0  06 00 a0 e1                                      mov r0, r6
0058d4d4  8e 1a 01 eb                                      bl #0x5d3f14
0058d4d8  01 10 a0 e3                                      mov r1, #1
0058d4dc  00 20 a0 e1                                      mov r2, r0
0058d4e0  05 00 a0 e1                                      mov r0, r5
0058d4e4  5e 40 01 eb                                      bl #0x5dd664
0058d4e8  05 00 a0 e1                                      mov r0, r5
0058d4ec  30 42 01 eb                                      bl #0x5dddb4
0058d4f0  40 10 9d e5                                      ldr r1, [sp, #0x40]
0058d4f4  05 00 a0 e1                                      mov r0, r5
0058d4f8  f1 30 01 eb                                      bl #0x5d98c4
0058d4fc  18 30 95 e5                                      ldr r3, [r5, #0x18]
0058d500  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0058d504  00 b0 a0 e1                                      mov fp, r0
0058d508  02 20 63 e0                                      rsb r2, r3, r2
0058d50c  c2 01 50 e1                                      cmp r0, r2, asr #3
0058d510  14 20 9d 25                                      ldrhs r2, [sp, #0x14]
0058d514  18 10 9d 25                                      ldrhs r1, [sp, #0x18]
0058d518  80 31 83 30                                      addlo r3, r3, r0, lsl #3
0058d51c  01 30 92 27                                      ldrhs r3, [r2, r1]
0058d520  00 70 93 e5                                      ldr r7, [r3]
0058d524  00 00 57 e3                                      cmp r7, #0
0058d528  00 30 97 15                                      ldrne r3, [r7]
0058d52c  07 00 a0 e1                                      mov r0, r7
0058d530  01 30 83 12                                      addne r3, r3, #1
0058d534  00 30 87 15                                      strne r3, [r7]
0058d538  92 21 01 eb                                      bl #0x5d5b88
0058d53c  0b 20 a0 e1                                      mov r2, fp
0058d540  05 10 a0 e1                                      mov r1, r5
0058d544  00 30 a0 e3                                      mov r3, #0
0058d548  08 00 a0 e1                                      mov r0, r8
0058d54c  e4 3e 01 eb                                      bl #0x5dd0e4
0058d550  28 b0 9d e5                                      ldr fp, [sp, #0x28]
0058d554  14 00 94 e5                                      ldr r0, [r4, #0x14]
0058d558  f5 e1 00 eb                                      bl #0x5c5d34
0058d55c  0b 00 a0 e1                                      mov r0, fp
0058d560  f3 e1 00 eb                                      bl #0x5c5d34
0058d564  14 30 94 e5                                      ldr r3, [r4, #0x14]
0058d568  08 00 a0 e1                                      mov r0, r8
0058d56c  00 00 53 e3                                      cmp r3, #0
0058d570  24 30 8d e5                                      str r3, [sp, #0x24]
0058d574  00 20 93 15                                      ldrne r2, [r3]
0058d578  01 20 82 12                                      addne r2, r2, #1
0058d57c  00 20 83 15                                      strne r2, [r3]
0058d580  10 10 9d e5                                      ldr r1, [sp, #0x10]
0058d584  04 52 04 eb                                      bl #0x6a1d9c
0058d588  24 b0 9d e5                                      ldr fp, [sp, #0x24]
0058d58c  00 00 5b e3                                      cmp fp, #0
0058d590  08 00 00 0a                                      beq #0x58d5b8
0058d594  00 30 9b e5                                      ldr r3, [fp]
0058d598  01 30 43 e2                                      sub r3, r3, #1
0058d59c  00 00 53 e3                                      cmp r3, #0
0058d5a0  00 30 8b e5                                      str r3, [fp]
0058d5a4  03 00 00 1a                                      bne #0x58d5b8
0058d5a8  0b 00 a0 e1                                      mov r0, fp
0058d5ac  71 fa 00 eb                                      bl #0x5cbf78
0058d5b0  0b 00 a0 e1                                      mov r0, fp
0058d5b4  3d 03 f6 eb                                      bl #0x30e2b0
0058d5b8  04 30 9a e5                                      ldr r3, [sl, #4]
0058d5bc  04 10 9d e5                                      ldr r1, [sp, #4]
0058d5c0  3c 20 84 e2                                      add r2, r4, #0x3c
0058d5c4  30 01 93 e5                                      ldr r0, [r3, #0x130]
0058d5c8  08 30 a0 e1                                      mov r3, r8
0058d5cc  18 ba ff eb                                      bl #0x57be34
0058d5d0  28 b0 9d e5                                      ldr fp, [sp, #0x28]
0058d5d4  00 00 5b e3                                      cmp fp, #0
0058d5d8  08 00 00 0a                                      beq #0x58d600
0058d5dc  00 30 9b e5                                      ldr r3, [fp]
0058d5e0  01 30 43 e2                                      sub r3, r3, #1
0058d5e4  00 00 53 e3                                      cmp r3, #0
0058d5e8  00 30 8b e5                                      str r3, [fp]
0058d5ec  03 00 00 1a                                      bne #0x58d600
0058d5f0  0b 00 a0 e1                                      mov r0, fp
0058d5f4  5f fa 00 eb                                      bl #0x5cbf78
0058d5f8  0b 00 a0 e1                                      mov r0, fp
0058d5fc  2b 03 f6 eb                                      bl #0x30e2b0
0058d600  00 00 57 e3                                      cmp r7, #0
0058d604  08 00 00 0a                                      beq #0x58d62c
0058d608  00 30 97 e5                                      ldr r3, [r7]
0058d60c  01 30 43 e2                                      sub r3, r3, #1
0058d610  00 00 53 e3                                      cmp r3, #0
0058d614  00 30 87 e5                                      str r3, [r7]
0058d618  03 00 00 1a                                      bne #0x58d62c
0058d61c  07 00 a0 e1                                      mov r0, r7
0058d620  1e 1d 01 eb                                      bl #0x5d4aa0
0058d624  07 00 a0 e1                                      mov r0, r7
0058d628  20 03 f6 eb                                      bl #0x30e2b0
0058d62c  40 00 9d e5                                      ldr r0, [sp, #0x40]
0058d630  09 00 50 e1                                      cmp r0, sb
0058d634  02 00 00 0a                                      beq #0x58d644
0058d638  00 00 50 e3                                      cmp r0, #0
0058d63c  00 00 00 0a                                      beq #0x58d644
0058d640  82 0b f6 eb                                      bl #0x310450
0058d644  00 30 96 e5                                      ldr r3, [r6]
0058d648  01 30 43 e2                                      sub r3, r3, #1
0058d64c  00 00 53 e3                                      cmp r3, #0
0058d650  00 30 86 e5                                      str r3, [r6]
0058d654  14 00 00 0a                                      beq #0x58d6ac
0058d658  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0058d65c  00 00 53 e3                                      cmp r3, #0
0058d660  01 00 00 1a                                      bne #0x58d66c
0058d664  17 00 00 ea                                      b #0x58d6c8
0058d668  02 30 a0 e1                                      mov r3, r2
0058d66c  08 20 93 e5                                      ldr r2, [r3, #8]
0058d670  00 00 52 e3                                      cmp r2, #0
0058d674  fb ff ff 1a                                      bne #0x58d668
0058d678  03 40 a0 e1                                      mov r4, r3
0058d67c  08 30 9d e5                                      ldr r3, [sp, #8]
0058d680  04 00 53 e1                                      cmp r3, r4
0058d684  6e ff ff 1a                                      bne #0x58d444
0058d688  14 20 9d e5                                      ldr r2, [sp, #0x14]
0058d68c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0058d690  01 30 92 e7                                      ldr r3, [r2, r1]
0058d694  44 20 9d e5                                      ldr r2, [sp, #0x44]
0058d698  00 30 93 e5                                      ldr r3, [r3]
0058d69c  03 00 52 e1                                      cmp r2, r3
0058d6a0  15 00 00 1a                                      bne #0x58d6fc
0058d6a4  4c d0 8d e2                                      add sp, sp, #0x4c
0058d6a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058d6ac  06 00 a0 e1                                      mov r0, r6
0058d6b0  fa 1c 01 eb                                      bl #0x5d4aa0
0058d6b4  06 00 a0 e1                                      mov r0, r6
0058d6b8  fc 02 f6 eb                                      bl #0x30e2b0
0058d6bc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0058d6c0  00 00 53 e3                                      cmp r3, #0
0058d6c4  e8 ff ff 1a                                      bne #0x58d66c
0058d6c8  04 20 94 e5                                      ldr r2, [r4, #4]
0058d6cc  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0058d6d0  01 00 54 e1                                      cmp r4, r1
0058d6d4  05 00 00 1a                                      bne #0x58d6f0
0058d6d8  02 40 a0 e1                                      mov r4, r2
0058d6dc  04 20 92 e5                                      ldr r2, [r2, #4]
0058d6e0  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0058d6e4  04 00 53 e1                                      cmp r3, r4
0058d6e8  fa ff ff 0a                                      beq #0x58d6d8
0058d6ec  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0058d6f0  03 00 52 e1                                      cmp r2, r3
0058d6f4  02 40 a0 11                                      movne r4, r2
0058d6f8  4e ff ff ea                                      b #0x58d438
0058d6fc  03 03 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0058d700  ac 76 40 00 ac 40 00 00 48 21 35 00 dc 30 00 00  .byte 0xac, 0x76, 0x40, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x21, 0x35, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x0058fa04, declared_size=96, range_size=96, mode=arm
; class-group: glitch::scene::SDefaultEndOfBatchCallback
; alias: _ZN6glitch5scene26SDefaultEndOfBatchCallbackD1Ev
; demangled: glitch::scene::SDefaultEndOfBatchCallback::~SDefaultEndOfBatchCallback()
; decoder-mode: arm
0058fa04  70 40 2d e9                                      push {r4, r5, r6, lr}
0058fa08  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0058fa0c  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0058fa10  24 10 90 e5                                      ldr r1, [r0, #0x24]
0058fa14  03 30 8f e0                                      add r3, pc, r3
0058fa18  02 20 93 e7                                      ldr r2, [r3, r2]
0058fa1c  00 00 51 e3                                      cmp r1, #0
0058fa20  00 40 a0 e1                                      mov r4, r0
0058fa24  08 20 82 e2                                      add r2, r2, #8
0058fa28  00 20 80 e5                                      str r2, [r0]
0058fa2c  08 00 00 0a                                      beq #0x58fa54
0058fa30  14 50 80 e2                                      add r5, r0, #0x14
0058fa34  05 00 a0 e1                                      mov r0, r5
0058fa38  18 10 94 e5                                      ldr r1, [r4, #0x18]
0058fa3c  d2 ff ff eb                                      bl #0x58f98c
0058fa40  00 30 a0 e3                                      mov r3, #0
0058fa44  20 50 84 e5                                      str r5, [r4, #0x20]
0058fa48  24 30 84 e5                                      str r3, [r4, #0x24]
0058fa4c  1c 50 84 e5                                      str r5, [r4, #0x1c]
0058fa50  18 30 84 e5                                      str r3, [r4, #0x18]
0058fa54  04 00 a0 e1                                      mov r0, r4
0058fa58  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0058fa5c  7c 50 40 00 a8 40 00 00                          .byte 0x7c, 0x50, 0x40, 0x00, 0xa8, 0x40, 0x00, 0x00

; FUNCTION 0x0058fa64, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::SDefaultEndOfBatchCallback
; alias: _ZN6glitch5scene26SDefaultEndOfBatchCallbackD0Ev
; demangled: glitch::scene::SDefaultEndOfBatchCallback::~SDefaultEndOfBatchCallback()
; decoder-mode: arm
0058fa64  70 40 2d e9                                      push {r4, r5, r6, lr}
0058fa68  54 30 9f e5                                      ldr r3, [pc, #0x54]
0058fa6c  54 20 9f e5                                      ldr r2, [pc, #0x54]
0058fa70  24 10 90 e5                                      ldr r1, [r0, #0x24]
0058fa74  03 30 8f e0                                      add r3, pc, r3
0058fa78  02 20 93 e7                                      ldr r2, [r3, r2]
0058fa7c  00 00 51 e3                                      cmp r1, #0
0058fa80  00 40 a0 e1                                      mov r4, r0
0058fa84  08 20 82 e2                                      add r2, r2, #8
0058fa88  00 20 80 e5                                      str r2, [r0]
0058fa8c  08 00 00 0a                                      beq #0x58fab4
0058fa90  14 50 80 e2                                      add r5, r0, #0x14
0058fa94  05 00 a0 e1                                      mov r0, r5
0058fa98  18 10 94 e5                                      ldr r1, [r4, #0x18]
0058fa9c  ba ff ff eb                                      bl #0x58f98c
0058faa0  00 30 a0 e3                                      mov r3, #0
0058faa4  20 50 84 e5                                      str r5, [r4, #0x20]
0058faa8  24 30 84 e5                                      str r3, [r4, #0x24]
0058faac  1c 50 84 e5                                      str r5, [r4, #0x1c]
0058fab0  18 30 84 e5                                      str r3, [r4, #0x18]
0058fab4  04 00 a0 e1                                      mov r0, r4
0058fab8  fc f9 f5 eb                                      bl #0x30e2b0
0058fabc  04 00 a0 e1                                      mov r0, r4
0058fac0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0058fac4  1c 50 40 00 a8 40 00 00                          .byte 0x1c, 0x50, 0x40, 0x00, 0xa8, 0x40, 0x00, 0x00

; FUNCTION 0x0059013c, declared_size=1316, range_size=1316, mode=arm
; class-group: glitch::scene::SDefaultEndOfBatchCallback
; alias: _ZN6glitch5scene26SDefaultEndOfBatchCallbackclERKNS0_17CAppendMeshBufferERKN5boost13intrusive_ptrINS_5video9CMaterialEEE
; demangled: glitch::scene::SDefaultEndOfBatchCallback::operator()(glitch::scene::CAppendMeshBuffer const&, boost::intrusive_ptr<glitch::video::CMaterial> const&)
; decoder-mode: arm
0059013c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00590140  fc 34 9f e5                                      ldr r3, [pc, #0x4fc]
00590144  fc 54 9f e5                                      ldr r5, [pc, #0x4fc]
00590148  fc 64 9f e5                                      ldr r6, [pc, #0x4fc]
0059014c  7c d0 4d e2                                      sub sp, sp, #0x7c
00590150  05 50 8f e0                                      add r5, pc, r5
00590154  1c 30 8d e5                                      str r3, [sp, #0x1c]
00590158  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
0059015c  06 30 95 e7                                      ldr r3, [r5, r6]
00590160  01 40 a0 e1                                      mov r4, r1
00590164  0e c0 95 e7                                      ldr ip, [r5, lr]
00590168  3c 10 91 e5                                      ldr r1, [r1, #0x3c]
0059016c  00 e0 93 e5                                      ldr lr, [r3]
00590170  d8 a4 9f e5                                      ldr sl, [pc, #0x4d8]
00590174  00 c0 9c e5                                      ldr ip, [ip]
00590178  0e 00 51 e1                                      cmp r1, lr
0059017c  00 10 83 c5                                      strgt r1, [r3]
00590180  0a 30 95 e7                                      ldr r3, [r5, sl]
00590184  74 c0 8d e5                                      str ip, [sp, #0x74]
00590188  02 90 a0 e1                                      mov sb, r2
0059018c  00 10 93 e5                                      ldr r1, [r3]
00590190  44 20 94 e5                                      ldr r2, [r4, #0x44]
00590194  00 70 a0 e1                                      mov r7, r0
00590198  b4 04 9f e5                                      ldr r0, [pc, #0x4b4]
0059019c  01 00 52 e1                                      cmp r2, r1
005901a0  00 20 83 c5                                      strgt r2, [r3]
005901a4  00 00 8f e0                                      add r0, pc, r0
005901a8  58 20 8d e2                                      add r2, sp, #0x58
005901ac  18 20 8d e5                                      str r2, [sp, #0x18]
005901b0  c3 f7 f5 eb                                      bl #0x30e0c4
005901b4  06 20 95 e7                                      ldr r2, [r5, r6]
005901b8  0a 30 95 e7                                      ldr r3, [r5, sl]
005901bc  94 04 9f e5                                      ldr r0, [pc, #0x494]
005901c0  00 10 92 e5                                      ldr r1, [r2]
005901c4  00 20 93 e5                                      ldr r2, [r3]
005901c8  00 00 8f e0                                      add r0, pc, r0
005901cc  2c f7 f5 eb                                      bl #0x30de84
005901d0  0c a0 97 e5                                      ldr sl, [r7, #0xc]
005901d4  3c b0 94 e5                                      ldr fp, [r4, #0x3c]
005901d8  10 30 97 e5                                      ldr r3, [r7, #0x10]
005901dc  00 20 9a e5                                      ldr r2, [sl]
005901e0  00 10 a0 e3                                      mov r1, #0
005901e4  0b 00 a0 e1                                      mov r0, fp
005901e8  78 60 92 e5                                      ldr r6, [r2, #0x78]
005901ec  14 30 8d e5                                      str r3, [sp, #0x14]
005901f0  ec 8f fe eb                                      bl #0x5341a8
005901f4  01 80 a0 e3                                      mov r8, #1
005901f8  0a 10 a0 e1                                      mov r1, sl
005901fc  00 20 a0 e3                                      mov r2, #0
00590200  00 b0 8d e5                                      str fp, [sp]
00590204  04 00 8d e5                                      str r0, [sp, #4]
00590208  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059020c  08 80 8d e5                                      str r8, [sp, #8]
00590210  18 00 9d e5                                      ldr r0, [sp, #0x18]
00590214  36 ff 2f e1                                      blx r6
00590218  0c a0 97 e5                                      ldr sl, [r7, #0xc]
0059021c  44 b0 94 e5                                      ldr fp, [r4, #0x44]
00590220  00 10 a0 e3                                      mov r1, #0
00590224  00 30 9a e5                                      ldr r3, [sl]
00590228  0b 00 a0 e1                                      mov r0, fp
0059022c  78 60 93 e5                                      ldr r6, [r3, #0x78]
00590230  dc 8f fe eb                                      bl #0x5341a8
00590234  08 20 a0 e1                                      mov r2, r8
00590238  04 30 a0 e3                                      mov r3, #4
0059023c  04 00 8d e5                                      str r0, [sp, #4]
00590240  0a 10 a0 e1                                      mov r1, sl
00590244  08 80 8d e5                                      str r8, [sp, #8]
00590248  54 00 8d e2                                      add r0, sp, #0x54
0059024c  00 b0 8d e5                                      str fp, [sp]
00590250  36 ff 2f e1                                      blx r6
00590254  04 10 a0 e3                                      mov r1, #4
00590258  58 00 9d e5                                      ldr r0, [sp, #0x58]
0059025c  e3 45 00 eb                                      bl #0x5a19f0
00590260  04 10 a0 e3                                      mov r1, #4
00590264  00 80 a0 e1                                      mov r8, r0
00590268  54 00 9d e5                                      ldr r0, [sp, #0x54]
0059026c  df 45 00 eb                                      bl #0x5a19f0
00590270  08 10 a0 e1                                      mov r1, r8
00590274  00 60 a0 e1                                      mov r6, r0
00590278  04 00 a0 e1                                      mov r0, r4
0059027c  10 f0 ff eb                                      bl #0x58c2c4
00590280  06 10 a0 e1                                      mov r1, r6
00590284  04 00 a0 e1                                      mov r0, r4
00590288  2e f0 ff eb                                      bl #0x58c348
0059028c  58 60 9d e5                                      ldr r6, [sp, #0x58]
00590290  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
00590294  1f 20 03 e2                                      and r2, r3, #0x1f
00590298  01 00 52 e3                                      cmp r2, #1
0059029c  d7 00 00 9a                                      bls #0x590600
005902a0  01 20 42 e2                                      sub r2, r2, #1
005902a4  1f 30 c3 e3                                      bic r3, r3, #0x1f
005902a8  03 30 82 e1                                      orr r3, r2, r3
005902ac  13 30 c6 e5                                      strb r3, [r6, #0x13]
005902b0  54 60 9d e5                                      ldr r6, [sp, #0x54]
005902b4  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
005902b8  1f 20 03 e2                                      and r2, r3, #0x1f
005902bc  01 00 52 e3                                      cmp r2, #1
005902c0  c8 00 00 9a                                      bls #0x5905e8
005902c4  01 20 42 e2                                      sub r2, r2, #1
005902c8  1f 30 c3 e3                                      bic r3, r3, #0x1f
005902cc  03 30 82 e1                                      orr r3, r2, r3
005902d0  13 30 c6 e5                                      strb r3, [r6, #0x13]
005902d4  18 20 9d e5                                      ldr r2, [sp, #0x18]
005902d8  50 00 8d e2                                      add r0, sp, #0x50
005902dc  04 10 a0 e1                                      mov r1, r4
005902e0  63 f2 ff eb                                      bl #0x58cc74
005902e4  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
005902e8  44 00 94 e5                                      ldr r0, [r4, #0x44]
005902ec  56 fa f5 eb                                      bl #0x30ec4c
005902f0  18 00 8d e5                                      str r0, [sp, #0x18]
005902f4  48 10 94 e5                                      ldr r1, [r4, #0x48]
005902f8  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
005902fc  52 fa f5 eb                                      bl #0x30ec4c
00590300  54 60 9d e5                                      ldr r6, [sp, #0x54]
00590304  00 a0 a0 e1                                      mov sl, r0
00590308  00 00 56 e3                                      cmp r6, #0
0059030c  04 00 00 0a                                      beq #0x590324
00590310  04 30 96 e5                                      ldr r3, [r6, #4]
00590314  06 00 a0 e1                                      mov r0, r6
00590318  02 30 83 e2                                      add r3, r3, #2
0059031c  04 30 86 e5                                      str r3, [r6, #4]
00590320  97 34 f6 eb                                      bl #0x31d584
00590324  00 10 a0 e3                                      mov r1, #0
00590328  38 00 a0 e3                                      mov r0, #0x38
0059032c  9e 8f fe eb                                      bl #0x5341ac
00590330  24 23 9f e5                                      ldr r2, [pc, #0x324]
00590334  00 30 a0 e3                                      mov r3, #0
00590338  04 30 80 e5                                      str r3, [r0, #4]
0059033c  02 20 95 e7                                      ldr r2, [r5, r2]
00590340  10 30 80 e5                                      str r3, [r0, #0x10]
00590344  08 30 80 e5                                      str r3, [r0, #8]
00590348  08 20 82 e2                                      add r2, r2, #8
0059034c  00 20 80 e5                                      str r2, [r0]
00590350  0c 30 80 e5                                      str r3, [r0, #0xc]
00590354  50 30 9d e5                                      ldr r3, [sp, #0x50]
00590358  00 b0 a0 e3                                      mov fp, #0
0059035c  00 40 a0 e1                                      mov r4, r0
00590360  14 30 80 e5                                      str r3, [r0, #0x14]
00590364  00 00 53 e3                                      cmp r3, #0
00590368  00 20 93 15                                      ldrne r2, [r3]
0059036c  78 80 8d e2                                      add r8, sp, #0x78
00590370  01 20 82 12                                      addne r2, r2, #1
00590374  00 20 83 15                                      strne r2, [r3]
00590378  00 00 56 e3                                      cmp r6, #0
0059037c  18 60 80 e5                                      str r6, [r0, #0x18]
00590380  04 30 96 15                                      ldrne r3, [r6, #4]
00590384  01 20 a0 e3                                      mov r2, #1
00590388  01 30 83 12                                      addne r3, r3, #1
0059038c  04 30 86 15                                      strne r3, [r6, #4]
00590390  04 30 90 e5                                      ldr r3, [r0, #4]
00590394  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00590398  bc 22 c0 e1                                      strh r2, [r0, #0x2c]
0059039c  01 30 83 e2                                      add r3, r3, #1
005903a0  04 30 80 e5                                      str r3, [r0, #4]
005903a4  06 30 a0 e3                                      mov r3, #6
005903a8  20 e0 80 e5                                      str lr, [r0, #0x20]
005903ac  28 a0 80 e5                                      str sl, [r0, #0x28]
005903b0  1c b0 80 e5                                      str fp, [r0, #0x1c]
005903b4  24 b0 80 e5                                      str fp, [r0, #0x24]
005903b8  be 32 c0 e1                                      strh r3, [r0, #0x2e]
005903bc  30 b0 80 e5                                      str fp, [r0, #0x30]
005903c0  34 b0 c4 e5                                      strb fp, [r4, #0x34]
005903c4  58 b0 28 e5                                      str fp, [r8, #-0x58]!
005903c8  04 00 88 e2                                      add r0, r8, #4
005903cc  82 e2 ff eb                                      bl #0x588ddc
005903d0  00 30 99 e5                                      ldr r3, [sb]
005903d4  5c a0 8d e2                                      add sl, sp, #0x5c
005903d8  0a 00 a0 e1                                      mov r0, sl
005903dc  0e 10 a0 e3                                      mov r1, #0xe
005903e0  48 b0 8d e5                                      str fp, [sp, #0x48]
005903e4  14 30 8d e5                                      str r3, [sp, #0x14]
005903e8  ba ed ff eb                                      bl #0x58bad8
005903ec  14 30 9d e5                                      ldr r3, [sp, #0x14]
005903f0  70 20 9d e5                                      ldr r2, [sp, #0x70]
005903f4  4c 00 8d e2                                      add r0, sp, #0x4c
005903f8  03 10 a0 e1                                      mov r1, r3
005903fc  39 ef 00 eb                                      bl #0x5cc0e8
00590400  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00590404  0b 00 53 e1                                      cmp r3, fp
00590408  00 20 93 15                                      ldrne r2, [r3]
0059040c  01 20 82 12                                      addne r2, r2, #1
00590410  00 20 83 15                                      strne r2, [r3]
00590414  20 b0 9d e5                                      ldr fp, [sp, #0x20]
00590418  20 30 8d e5                                      str r3, [sp, #0x20]
0059041c  00 00 5b e3                                      cmp fp, #0
00590420  04 00 00 0a                                      beq #0x590438
00590424  00 30 9b e5                                      ldr r3, [fp]
00590428  01 30 43 e2                                      sub r3, r3, #1
0059042c  00 00 53 e3                                      cmp r3, #0
00590430  00 30 8b e5                                      str r3, [fp]
00590434  61 00 00 0a                                      beq #0x5905c0
00590438  4c b0 9d e5                                      ldr fp, [sp, #0x4c]
0059043c  00 00 5b e3                                      cmp fp, #0
00590440  04 00 00 0a                                      beq #0x590458
00590444  00 30 9b e5                                      ldr r3, [fp]
00590448  01 30 43 e2                                      sub r3, r3, #1
0059044c  00 00 53 e3                                      cmp r3, #0
00590450  00 30 8b e5                                      str r3, [fp]
00590454  54 00 00 0a                                      beq #0x5905ac
00590458  70 00 9d e5                                      ldr r0, [sp, #0x70]
0059045c  0a 00 50 e1                                      cmp r0, sl
00590460  02 00 00 0a                                      beq #0x590470
00590464  00 00 50 e3                                      cmp r0, #0
00590468  00 00 00 0a                                      beq #0x590470
0059046c  f7 ff f5 eb                                      bl #0x310450
00590470  00 30 99 e5                                      ldr r3, [sb]
00590474  03 00 a0 e1                                      mov r0, r3
00590478  04 a0 93 e5                                      ldr sl, [r3, #4]
0059047c  2c d6 00 eb                                      bl #0x5c5d34
00590480  18 30 9a e5                                      ldr r3, [sl, #0x18]
00590484  0c 20 a0 e3                                      mov r2, #0xc
00590488  24 e0 8d e2                                      add lr, sp, #0x24
0059048c  92 30 23 e0                                      mla r3, r2, r0, r3
00590490  08 c0 93 e5                                      ldr ip, [r3, #8]
00590494  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00590498  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0059049c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
005904a0  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
005904a4  00 00 99 e5                                      ldr r0, [sb]
005904a8  21 d6 00 eb                                      bl #0x5c5d34
005904ac  04 30 94 e5                                      ldr r3, [r4, #4]
005904b0  01 30 83 e2                                      add r3, r3, #1
005904b4  04 30 84 e5                                      str r3, [r4, #4]
005904b8  48 00 9d e5                                      ldr r0, [sp, #0x48]
005904bc  48 40 8d e5                                      str r4, [sp, #0x48]
005904c0  00 00 50 e3                                      cmp r0, #0
005904c4  00 00 00 0a                                      beq #0x5904cc
005904c8  2d 34 f6 eb                                      bl #0x31d584
005904cc  08 10 97 e5                                      ldr r1, [r7, #8]
005904d0  14 00 87 e2                                      add r0, r7, #0x14
005904d4  10 10 81 e2                                      add r1, r1, #0x10
005904d8  9d fe ff eb                                      bl #0x58ff54
005904dc  08 10 a0 e1                                      mov r1, r8
005904e0  70 fb ff eb                                      bl #0x58f2a8
005904e4  08 30 97 e5                                      ldr r3, [r7, #8]
005904e8  00 20 e0 e3                                      mvn r2, #0
005904ec  10 20 83 e5                                      str r2, [r3, #0x10]
005904f0  48 00 9d e5                                      ldr r0, [sp, #0x48]
005904f4  00 00 50 e3                                      cmp r0, #0
005904f8  00 00 00 0a                                      beq #0x590500
005904fc  20 34 f6 eb                                      bl #0x31d584
00590500  20 70 9d e5                                      ldr r7, [sp, #0x20]
00590504  00 00 57 e3                                      cmp r7, #0
00590508  04 00 00 0a                                      beq #0x590520
0059050c  00 30 97 e5                                      ldr r3, [r7]
00590510  01 30 43 e2                                      sub r3, r3, #1
00590514  00 00 53 e3                                      cmp r3, #0
00590518  00 30 87 e5                                      str r3, [r7]
0059051c  1d 00 00 0a                                      beq #0x590598
00590520  04 00 a0 e1                                      mov r0, r4
00590524  16 34 f6 eb                                      bl #0x31d584
00590528  00 00 56 e3                                      cmp r6, #0
0059052c  01 00 00 0a                                      beq #0x590538
00590530  06 00 a0 e1                                      mov r0, r6
00590534  12 34 f6 eb                                      bl #0x31d584
00590538  50 40 9d e5                                      ldr r4, [sp, #0x50]
0059053c  00 00 54 e3                                      cmp r4, #0
00590540  04 00 00 0a                                      beq #0x590558
00590544  00 30 94 e5                                      ldr r3, [r4]
00590548  01 30 43 e2                                      sub r3, r3, #1
0059054c  00 00 53 e3                                      cmp r3, #0
00590550  00 30 84 e5                                      str r3, [r4]
00590554  1e 00 00 0a                                      beq #0x5905d4
00590558  54 00 9d e5                                      ldr r0, [sp, #0x54]
0059055c  00 00 50 e3                                      cmp r0, #0
00590560  00 00 00 0a                                      beq #0x590568
00590564  06 34 f6 eb                                      bl #0x31d584
00590568  58 00 9d e5                                      ldr r0, [sp, #0x58]
0059056c  00 00 50 e3                                      cmp r0, #0
00590570  00 00 00 0a                                      beq #0x590578
00590574  02 34 f6 eb                                      bl #0x31d584
00590578  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0059057c  02 30 95 e7                                      ldr r3, [r5, r2]
00590580  74 20 9d e5                                      ldr r2, [sp, #0x74]
00590584  00 30 93 e5                                      ldr r3, [r3]
00590588  03 00 52 e1                                      cmp r2, r3
0059058c  2b 00 00 1a                                      bne #0x590640
00590590  7c d0 8d e2                                      add sp, sp, #0x7c
00590594  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00590598  07 00 a0 e1                                      mov r0, r7
0059059c  75 ee 00 eb                                      bl #0x5cbf78
005905a0  07 00 a0 e1                                      mov r0, r7
005905a4  41 f7 f5 eb                                      bl #0x30e2b0
005905a8  dc ff ff ea                                      b #0x590520
005905ac  0b 00 a0 e1                                      mov r0, fp
005905b0  70 ee 00 eb                                      bl #0x5cbf78
005905b4  0b 00 a0 e1                                      mov r0, fp
005905b8  3c f7 f5 eb                                      bl #0x30e2b0
005905bc  a5 ff ff ea                                      b #0x590458
005905c0  0b 00 a0 e1                                      mov r0, fp
005905c4  6b ee 00 eb                                      bl #0x5cbf78
005905c8  0b 00 a0 e1                                      mov r0, fp
005905cc  37 f7 f5 eb                                      bl #0x30e2b0
005905d0  98 ff ff ea                                      b #0x590438
005905d4  04 00 a0 e1                                      mov r0, r4
005905d8  0f 41 00 eb                                      bl #0x5a0a1c
005905dc  04 00 a0 e1                                      mov r0, r4
005905e0  32 f7 f5 eb                                      bl #0x30e2b0
005905e4  db ff ff ea                                      b #0x590558
005905e8  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
005905ec  20 00 13 e3                                      tst r3, #0x20
005905f0  08 00 00 1a                                      bne #0x590618
005905f4  00 30 a0 e3                                      mov r3, #0
005905f8  13 30 c6 e5                                      strb r3, [r6, #0x13]
005905fc  34 ff ff ea                                      b #0x5902d4
00590600  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
00590604  20 00 13 e3                                      tst r3, #0x20
00590608  07 00 00 1a                                      bne #0x59062c
0059060c  00 30 a0 e3                                      mov r3, #0
00590610  13 30 c6 e5                                      strb r3, [r6, #0x13]
00590614  25 ff ff ea                                      b #0x5902b0
00590618  00 30 96 e5                                      ldr r3, [r6]
0059061c  06 00 a0 e1                                      mov r0, r6
00590620  0f e0 a0 e1                                      mov lr, pc
00590624  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00590628  f1 ff ff ea                                      b #0x5905f4
0059062c  00 30 96 e5                                      ldr r3, [r6]
00590630  06 00 a0 e1                                      mov r0, r6
00590634  0f e0 a0 e1                                      mov lr, pc
00590638  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059063c  f2 ff ff ea                                      b #0x59060c
00590640  32 f7 f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00590644  ac 40 00 00 40 49 40 00 84 16 00 00 7c 42 00 00  .byte 0xac, 0x40, 0x00, 0x00, 0x40, 0x49, 0x40, 0x00, 0x84, 0x16, 0x00, 0x00, 0x7c, 0x42, 0x00, 0x00
00590654  6c f4 34 00 80 f4 34 00 54 0c 00 00              .byte 0x6c, 0xf4, 0x34, 0x00, 0x80, 0xf4, 0x34, 0x00, 0x54, 0x0c, 0x00, 0x00

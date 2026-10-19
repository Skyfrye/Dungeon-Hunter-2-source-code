; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a55e4, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::SkillListTable
; alias: _ZN6Arrays14SkillListTable13finalizeNamesEv
; demangled: Arrays::SkillListTable::finalizeNames()
; decoder-mode: arm
004a55e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a55e8  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a55ec  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a55f0  05 50 8f e0                                      add r5, pc, r5
004a55f4  06 30 95 e7                                      ldr r3, [r5, r6]
004a55f8  00 30 93 e5                                      ldr r3, [r3]
004a55fc  00 00 53 e3                                      cmp r3, #0
004a5600  1a 00 00 0a                                      beq #0x4a5670
004a5604  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a5608  07 20 95 e7                                      ldr r2, [r5, r7]
004a560c  00 20 92 e5                                      ldr r2, [r2]
004a5610  00 00 52 e3                                      cmp r2, #0
004a5614  10 00 00 0a                                      beq #0x4a565c
004a5618  00 40 a0 e3                                      mov r4, #0
004a561c  01 00 00 ea                                      b #0x4a5628
004a5620  06 30 95 e7                                      ldr r3, [r5, r6]
004a5624  00 30 93 e5                                      ldr r3, [r3]
004a5628  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a562c  01 40 84 e2                                      add r4, r4, #1
004a5630  00 00 50 e3                                      cmp r0, #0
004a5634  02 00 00 0a                                      beq #0x4a5644
004a5638  80 ab f9 eb                                      bl #0x310440
004a563c  06 30 95 e7                                      ldr r3, [r5, r6]
004a5640  00 30 93 e5                                      ldr r3, [r3]
004a5644  07 20 95 e7                                      ldr r2, [r5, r7]
004a5648  00 20 92 e5                                      ldr r2, [r2]
004a564c  04 00 52 e1                                      cmp r2, r4
004a5650  f2 ff ff 8a                                      bhi #0x4a5620
004a5654  00 00 53 e3                                      cmp r3, #0
004a5658  01 00 00 0a                                      beq #0x4a5664
004a565c  03 00 a0 e1                                      mov r0, r3
004a5660  76 ab f9 eb                                      bl #0x310440
004a5664  06 30 95 e7                                      ldr r3, [r5, r6]
004a5668  00 20 a0 e3                                      mov r2, #0
004a566c  00 20 83 e5                                      str r2, [r3]
004a5670  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5674  a0 f4 4e 00 3c 10 00 00 78 2d 00 00              .byte 0xa0, 0xf4, 0x4e, 0x00, 0x3c, 0x10, 0x00, 0x00, 0x78, 0x2d, 0x00, 0x00

; FUNCTION 0x004a5680, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::SkillListTable
; alias: _ZN6Arrays14SkillListTable8finalizeEv
; demangled: Arrays::SkillListTable::finalize()
; decoder-mode: arm
004a5680  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5684  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a5688  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a568c  05 50 8f e0                                      add r5, pc, r5
004a5690  07 30 95 e7                                      ldr r3, [r5, r7]
004a5694  00 30 93 e5                                      ldr r3, [r3]
004a5698  00 00 53 e3                                      cmp r3, #0
004a569c  2c 00 00 0a                                      beq #0x4a5754
004a56a0  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a56a4  08 20 95 e7                                      ldr r2, [r5, r8]
004a56a8  00 20 92 e5                                      ldr r2, [r2]
004a56ac  00 00 52 e3                                      cmp r2, #0
004a56b0  12 00 00 0a                                      beq #0x4a5700
004a56b4  00 40 a0 e3                                      mov r4, #0
004a56b8  04 60 a0 e1                                      mov r6, r4
004a56bc  01 00 00 ea                                      b #0x4a56c8
004a56c0  07 30 95 e7                                      ldr r3, [r5, r7]
004a56c4  00 30 93 e5                                      ldr r3, [r3]
004a56c8  04 00 83 e0                                      add r0, r3, r4
004a56cc  04 30 93 e7                                      ldr r3, [r3, r4]
004a56d0  0f e0 a0 e1                                      mov lr, pc
004a56d4  08 f0 93 e5                                      ldr pc, [r3, #8]
004a56d8  08 30 95 e7                                      ldr r3, [r5, r8]
004a56dc  01 60 86 e2                                      add r6, r6, #1
004a56e0  0c 40 84 e2                                      add r4, r4, #0xc
004a56e4  00 30 93 e5                                      ldr r3, [r3]
004a56e8  06 00 53 e1                                      cmp r3, r6
004a56ec  f3 ff ff 8a                                      bhi #0x4a56c0
004a56f0  07 30 95 e7                                      ldr r3, [r5, r7]
004a56f4  00 30 93 e5                                      ldr r3, [r3]
004a56f8  00 00 53 e3                                      cmp r3, #0
004a56fc  11 00 00 0a                                      beq #0x4a5748
004a5700  04 20 13 e5                                      ldr r2, [r3, #-4]
004a5704  0c 00 a0 e3                                      mov r0, #0xc
004a5708  90 32 20 e0                                      mla r0, r0, r2, r3
004a570c  00 00 53 e1                                      cmp r3, r0
004a5710  01 00 00 1a                                      bne #0x4a571c
004a5714  09 00 00 ea                                      b #0x4a5740
004a5718  04 00 a0 e1                                      mov r0, r4
004a571c  0c 40 40 e2                                      sub r4, r0, #0xc
004a5720  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a5724  04 00 a0 e1                                      mov r0, r4
004a5728  0f e0 a0 e1                                      mov lr, pc
004a572c  00 f0 93 e5                                      ldr pc, [r3]
004a5730  07 30 95 e7                                      ldr r3, [r5, r7]
004a5734  00 00 93 e5                                      ldr r0, [r3]
004a5738  04 00 50 e1                                      cmp r0, r4
004a573c  f5 ff ff 1a                                      bne #0x4a5718
004a5740  08 00 40 e2                                      sub r0, r0, #8
004a5744  3d ab f9 eb                                      bl #0x310440
004a5748  07 30 95 e7                                      ldr r3, [r5, r7]
004a574c  00 20 a0 e3                                      mov r2, #0
004a5750  00 20 83 e5                                      str r2, [r3]
004a5754  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5758  04 f4 4e 00 c8 11 00 00 78 2d 00 00              .byte 0x04, 0xf4, 0x4e, 0x00, 0xc8, 0x11, 0x00, 0x00, 0x78, 0x2d, 0x00, 0x00

; FUNCTION 0x004b0464, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::SkillListTable
; alias: _ZN6Arrays14SkillListTable9readNamesEP11IStreamBase
; demangled: Arrays::SkillListTable::readNames(IStreamBase*)
; decoder-mode: arm
004b0464  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b0468  00 70 a0 e1                                      mov r7, r0
004b046c  1c d0 4d e2                                      sub sp, sp, #0x1c
004b0470  5b d4 ff eb                                      bl #0x4a55e4
004b0474  07 00 a0 e1                                      mov r0, r7
004b0478  84 8d f9 eb                                      bl #0x313a90
004b047c  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b0480  01 30 a0 e3                                      mov r3, #1
004b0484  00 00 53 e3                                      cmp r3, #0
004b0488  06 60 8f e0                                      add r6, pc, r6
004b048c  14 00 8d e5                                      str r0, [sp, #0x14]
004b0490  0c 30 8d e5                                      str r3, [sp, #0xc]
004b0494  12 00 00 1a                                      bne #0x4b04e4
004b0498  14 30 8d e2                                      add r3, sp, #0x14
004b049c  02 20 83 e2                                      add r2, r3, #2
004b04a0  01 30 83 e2                                      add r3, r3, #1
004b04a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b04a8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b04ac  03 00 52 e1                                      cmp r2, r3
004b04b0  02 40 a0 e1                                      mov r4, r2
004b04b4  01 10 20 e0                                      eor r1, r0, r1
004b04b8  01 10 43 e5                                      strb r1, [r3, #-1]
004b04bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b04c0  00 10 21 e0                                      eor r1, r1, r0
004b04c4  01 10 c2 e5                                      strb r1, [r2, #1]
004b04c8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b04cc  01 20 42 e2                                      sub r2, r2, #1
004b04d0  00 10 21 e0                                      eor r1, r1, r0
004b04d4  01 10 43 e5                                      strb r1, [r3, #-1]
004b04d8  01 30 83 e2                                      add r3, r3, #1
004b04dc  f0 ff ff 8a                                      bhi #0x4b04a4
004b04e0  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b04e4  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b04e8  03 30 96 e7                                      ldr r3, [r6, r3]
004b04ec  00 30 93 e5                                      ldr r3, [r3]
004b04f0  00 00 53 e1                                      cmp r3, r0
004b04f4  01 00 00 0a                                      beq #0x4b0500
004b04f8  1c d0 8d e2                                      add sp, sp, #0x1c
004b04fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b0500  00 01 a0 e1                                      lsl r0, r0, #2
004b0504  01 10 a0 e3                                      mov r1, #1
004b0508  17 80 f9 eb                                      bl #0x31056c
004b050c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b0510  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b0514  09 30 96 e7                                      ldr r3, [r6, sb]
004b0518  00 00 52 e3                                      cmp r2, #0
004b051c  00 00 83 e5                                      str r0, [r3]
004b0520  f4 ff ff 0a                                      beq #0x4b04f8
004b0524  10 a0 8d e2                                      add sl, sp, #0x10
004b0528  01 80 a0 e3                                      mov r8, #1
004b052c  08 10 8a e0                                      add r1, sl, r8
004b0530  02 30 8a e2                                      add r3, sl, #2
004b0534  00 40 a0 e3                                      mov r4, #0
004b0538  0a 00 8d e8                                      stm sp, {r1, r3}
004b053c  07 00 a0 e1                                      mov r0, r7
004b0540  0a 10 a0 e1                                      mov r1, sl
004b0544  15 bb fc eb                                      bl #0x3df1a0
004b0548  00 00 58 e3                                      cmp r8, #0
004b054c  0c 80 8d e5                                      str r8, [sp, #0xc]
004b0550  0f 00 00 1a                                      bne #0x4b0594
004b0554  00 30 9d e5                                      ldr r3, [sp]
004b0558  04 20 9d e5                                      ldr r2, [sp, #4]
004b055c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0560  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0564  03 00 52 e1                                      cmp r2, r3
004b0568  01 10 20 e0                                      eor r1, r0, r1
004b056c  01 10 43 e5                                      strb r1, [r3, #-1]
004b0570  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0574  00 10 21 e0                                      eor r1, r1, r0
004b0578  01 10 c2 e5                                      strb r1, [r2, #1]
004b057c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0580  01 20 42 e2                                      sub r2, r2, #1
004b0584  00 10 21 e0                                      eor r1, r1, r0
004b0588  01 10 43 e5                                      strb r1, [r3, #-1]
004b058c  01 30 83 e2                                      add r3, r3, #1
004b0590  f1 ff ff 8a                                      bhi #0x4b055c
004b0594  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b0598  09 50 96 e7                                      ldr r5, [r6, sb]
004b059c  01 10 a0 e3                                      mov r1, #1
004b05a0  01 00 80 e0                                      add r0, r0, r1
004b05a4  00 b0 95 e5                                      ldr fp, [r5]
004b05a8  ef 7f f9 eb                                      bl #0x31056c
004b05ac  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b05b0  00 30 95 e5                                      ldr r3, [r5]
004b05b4  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b05b8  07 00 a0 e1                                      mov r0, r7
004b05bc  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b05c0  00 30 a0 e3                                      mov r3, #0
004b05c4  a2 9b f9 eb                                      bl #0x317454
004b05c8  00 30 95 e5                                      ldr r3, [r5]
004b05cc  00 10 a0 e3                                      mov r1, #0
004b05d0  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b05d4  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b05d8  01 40 84 e2                                      add r4, r4, #1
004b05dc  03 10 c2 e7                                      strb r1, [r2, r3]
004b05e0  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b05e4  04 00 53 e1                                      cmp r3, r4
004b05e8  d3 ff ff 8a                                      bhi #0x4b053c
004b05ec  c1 ff ff ea                                      b #0x4b04f8
; mapping-symbol data/literal pool
004b05f0  08 46 4e 00 78 2d 00 00 3c 10 00 00              .byte 0x08, 0x46, 0x4e, 0x00, 0x78, 0x2d, 0x00, 0x00, 0x3c, 0x10, 0x00, 0x00

; FUNCTION 0x004b05fc, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::SkillListTable
; alias: _ZN6Arrays14SkillListTable9skipNamesEP11IStreamBase
; demangled: Arrays::SkillListTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b05fc  98 ff ff ea                                      b #0x4b0464

; FUNCTION 0x004b9964, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::SkillListTable
; alias: _ZN6Arrays14SkillListTable4readEP11IStreamBase
; demangled: Arrays::SkillListTable::read(IStreamBase*)
; decoder-mode: arm
004b9964  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b9968  0c d0 4d e2                                      sub sp, sp, #0xc
004b996c  00 a0 a0 e1                                      mov sl, r0
004b9970  46 68 f9 eb                                      bl #0x313a90
004b9974  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b9978  01 30 a0 e3                                      mov r3, #1
004b997c  00 00 53 e3                                      cmp r3, #0
004b9980  04 00 8d e5                                      str r0, [sp, #4]
004b9984  00 30 8d e5                                      str r3, [sp]
004b9988  06 60 8f e0                                      add r6, pc, r6
004b998c  10 00 00 1a                                      bne #0x4b99d4
004b9990  04 30 8d e2                                      add r3, sp, #4
004b9994  02 20 83 e2                                      add r2, r3, #2
004b9998  01 30 83 e2                                      add r3, r3, #1
004b999c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b99a0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b99a4  03 00 52 e1                                      cmp r2, r3
004b99a8  01 10 20 e0                                      eor r1, r0, r1
004b99ac  01 10 43 e5                                      strb r1, [r3, #-1]
004b99b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b99b4  00 10 21 e0                                      eor r1, r1, r0
004b99b8  01 10 c2 e5                                      strb r1, [r2, #1]
004b99bc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b99c0  01 20 42 e2                                      sub r2, r2, #1
004b99c4  00 10 21 e0                                      eor r1, r1, r0
004b99c8  01 10 43 e5                                      strb r1, [r3, #-1]
004b99cc  01 30 83 e2                                      add r3, r3, #1
004b99d0  f1 ff ff 8a                                      bhi #0x4b999c
004b99d4  29 af ff eb                                      bl #0x4a5680
004b99d8  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b99dc  04 40 9d e5                                      ldr r4, [sp, #4]
004b99e0  0c 50 a0 e3                                      mov r5, #0xc
004b99e4  07 30 96 e7                                      ldr r3, [r6, r7]
004b99e8  95 04 00 e0                                      mul r0, r5, r4
004b99ec  00 40 83 e5                                      str r4, [r3]
004b99f0  08 00 80 e2                                      add r0, r0, #8
004b99f4  01 10 a0 e3                                      mov r1, #1
004b99f8  db 5a f9 eb                                      bl #0x31056c
004b99fc  00 00 54 e3                                      cmp r4, #0
004b9a00  00 50 80 e5                                      str r5, [r0]
004b9a04  04 40 80 e5                                      str r4, [r0, #4]
004b9a08  08 30 80 e2                                      add r3, r0, #8
004b9a0c  0a 00 00 0a                                      beq #0x4b9a3c
004b9a10  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b9a14  00 20 a0 e3                                      mov r2, #0
004b9a18  02 c0 a0 e1                                      mov ip, r2
004b9a1c  01 10 96 e7                                      ldr r1, [r6, r1]
004b9a20  08 10 81 e2                                      add r1, r1, #8
004b9a24  01 20 82 e2                                      add r2, r2, #1
004b9a28  04 00 52 e1                                      cmp r2, r4
004b9a2c  08 10 80 e5                                      str r1, [r0, #8]
004b9a30  10 c0 80 e5                                      str ip, [r0, #0x10]
004b9a34  0c 00 80 e2                                      add r0, r0, #0xc
004b9a38  f9 ff ff 1a                                      bne #0x4b9a24
004b9a3c  07 20 96 e7                                      ldr r2, [r6, r7]
004b9a40  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b9a44  00 10 92 e5                                      ldr r1, [r2]
004b9a48  08 20 96 e7                                      ldr r2, [r6, r8]
004b9a4c  00 00 51 e3                                      cmp r1, #0
004b9a50  00 30 82 e5                                      str r3, [r2]
004b9a54  0f 00 00 0a                                      beq #0x4b9a98
004b9a58  00 40 a0 e3                                      mov r4, #0
004b9a5c  04 50 a0 e1                                      mov r5, r4
004b9a60  01 00 00 ea                                      b #0x4b9a6c
004b9a64  08 30 96 e7                                      ldr r3, [r6, r8]
004b9a68  00 30 93 e5                                      ldr r3, [r3]
004b9a6c  04 00 83 e0                                      add r0, r3, r4
004b9a70  0a 10 a0 e1                                      mov r1, sl
004b9a74  04 30 93 e7                                      ldr r3, [r3, r4]
004b9a78  0f e0 a0 e1                                      mov lr, pc
004b9a7c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b9a80  07 30 96 e7                                      ldr r3, [r6, r7]
004b9a84  01 50 85 e2                                      add r5, r5, #1
004b9a88  0c 40 84 e2                                      add r4, r4, #0xc
004b9a8c  00 30 93 e5                                      ldr r3, [r3]
004b9a90  05 00 53 e1                                      cmp r3, r5
004b9a94  f2 ff ff 8a                                      bhi #0x4b9a64
004b9a98  0c d0 8d e2                                      add sp, sp, #0xc
004b9a9c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b9aa0  08 b1 4d 00 78 2d 00 00 c4 16 00 00 c8 11 00 00  .byte 0x08, 0xb1, 0x4d, 0x00, 0x78, 0x2d, 0x00, 0x00, 0xc4, 0x16, 0x00, 0x00, 0xc8, 0x11, 0x00, 0x00

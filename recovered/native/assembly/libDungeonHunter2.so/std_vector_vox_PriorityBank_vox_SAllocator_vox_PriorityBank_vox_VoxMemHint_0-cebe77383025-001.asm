; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008638a0, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<vox::PriorityBank, vox::SAllocator<vox::PriorityBank, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox12PriorityBankENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEED1Ev
; demangled: std::vector<vox::PriorityBank, vox::SAllocator<vox::PriorityBank, (vox::VoxMemHint)0> >::~vector()
; decoder-mode: arm
008638a0  70 40 2d e9                                      push {r4, r5, r6, lr}
008638a4  04 40 90 e5                                      ldr r4, [r0, #4]
008638a8  00 50 90 e5                                      ldr r5, [r0]
008638ac  00 60 a0 e1                                      mov r6, r0
008638b0  05 00 54 e1                                      cmp r4, r5
008638b4  04 00 00 0a                                      beq #0x8638cc
008638b8  18 40 44 e2                                      sub r4, r4, #0x18
008638bc  04 00 a0 e1                                      mov r0, r4
008638c0  ea ff ff eb                                      bl #0x863870
008638c4  04 00 55 e1                                      cmp r5, r4
008638c8  fa ff ff 1a                                      bne #0x8638b8
008638cc  00 00 96 e5                                      ldr r0, [r6]
008638d0  00 00 50 e3                                      cmp r0, #0
008638d4  00 00 00 0a                                      beq #0x8638dc
008638d8  d9 b2 ea eb                                      bl #0x310444
008638dc  06 00 a0 e1                                      mov r0, r6
008638e0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00864124, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<vox::PriorityBank, vox::SAllocator<vox::PriorityBank, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox12PriorityBankENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE8_M_eraseEPS1_S6_RKSt12__false_type
; demangled: std::vector<vox::PriorityBank, vox::SAllocator<vox::PriorityBank, (vox::VoxMemHint)0> >::_M_erase(vox::PriorityBank*, vox::PriorityBank*, std::__false_type const&)
; decoder-mode: arm
00864124  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00864128  04 30 90 e5                                      ldr r3, [r0, #4]
0086412c  10 d0 4d e2                                      sub sp, sp, #0x10
00864130  01 50 a0 e1                                      mov r5, r1
00864134  00 40 a0 e1                                      mov r4, r0
00864138  03 10 a0 e1                                      mov r1, r3
0086413c  02 00 a0 e1                                      mov r0, r2
00864140  00 c0 a0 e3                                      mov ip, #0
00864144  05 20 a0 e1                                      mov r2, r5
00864148  0c 30 8d e2                                      add r3, sp, #0xc
0086414c  00 c0 8d e5                                      str ip, [sp]
00864150  d4 ff ff eb                                      bl #0x8640a8
00864154  04 70 94 e5                                      ldr r7, [r4, #4]
00864158  00 80 a0 e1                                      mov r8, r0
0086415c  00 00 57 e1                                      cmp r7, r0
00864160  05 00 00 0a                                      beq #0x86417c
00864164  00 60 a0 e1                                      mov r6, r0
00864168  06 00 a0 e1                                      mov r0, r6
0086416c  18 60 86 e2                                      add r6, r6, #0x18
00864170  be fd ff eb                                      bl #0x863870
00864174  06 00 57 e1                                      cmp r7, r6
00864178  fa ff ff 1a                                      bne #0x864168
0086417c  04 80 84 e5                                      str r8, [r4, #4]
00864180  05 00 a0 e1                                      mov r0, r5
00864184  10 d0 8d e2                                      add sp, sp, #0x10
00864188  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00866270, declared_size=272, range_size=272, mode=arm
; class-group: std::vector<vox::PriorityBank, vox::SAllocator<vox::PriorityBank, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox12PriorityBankENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE7reserveEj
; demangled: std::vector<vox::PriorityBank, vox::SAllocator<vox::PriorityBank, (vox::VoxMemHint)0> >::reserve(unsigned int)
; decoder-mode: arm
00866270  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00866274  00 40 a0 e1                                      mov r4, r0
00866278  00 20 90 e5                                      ldr r2, [r0]
0086627c  08 00 90 e5                                      ldr r0, [r0, #8]
00866280  08 d0 4d e2                                      sub sp, sp, #8
00866284  01 30 a0 e1                                      mov r3, r1
00866288  00 00 62 e0                                      rsb r0, r2, r0
0086628c  c0 01 a0 e1                                      asr r0, r0, #3
00866290  04 10 8d e5                                      str r1, [sp, #4]
00866294  00 11 80 e0                                      add r1, r0, r0, lsl #2
00866298  01 12 81 e0                                      add r1, r1, r1, lsl #4
0086629c  01 14 81 e0                                      add r1, r1, r1, lsl #8
008662a0  01 18 81 e0                                      add r1, r1, r1, lsl #16
008662a4  81 00 80 e0                                      add r0, r0, r1, lsl #1
008662a8  00 00 53 e1                                      cmp r3, r0
008662ac  24 00 00 9a                                      bls #0x866344
008662b0  aa 1a 0a e3                                      movw r1, #0xaaaa
008662b4  01 16 81 e1                                      orr r1, r1, r1, lsl #12
008662b8  01 00 53 e1                                      cmp r3, r1
008662bc  22 00 00 8a                                      bhi #0x86634c
008662c0  04 30 94 e5                                      ldr r3, [r4, #4]
008662c4  00 00 52 e3                                      cmp r2, #0
008662c8  03 10 62 e0                                      rsb r1, r2, r3
008662cc  c1 11 a0 e1                                      asr r1, r1, #3
008662d0  01 51 81 e0                                      add r5, r1, r1, lsl #2
008662d4  05 52 85 e0                                      add r5, r5, r5, lsl #4
008662d8  05 54 85 e0                                      add r5, r5, r5, lsl #8
008662dc  05 58 85 e0                                      add r5, r5, r5, lsl #16
008662e0  85 50 81 e0                                      add r5, r1, r5, lsl #1
008662e4  1d 00 00 0a                                      beq #0x866360
008662e8  04 00 a0 e1                                      mov r0, r4
008662ec  04 10 8d e2                                      add r1, sp, #4
008662f0  b6 f7 ff eb                                      bl #0x8641d0
008662f4  04 60 94 e5                                      ldr r6, [r4, #4]
008662f8  00 70 94 e5                                      ldr r7, [r4]
008662fc  00 80 a0 e1                                      mov r8, r0
00866300  07 00 56 e1                                      cmp r6, r7
00866304  05 00 00 0a                                      beq #0x866320
00866308  18 60 46 e2                                      sub r6, r6, #0x18
0086630c  06 00 a0 e1                                      mov r0, r6
00866310  56 f5 ff eb                                      bl #0x863870
00866314  06 00 57 e1                                      cmp r7, r6
00866318  fa ff ff 1a                                      bne #0x866308
0086631c  00 60 94 e5                                      ldr r6, [r4]
00866320  06 00 a0 e1                                      mov r0, r6
00866324  46 a8 ea eb                                      bl #0x310444
00866328  04 20 9d e5                                      ldr r2, [sp, #4]
0086632c  18 30 a0 e3                                      mov r3, #0x18
00866330  93 85 25 e0                                      mla r5, r3, r5, r8
00866334  93 82 23 e0                                      mla r3, r3, r2, r8
00866338  04 50 84 e5                                      str r5, [r4, #4]
0086633c  08 30 84 e5                                      str r3, [r4, #8]
00866340  00 80 84 e5                                      str r8, [r4]
00866344  08 d0 8d e2                                      add sp, sp, #8
00866348  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0086634c  28 00 9f e5                                      ldr r0, [pc, #0x28]
00866350  00 00 8f e0                                      add r0, pc, r0
00866354  eb 5f 01 eb                                      bl #0x8be308
00866358  00 20 94 e5                                      ldr r2, [r4]
0086635c  d7 ff ff ea                                      b #0x8662c0
00866360  04 30 9d e5                                      ldr r3, [sp, #4]
00866364  18 00 a0 e3                                      mov r0, #0x18
00866368  02 10 a0 e1                                      mov r1, r2
0086636c  90 03 00 e0                                      mul r0, r0, r3
00866370  b4 a8 ea eb                                      bl #0x310648
00866374  00 80 a0 e1                                      mov r8, r0
00866378  ea ff ff ea                                      b #0x866328
; mapping-symbol data/literal pool
0086637c  18 81 05 00                                      .byte 0x18, 0x81, 0x05, 0x00

; FUNCTION 0x0086958c, declared_size=324, range_size=324, mode=arm
; class-group: std::vector<vox::PriorityBank, vox::SAllocator<vox::PriorityBank, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox12PriorityBankENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE9push_backERKS1_
; demangled: std::vector<vox::PriorityBank, vox::SAllocator<vox::PriorityBank, (vox::VoxMemHint)0> >::push_back(vox::PriorityBank const&)
; decoder-mode: arm
0086958c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00869590  04 80 90 e5                                      ldr r8, [r0, #4]
00869594  08 30 90 e5                                      ldr r3, [r0, #8]
00869598  14 d0 4d e2                                      sub sp, sp, #0x14
0086959c  00 40 a0 e1                                      mov r4, r0
008695a0  03 00 58 e1                                      cmp r8, r3
008695a4  01 50 a0 e1                                      mov r5, r1
008695a8  0d 00 00 0a                                      beq #0x8695e4
008695ac  00 30 91 e5                                      ldr r3, [r1]
008695b0  0c 00 88 e2                                      add r0, r8, #0xc
008695b4  0c 10 81 e2                                      add r1, r1, #0xc
008695b8  00 30 88 e5                                      str r3, [r8]
008695bc  04 30 95 e5                                      ldr r3, [r5, #4]
008695c0  04 30 88 e5                                      str r3, [r8, #4]
008695c4  08 30 95 e5                                      ldr r3, [r5, #8]
008695c8  08 30 88 e5                                      str r3, [r8, #8]
008695cc  e1 e9 ff eb                                      bl #0x863d58
008695d0  04 30 94 e5                                      ldr r3, [r4, #4]
008695d4  18 30 83 e2                                      add r3, r3, #0x18
008695d8  04 30 84 e5                                      str r3, [r4, #4]
008695dc  14 d0 8d e2                                      add sp, sp, #0x14
008695e0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008695e4  00 20 90 e5                                      ldr r2, [r0]
008695e8  aa 3a 0a e3                                      movw r3, #0xaaaa
008695ec  03 36 83 e1                                      orr r3, r3, r3, lsl #12
008695f0  08 20 62 e0                                      rsb r2, r2, r8
008695f4  c2 21 a0 e1                                      asr r2, r2, #3
008695f8  02 11 82 e0                                      add r1, r2, r2, lsl #2
008695fc  01 12 81 e0                                      add r1, r1, r1, lsl #4
00869600  01 14 81 e0                                      add r1, r1, r1, lsl #8
00869604  01 18 81 e0                                      add r1, r1, r1, lsl #16
00869608  81 20 82 e0                                      add r2, r2, r1, lsl #1
0086960c  01 00 52 e3                                      cmp r2, #1
00869610  02 10 82 20                                      addhs r1, r2, r2
00869614  01 10 82 32                                      addlo r1, r2, #1
00869618  03 00 51 e1                                      cmp r1, r3
0086961c  26 00 00 9a                                      bls #0x8696bc
00869620  0f 70 e0 e3                                      mvn r7, #0xf
00869624  00 10 a0 e3                                      mov r1, #0
00869628  07 00 a0 e1                                      mov r0, r7
0086962c  05 9c ea eb                                      bl #0x310648
00869630  00 60 a0 e1                                      mov r6, r0
00869634  08 10 a0 e1                                      mov r1, r8
00869638  00 c0 a0 e3                                      mov ip, #0
0086963c  00 00 94 e5                                      ldr r0, [r4]
00869640  06 20 a0 e1                                      mov r2, r6
00869644  0c 30 8d e2                                      add r3, sp, #0xc
00869648  00 c0 8d e5                                      str ip, [sp]
0086964c  00 ea ff eb                                      bl #0x863e54
00869650  00 20 95 e5                                      ldr r2, [r5]
00869654  00 30 a0 e1                                      mov r3, r0
00869658  0c 10 85 e2                                      add r1, r5, #0xc
0086965c  00 20 83 e5                                      str r2, [r3]
00869660  04 20 95 e5                                      ldr r2, [r5, #4]
00869664  0c 00 80 e2                                      add r0, r0, #0xc
00869668  18 80 83 e2                                      add r8, r3, #0x18
0086966c  04 20 83 e5                                      str r2, [r3, #4]
00869670  08 20 95 e5                                      ldr r2, [r5, #8]
00869674  08 20 83 e5                                      str r2, [r3, #8]
00869678  b6 e9 ff eb                                      bl #0x863d58
0086967c  04 50 94 e5                                      ldr r5, [r4, #4]
00869680  00 a0 94 e5                                      ldr sl, [r4]
00869684  0a 00 55 e1                                      cmp r5, sl
00869688  05 00 00 0a                                      beq #0x8696a4
0086968c  18 50 45 e2                                      sub r5, r5, #0x18
00869690  05 00 a0 e1                                      mov r0, r5
00869694  75 e8 ff eb                                      bl #0x863870
00869698  05 00 5a e1                                      cmp sl, r5
0086969c  fa ff ff 1a                                      bne #0x86968c
008696a0  00 a0 94 e5                                      ldr sl, [r4]
008696a4  0a 00 a0 e1                                      mov r0, sl
008696a8  07 70 86 e0                                      add r7, r6, r7
008696ac  64 9b ea eb                                      bl #0x310444
008696b0  08 70 84 e5                                      str r7, [r4, #8]
008696b4  40 01 84 e8                                      stm r4, {r6, r8}
008696b8  c7 ff ff ea                                      b #0x8695dc
008696bc  01 00 52 e1                                      cmp r2, r1
008696c0  d6 ff ff 8a                                      bhi #0x869620
008696c4  18 70 a0 e3                                      mov r7, #0x18
008696c8  97 01 07 e0                                      mul r7, r7, r1
008696cc  d4 ff ff ea                                      b #0x869624

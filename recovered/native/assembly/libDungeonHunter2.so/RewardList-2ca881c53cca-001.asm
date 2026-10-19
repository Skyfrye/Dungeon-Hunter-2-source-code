; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004828f0, declared_size=48, range_size=48, mode=arm
; class-group: RewardList
; alias: _ZN10RewardList8SetOwnerEP9Character
; demangled: RewardList::SetOwner(Character*)
; decoder-mode: arm
004828f0  00 30 90 e5                                      ldr r3, [r0]
004828f4  00 00 53 e3                                      cmp r3, #0
004828f8  1e ff 2f d1                                      bxle lr
004828fc  00 30 a0 e3                                      mov r3, #0
00482900  04 20 90 e5                                      ldr r2, [r0, #4]
00482904  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
00482908  01 30 83 e2                                      add r3, r3, #1
0048290c  10 10 82 e5                                      str r1, [r2, #0x10]
00482910  00 20 90 e5                                      ldr r2, [r0]
00482914  03 00 52 e1                                      cmp r2, r3
00482918  f8 ff ff ca                                      bgt #0x482900
0048291c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482920, declared_size=88, range_size=88, mode=arm
; class-group: RewardList
; alias: _ZN10RewardList4GiveEv
; demangled: RewardList::Give()
; decoder-mode: arm
00482920  70 40 2d e9                                      push {r4, r5, r6, lr}
00482924  00 30 90 e5                                      ldr r3, [r0]
00482928  00 50 a0 e1                                      mov r5, r0
0048292c  00 00 53 e3                                      cmp r3, #0
00482930  0e 00 00 da                                      ble #0x482970
00482934  00 40 a0 e3                                      mov r4, #0
00482938  02 00 00 ea                                      b #0x482948
0048293c  00 30 95 e5                                      ldr r3, [r5]
00482940  04 00 53 e1                                      cmp r3, r4
00482944  09 00 00 da                                      ble #0x482970
00482948  04 30 95 e5                                      ldr r3, [r5, #4]
0048294c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00482950  01 40 84 e2                                      add r4, r4, #1
00482954  03 00 a0 e1                                      mov r0, r3
00482958  00 30 93 e5                                      ldr r3, [r3]
0048295c  0f e0 a0 e1                                      mov lr, pc
00482960  08 f0 93 e5                                      ldr pc, [r3, #8]
00482964  00 00 50 e3                                      cmp r0, #0
00482968  f3 ff ff 1a                                      bne #0x48293c
0048296c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00482970  01 00 a0 e3                                      mov r0, #1
00482974  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00482978, declared_size=68, range_size=68, mode=arm
; class-group: RewardList
; alias: _ZN10RewardList7CompileEv
; demangled: RewardList::Compile()
; decoder-mode: arm
00482978  70 40 2d e9                                      push {r4, r5, r6, lr}
0048297c  00 30 90 e5                                      ldr r3, [r0]
00482980  00 50 a0 e1                                      mov r5, r0
00482984  00 00 53 e3                                      cmp r3, #0
00482988  0a 00 00 da                                      ble #0x4829b8
0048298c  00 40 a0 e3                                      mov r4, #0
00482990  04 30 95 e5                                      ldr r3, [r5, #4]
00482994  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00482998  01 40 84 e2                                      add r4, r4, #1
0048299c  03 00 a0 e1                                      mov r0, r3
004829a0  00 30 93 e5                                      ldr r3, [r3]
004829a4  0f e0 a0 e1                                      mov lr, pc
004829a8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004829ac  00 30 95 e5                                      ldr r3, [r5]
004829b0  04 00 53 e1                                      cmp r3, r4
004829b4  f5 ff ff ca                                      bgt #0x482990
004829b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004829bc, declared_size=76, range_size=76, mode=arm
; class-group: RewardList
; alias: _ZNK10RewardList38DBG_TraceDetailedRewardListInformationEP7__sFILE
; demangled: RewardList::DBG_TraceDetailedRewardListInformation(__sFILE*) const
; decoder-mode: arm
004829bc  70 40 2d e9                                      push {r4, r5, r6, lr}
004829c0  00 30 90 e5                                      ldr r3, [r0]
004829c4  00 50 a0 e1                                      mov r5, r0
004829c8  01 60 a0 e1                                      mov r6, r1
004829cc  00 00 53 e3                                      cmp r3, #0
004829d0  0b 00 00 da                                      ble #0x482a04
004829d4  00 40 a0 e3                                      mov r4, #0
004829d8  04 30 95 e5                                      ldr r3, [r5, #4]
004829dc  06 10 a0 e1                                      mov r1, r6
004829e0  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
004829e4  01 40 84 e2                                      add r4, r4, #1
004829e8  03 00 a0 e1                                      mov r0, r3
004829ec  00 30 93 e5                                      ldr r3, [r3]
004829f0  0f e0 a0 e1                                      mov lr, pc
004829f4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
004829f8  00 30 95 e5                                      ldr r3, [r5]
004829fc  04 00 53 e1                                      cmp r3, r4
00482a00  f4 ff ff ca                                      bgt #0x4829d8
00482a04  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00482b0c, declared_size=64, range_size=64, mode=arm
; class-group: RewardList
; alias: _ZN10RewardListC1Ev
; demangled: RewardList::RewardList()
; decoder-mode: arm
00482b0c  70 40 2d e9                                      push {r4, r5, r6, lr}
00482b10  08 30 80 e2                                      add r3, r0, #8
00482b14  00 40 a0 e1                                      mov r4, r0
00482b18  00 50 a0 e3                                      mov r5, #0
00482b1c  03 00 a0 e1                                      mov r0, r3
00482b20  18 30 84 e5                                      str r3, [r4, #0x18]
00482b24  1c 30 84 e5                                      str r3, [r4, #0x1c]
00482b28  00 50 84 e5                                      str r5, [r4]
00482b2c  04 50 84 e5                                      str r5, [r4, #4]
00482b30  10 10 a0 e3                                      mov r1, #0x10
00482b34  d0 3a fa eb                                      bl #0x31167c
00482b38  18 30 94 e5                                      ldr r3, [r4, #0x18]
00482b3c  04 00 a0 e1                                      mov r0, r4
00482b40  00 50 c3 e5                                      strb r5, [r3]
00482b44  20 50 84 e5                                      str r5, [r4, #0x20]
00482b48  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00482b4c, declared_size=64, range_size=64, mode=arm
; class-group: RewardList
; alias: _ZN10RewardListC2Ev
; demangled: RewardList::RewardList()
; decoder-mode: arm
00482b4c  70 40 2d e9                                      push {r4, r5, r6, lr}
00482b50  08 30 80 e2                                      add r3, r0, #8
00482b54  00 40 a0 e1                                      mov r4, r0
00482b58  00 50 a0 e3                                      mov r5, #0
00482b5c  03 00 a0 e1                                      mov r0, r3
00482b60  18 30 84 e5                                      str r3, [r4, #0x18]
00482b64  1c 30 84 e5                                      str r3, [r4, #0x1c]
00482b68  00 50 84 e5                                      str r5, [r4]
00482b6c  04 50 84 e5                                      str r5, [r4, #4]
00482b70  10 10 a0 e3                                      mov r1, #0x10
00482b74  c0 3a fa eb                                      bl #0x31167c
00482b78  18 30 94 e5                                      ldr r3, [r4, #0x18]
00482b7c  04 00 a0 e1                                      mov r0, r4
00482b80  00 50 c3 e5                                      strb r5, [r3]
00482b84  20 50 84 e5                                      str r5, [r4, #0x20]
00482b88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00482ba8, declared_size=124, range_size=124, mode=arm
; class-group: RewardList
; alias: _ZN10RewardListD1Ev
; demangled: RewardList::~RewardList()
; decoder-mode: arm
00482ba8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00482bac  00 20 90 e5                                      ldr r2, [r0]
00482bb0  00 60 a0 e1                                      mov r6, r0
00482bb4  00 00 52 e3                                      cmp r2, #0
00482bb8  04 50 90 d5                                      ldrle r5, [r0, #4]
00482bbc  0e 00 00 da                                      ble #0x482bfc
00482bc0  04 50 90 e5                                      ldr r5, [r0, #4]
00482bc4  00 40 a0 e3                                      mov r4, #0
00482bc8  04 70 a0 e1                                      mov r7, r4
00482bcc  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
00482bd0  00 00 53 e3                                      cmp r3, #0
00482bd4  05 00 00 0a                                      beq #0x482bf0
00482bd8  03 00 a0 e1                                      mov r0, r3
00482bdc  00 30 93 e5                                      ldr r3, [r3]
00482be0  0f e0 a0 e1                                      mov lr, pc
00482be4  04 f0 93 e5                                      ldr pc, [r3, #4]
00482be8  04 71 85 e7                                      str r7, [r5, r4, lsl #2]
00482bec  24 00 96 e8                                      ldm r6, {r2, r5}
00482bf0  01 40 84 e2                                      add r4, r4, #1
00482bf4  04 00 52 e1                                      cmp r2, r4
00482bf8  f3 ff ff ca                                      bgt #0x482bcc
00482bfc  00 00 55 e3                                      cmp r5, #0
00482c00  03 00 00 0a                                      beq #0x482c14
00482c04  05 00 a0 e1                                      mov r0, r5
00482c08  0c 36 fa eb                                      bl #0x310440
00482c0c  00 30 a0 e3                                      mov r3, #0
00482c10  04 30 86 e5                                      str r3, [r6, #4]
00482c14  08 00 86 e2                                      add r0, r6, #8
00482c18  63 43 fa eb                                      bl #0x3139ac
00482c1c  06 00 a0 e1                                      mov r0, r6
00482c20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00482c24, declared_size=124, range_size=124, mode=arm
; class-group: RewardList
; alias: _ZN10RewardListD2Ev
; demangled: RewardList::~RewardList()
; decoder-mode: arm
00482c24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00482c28  00 20 90 e5                                      ldr r2, [r0]
00482c2c  00 60 a0 e1                                      mov r6, r0
00482c30  00 00 52 e3                                      cmp r2, #0
00482c34  04 50 90 d5                                      ldrle r5, [r0, #4]
00482c38  0e 00 00 da                                      ble #0x482c78
00482c3c  04 50 90 e5                                      ldr r5, [r0, #4]
00482c40  00 40 a0 e3                                      mov r4, #0
00482c44  04 70 a0 e1                                      mov r7, r4
00482c48  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
00482c4c  00 00 53 e3                                      cmp r3, #0
00482c50  05 00 00 0a                                      beq #0x482c6c
00482c54  03 00 a0 e1                                      mov r0, r3
00482c58  00 30 93 e5                                      ldr r3, [r3]
00482c5c  0f e0 a0 e1                                      mov lr, pc
00482c60  04 f0 93 e5                                      ldr pc, [r3, #4]
00482c64  04 71 85 e7                                      str r7, [r5, r4, lsl #2]
00482c68  24 00 96 e8                                      ldm r6, {r2, r5}
00482c6c  01 40 84 e2                                      add r4, r4, #1
00482c70  04 00 52 e1                                      cmp r2, r4
00482c74  f3 ff ff ca                                      bgt #0x482c48
00482c78  00 00 55 e3                                      cmp r5, #0
00482c7c  03 00 00 0a                                      beq #0x482c90
00482c80  05 00 a0 e1                                      mov r0, r5
00482c84  ed 35 fa eb                                      bl #0x310440
00482c88  00 30 a0 e3                                      mov r3, #0
00482c8c  04 30 86 e5                                      str r3, [r6, #4]
00482c90  08 00 86 e2                                      add r0, r6, #8
00482c94  44 43 fa eb                                      bl #0x3139ac
00482c98  06 00 a0 e1                                      mov r0, r6
00482c9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x004835a0, declared_size=560, range_size=560, mode=arm
; class-group: RewardList
; alias: _ZN10RewardList18CreateRewardStringEv
; demangled: RewardList::CreateRewardString()
; decoder-mode: arm
004835a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004835a4  fc 81 9f e5                                      ldr r8, [pc, #0x1fc]
004835a8  fc 21 9f e5                                      ldr r2, [pc, #0x1fc]
004835ac  44 d0 4d e2                                      sub sp, sp, #0x44
004835b0  08 80 8f e0                                      add r8, pc, r8
004835b4  02 30 98 e7                                      ldr r3, [r8, r2]
004835b8  08 20 8d e5                                      str r2, [sp, #8]
004835bc  00 10 90 e5                                      ldr r1, [r0]
004835c0  00 30 93 e5                                      ldr r3, [r3]
004835c4  00 60 a0 e1                                      mov r6, r0
004835c8  00 00 51 e3                                      cmp r1, #0
004835cc  3c 30 8d e5                                      str r3, [sp, #0x3c]
004835d0  6b 00 00 da                                      ble #0x483784
004835d4  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
004835d8  01 70 a0 e3                                      mov r7, #1
004835dc  08 90 80 e2                                      add sb, r0, #8
004835e0  03 30 8f e0                                      add r3, pc, r3
004835e4  0c 30 8d e5                                      str r3, [sp, #0xc]
004835e8  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
004835ec  00 40 a0 e3                                      mov r4, #0
004835f0  08 b0 a0 e1                                      mov fp, r8
004835f4  03 30 8f e0                                      add r3, pc, r3
004835f8  10 30 8d e5                                      str r3, [sp, #0x10]
004835fc  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
00483600  03 30 8f e0                                      add r3, pc, r3
00483604  14 30 8d e5                                      str r3, [sp, #0x14]
00483608  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
0048360c  03 30 8f e0                                      add r3, pc, r3
00483610  18 30 8d e5                                      str r3, [sp, #0x18]
00483614  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00483618  07 30 83 e0                                      add r3, r3, r7
0048361c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00483620  27 00 00 ea                                      b #0x4836c4
00483624  94 31 9f e5                                      ldr r3, [pc, #0x194]
00483628  14 20 9d e5                                      ldr r2, [sp, #0x14]
0048362c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00483630  03 a0 9b e7                                      ldr sl, [fp, r3]
00483634  34 30 9a e5                                      ldr r3, [sl, #0x34]
00483638  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
0048363c  04 30 8d e5                                      str r3, [sp, #4]
00483640  65 05 01 eb                                      bl #0x4c4bdc
00483644  04 30 9d e5                                      ldr r3, [sp, #4]
00483648  00 10 a0 e1                                      mov r1, r0
0048364c  03 00 a0 e1                                      mov r0, r3
00483650  21 16 02 eb                                      bl #0x508edc
00483654  04 30 96 e5                                      ldr r3, [r6, #4]
00483658  00 20 a0 e1                                      mov r2, r0
0048365c  34 a0 9a e5                                      ldr sl, [sl, #0x34]
00483660  08 00 93 e7                                      ldr r0, [r3, r8]
00483664  04 20 8d e5                                      str r2, [sp, #4]
00483668  81 fc ff eb                                      bl #0x482874
0048366c  05 10 a0 e1                                      mov r1, r5
00483670  00 30 a0 e1                                      mov r3, r0
00483674  04 20 9d e5                                      ldr r2, [sp, #4]
00483678  0a 00 a0 e1                                      mov r0, sl
0048367c  1c 16 02 eb                                      bl #0x508ef4
00483680  00 00 57 e3                                      cmp r7, #0
00483684  03 00 00 1a                                      bne #0x483698
00483688  09 00 a0 e1                                      mov r0, sb
0048368c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00483690  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00483694  5a 34 fa eb                                      bl #0x310804
00483698  38 10 9d e5                                      ldr r1, [sp, #0x38]
0048369c  34 20 9d e5                                      ldr r2, [sp, #0x34]
004836a0  09 00 a0 e1                                      mov r0, sb
004836a4  56 34 fa eb                                      bl #0x310804
004836a8  05 00 a0 e1                                      mov r0, r5
004836ac  be 40 fa eb                                      bl #0x3139ac
004836b0  00 10 96 e5                                      ldr r1, [r6]
004836b4  00 70 a0 e3                                      mov r7, #0
004836b8  01 40 84 e2                                      add r4, r4, #1
004836bc  04 00 51 e1                                      cmp r1, r4
004836c0  1a 00 00 da                                      ble #0x483730
004836c4  04 30 96 e5                                      ldr r3, [r6, #4]
004836c8  04 81 a0 e1                                      lsl r8, r4, #2
004836cc  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
004836d0  08 20 d3 e5                                      ldrb r2, [r3, #8]
004836d4  00 00 52 e3                                      cmp r2, #0
004836d8  f6 ff ff 0a                                      beq #0x4836b8
004836dc  24 50 8d e2                                      add r5, sp, #0x24
004836e0  04 a0 93 e5                                      ldr sl, [r3, #4]
004836e4  05 00 a0 e1                                      mov r0, r5
004836e8  01 10 a0 e3                                      mov r1, #1
004836ec  34 50 8d e5                                      str r5, [sp, #0x34]
004836f0  38 50 8d e5                                      str r5, [sp, #0x38]
004836f4  e0 37 fa eb                                      bl #0x31167c
004836f8  38 30 9d e5                                      ldr r3, [sp, #0x38]
004836fc  00 20 a0 e3                                      mov r2, #0
00483700  00 00 5a e3                                      cmp sl, #0
00483704  34 30 8d e5                                      str r3, [sp, #0x34]
00483708  00 20 c3 e5                                      strb r2, [r3]
0048370c  c4 ff ff 0a                                      beq #0x483624
00483710  01 00 5a e3                                      cmp sl, #1
00483714  df ff ff 1a                                      bne #0x483698
00483718  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0048371c  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00483720  18 10 9d e5                                      ldr r1, [sp, #0x18]
00483724  03 a0 9b e7                                      ldr sl, [fp, r3]
00483728  02 20 8f e0                                      add r2, pc, r2
0048372c  c0 ff ff ea                                      b #0x483634
00483730  00 00 57 e3                                      cmp r7, #0
00483734  0b 80 a0 e1                                      mov r8, fp
00483738  11 00 00 0a                                      beq #0x483784
0048373c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00483740  80 10 9f e5                                      ldr r1, [pc, #0x80]
00483744  80 20 9f e5                                      ldr r2, [pc, #0x80]
00483748  03 30 9b e7                                      ldr r3, [fp, r3]
0048374c  01 10 8f e0                                      add r1, pc, r1
00483750  02 20 8f e0                                      add r2, pc, r2
00483754  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00483758  34 40 93 e5                                      ldr r4, [r3, #0x34]
0048375c  1e 05 01 eb                                      bl #0x4c4bdc
00483760  00 10 a0 e1                                      mov r1, r0
00483764  04 00 a0 e1                                      mov r0, r4
00483768  db 15 02 eb                                      bl #0x508edc
0048376c  00 40 a0 e1                                      mov r4, r0
00483770  b7 29 fa eb                                      bl #0x30de54
00483774  04 10 a0 e1                                      mov r1, r4
00483778  00 20 84 e0                                      add r2, r4, r0
0048377c  09 00 a0 e1                                      mov r0, sb
00483780  96 34 fa eb                                      bl #0x3109e0
00483784  08 20 9d e5                                      ldr r2, [sp, #8]
00483788  02 30 98 e7                                      ldr r3, [r8, r2]
0048378c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00483790  00 30 93 e5                                      ldr r3, [r3]
00483794  03 00 52 e1                                      cmp r2, r3
00483798  01 00 00 1a                                      bne #0x4837a4
0048379c  44 d0 8d e2                                      add sp, sp, #0x44
004837a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004837a4  d9 2a fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004837a8  e0 14 51 00 ac 40 00 00 10 84 44 00 34 b6 43 00  .byte 0xe0, 0x14, 0x51, 0x00, 0xac, 0x40, 0x00, 0x00, 0x10, 0x84, 0x44, 0x00, 0x34, 0xb6, 0x43, 0x00
004837b8  80 af 44 00 1c b6 43 00 f4 37 00 00 38 ae 44 00  .byte 0x80, 0xaf, 0x44, 0x00, 0x1c, 0xb6, 0x43, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x38, 0xae, 0x44, 0x00
004837c8  dc b4 43 00 58 ae 44 00                          .byte 0xdc, 0xb4, 0x43, 0x00, 0x58, 0xae, 0x44, 0x00

; FUNCTION 0x004838fc, declared_size=84, range_size=84, mode=arm
; class-group: RewardList
; alias: _ZN10RewardList17InvalidateCompileEv
; demangled: RewardList::InvalidateCompile()
; decoder-mode: arm
004838fc  48 10 9f e5                                      ldr r1, [pc, #0x48]
00483900  10 40 2d e9                                      push {r4, lr}
00483904  01 10 8f e0                                      add r1, pc, r1
00483908  00 40 a0 e1                                      mov r4, r0
0048390c  01 20 a0 e1                                      mov r2, r1
00483910  08 00 80 e2                                      add r0, r0, #8
00483914  31 34 fa eb                                      bl #0x3109e0
00483918  00 30 94 e5                                      ldr r3, [r4]
0048391c  00 00 53 e3                                      cmp r3, #0
00483920  08 00 00 da                                      ble #0x483948
00483924  00 30 a0 e3                                      mov r3, #0
00483928  03 10 a0 e1                                      mov r1, r3
0048392c  04 20 94 e5                                      ldr r2, [r4, #4]
00483930  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
00483934  01 30 83 e2                                      add r3, r3, #1
00483938  08 10 c2 e5                                      strb r1, [r2, #8]
0048393c  00 20 94 e5                                      ldr r2, [r4]
00483940  03 00 52 e1                                      cmp r2, r3
00483944  f8 ff ff ca                                      bgt #0x48392c
00483948  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048394c  04 7f 44 00                                      .byte 0x04, 0x7f, 0x44, 0x00

; FUNCTION 0x00483950, declared_size=180, range_size=180, mode=arm
; class-group: RewardList
; alias: _ZN10RewardList12AssignPyDataEPN7Structs17v2QuestRewardStubEi
; demangled: RewardList::AssignPyData(Structs::v2QuestRewardStub*, int)
; decoder-mode: arm
00483950  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00483954  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00483958  03 30 8f e0                                      add r3, pc, r3
0048395c  00 40 a0 e1                                      mov r4, r0
00483960  20 10 84 e5                                      str r1, [r4, #0x20]
00483964  01 50 a0 e1                                      mov r5, r1
00483968  08 20 80 e4                                      str r2, [r0], #8
0048396c  03 10 a0 e1                                      mov r1, r3
00483970  03 20 a0 e1                                      mov r2, r3
00483974  19 34 fa eb                                      bl #0x3109e0
00483978  00 00 94 e5                                      ldr r0, [r4]
0048397c  00 00 50 e3                                      cmp r0, #0
00483980  1c 00 00 da                                      ble #0x4839f8
00483984  00 01 a0 e1                                      lsl r0, r0, #2
00483988  00 10 a0 e3                                      mov r1, #0
0048398c  f6 32 fa eb                                      bl #0x31056c
00483990  00 30 94 e5                                      ldr r3, [r4]
00483994  00 70 a0 e1                                      mov r7, r0
00483998  04 00 84 e5                                      str r0, [r4, #4]
0048399c  00 00 53 e3                                      cmp r3, #0
004839a0  14 00 00 da                                      ble #0x4839f8
004839a4  54 80 9f e5                                      ldr r8, [pc, #0x54]
004839a8  00 60 a0 e3                                      mov r6, #0
004839ac  08 80 8f e0                                      add r8, pc, r8
004839b0  00 00 00 ea                                      b #0x4839b8
004839b4  04 70 94 e5                                      ldr r7, [r4, #4]
004839b8  04 30 95 e5                                      ldr r3, [r5, #4]
004839bc  0f e0 a0 e1                                      mov lr, pc
004839c0  03 f1 98 e7                                      ldr pc, [r8, r3, lsl #2]
004839c4  06 01 87 e7                                      str r0, [r7, r6, lsl #2]
004839c8  04 30 94 e5                                      ldr r3, [r4, #4]
004839cc  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
004839d0  0c 50 83 e5                                      str r5, [r3, #0xc]
004839d4  04 30 94 e5                                      ldr r3, [r4, #4]
004839d8  04 20 95 e5                                      ldr r2, [r5, #4]
004839dc  10 50 85 e2                                      add r5, r5, #0x10
004839e0  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
004839e4  01 60 86 e2                                      add r6, r6, #1
004839e8  04 20 83 e5                                      str r2, [r3, #4]
004839ec  00 30 94 e5                                      ldr r3, [r4]
004839f0  06 00 53 e1                                      cmp r3, r6
004839f4  ee ff ff ca                                      bgt #0x4839b4
004839f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004839fc  b0 7e 44 00 14 61 4e 00                          .byte 0xb0, 0x7e, 0x44, 0x00, 0x14, 0x61, 0x4e, 0x00

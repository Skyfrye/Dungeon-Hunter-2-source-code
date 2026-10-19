; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c891c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveCharProps
; alias: _ZN7Structs26v2QuestRewardGiveCharPropsD2Ev
; demangled: Structs::v2QuestRewardGiveCharProps::~v2QuestRewardGiveCharProps()
; decoder-mode: arm
004c891c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8920  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8924  10 40 2d e9                                      push {r4, lr}
004c8928  03 30 8f e0                                      add r3, pc, r3
004c892c  02 20 93 e7                                      ldr r2, [r3, r2]
004c8930  00 40 a0 e1                                      mov r4, r0
004c8934  08 20 82 e2                                      add r2, r2, #8
004c8938  00 20 80 e5                                      str r2, [r0]
004c893c  9f ff ff eb                                      bl #0x4c87c0
004c8940  04 00 a0 e1                                      mov r0, r4
004c8944  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8948  68 c1 4c 00 50 43 00 00                          .byte 0x68, 0xc1, 0x4c, 0x00, 0x50, 0x43, 0x00, 0x00

; FUNCTION 0x004c8950, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveCharProps
; alias: _ZN7Structs26v2QuestRewardGiveCharPropsD1Ev
; demangled: Structs::v2QuestRewardGiveCharProps::~v2QuestRewardGiveCharProps()
; decoder-mode: arm
004c8950  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8954  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8958  10 40 2d e9                                      push {r4, lr}
004c895c  03 30 8f e0                                      add r3, pc, r3
004c8960  02 20 93 e7                                      ldr r2, [r3, r2]
004c8964  00 40 a0 e1                                      mov r4, r0
004c8968  08 20 82 e2                                      add r2, r2, #8
004c896c  00 20 80 e5                                      str r2, [r0]
004c8970  92 ff ff eb                                      bl #0x4c87c0
004c8974  04 00 a0 e1                                      mov r0, r4
004c8978  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c897c  34 c1 4c 00 50 43 00 00                          .byte 0x34, 0xc1, 0x4c, 0x00, 0x50, 0x43, 0x00, 0x00

; FUNCTION 0x004c8984, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestRewardGiveCharProps
; alias: _ZN7Structs26v2QuestRewardGiveCharProps8finalizeEv
; demangled: Structs::v2QuestRewardGiveCharProps::finalize()
; decoder-mode: arm
004c8984  8f ff ff ea                                      b #0x4c87c8

; FUNCTION 0x004cd8bc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestRewardGiveCharProps
; alias: _ZN7Structs26v2QuestRewardGiveCharPropsD0Ev
; demangled: Structs::v2QuestRewardGiveCharProps::~v2QuestRewardGiveCharProps()
; decoder-mode: arm
004cd8bc  10 40 2d e9                                      push {r4, lr}
004cd8c0  00 40 a0 e1                                      mov r4, r0
004cd8c4  21 ec ff eb                                      bl #0x4c8950
004cd8c8  04 00 a0 e1                                      mov r0, r4
004cd8cc  db 0a f9 eb                                      bl #0x310440
004cd8d0  04 00 a0 e1                                      mov r0, r4
004cd8d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505614, declared_size=212, range_size=212, mode=arm
; class-group: Structs::v2QuestRewardGiveCharProps
; alias: _ZN7Structs26v2QuestRewardGiveCharProps4readEP11IStreamBase
; demangled: Structs::v2QuestRewardGiveCharProps::read(IStreamBase*)
; decoder-mode: arm
00505614  30 40 2d e9                                      push {r4, r5, lr}
00505618  00 40 a0 e1                                      mov r4, r0
0050561c  0c d0 4d e2                                      sub sp, sp, #0xc
00505620  01 50 a0 e1                                      mov r5, r1
00505624  74 ff ff eb                                      bl #0x5053fc
00505628  05 00 a0 e1                                      mov r0, r5
0050562c  08 10 84 e2                                      add r1, r4, #8
00505630  96 4e fd eb                                      bl #0x459090
00505634  01 30 a0 e3                                      mov r3, #1
00505638  00 00 53 e3                                      cmp r3, #0
0050563c  04 30 8d e5                                      str r3, [sp, #4]
00505640  0f 00 00 1a                                      bne #0x505684
00505644  09 30 84 e2                                      add r3, r4, #9
00505648  0a 20 84 e2                                      add r2, r4, #0xa
0050564c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505650  01 10 53 e5                                      ldrb r1, [r3, #-1]
00505654  02 00 53 e1                                      cmp r3, r2
00505658  01 10 20 e0                                      eor r1, r0, r1
0050565c  01 10 43 e5                                      strb r1, [r3, #-1]
00505660  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505664  00 10 21 e0                                      eor r1, r1, r0
00505668  01 10 c2 e5                                      strb r1, [r2, #1]
0050566c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00505670  01 20 42 e2                                      sub r2, r2, #1
00505674  00 10 21 e0                                      eor r1, r1, r0
00505678  01 10 43 e5                                      strb r1, [r3, #-1]
0050567c  01 30 83 e2                                      add r3, r3, #1
00505680  f1 ff ff 3a                                      blo #0x50564c
00505684  05 00 a0 e1                                      mov r0, r5
00505688  0c 10 84 e2                                      add r1, r4, #0xc
0050568c  7f 4e fd eb                                      bl #0x459090
00505690  01 30 a0 e3                                      mov r3, #1
00505694  00 00 53 e3                                      cmp r3, #0
00505698  04 30 8d e5                                      str r3, [sp, #4]
0050569c  0f 00 00 1a                                      bne #0x5056e0
005056a0  0e 30 84 e2                                      add r3, r4, #0xe
005056a4  0d 40 84 e2                                      add r4, r4, #0xd
005056a8  01 10 d3 e5                                      ldrb r1, [r3, #1]
005056ac  01 20 54 e5                                      ldrb r2, [r4, #-1]
005056b0  04 00 53 e1                                      cmp r3, r4
005056b4  02 20 21 e0                                      eor r2, r1, r2
005056b8  01 20 44 e5                                      strb r2, [r4, #-1]
005056bc  01 10 d3 e5                                      ldrb r1, [r3, #1]
005056c0  01 20 22 e0                                      eor r2, r2, r1
005056c4  01 20 c3 e5                                      strb r2, [r3, #1]
005056c8  01 10 54 e5                                      ldrb r1, [r4, #-1]
005056cc  01 30 43 e2                                      sub r3, r3, #1
005056d0  01 20 22 e0                                      eor r2, r2, r1
005056d4  01 20 44 e5                                      strb r2, [r4, #-1]
005056d8  01 40 84 e2                                      add r4, r4, #1
005056dc  f1 ff ff 8a                                      bhi #0x5056a8
005056e0  0c d0 8d e2                                      add sp, sp, #0xc
005056e4  30 80 bd e8                                      pop {r4, r5, pc}

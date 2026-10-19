; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c88b0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveGold
; alias: _ZN7Structs21v2QuestRewardGiveGoldD2Ev
; demangled: Structs::v2QuestRewardGiveGold::~v2QuestRewardGiveGold()
; decoder-mode: arm
004c88b0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c88b4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c88b8  10 40 2d e9                                      push {r4, lr}
004c88bc  03 30 8f e0                                      add r3, pc, r3
004c88c0  02 20 93 e7                                      ldr r2, [r3, r2]
004c88c4  00 40 a0 e1                                      mov r4, r0
004c88c8  08 20 82 e2                                      add r2, r2, #8
004c88cc  00 20 80 e5                                      str r2, [r0]
004c88d0  ba ff ff eb                                      bl #0x4c87c0
004c88d4  04 00 a0 e1                                      mov r0, r4
004c88d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c88dc  d4 c1 4c 00 30 3f 00 00                          .byte 0xd4, 0xc1, 0x4c, 0x00, 0x30, 0x3f, 0x00, 0x00

; FUNCTION 0x004c88e4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveGold
; alias: _ZN7Structs21v2QuestRewardGiveGoldD1Ev
; demangled: Structs::v2QuestRewardGiveGold::~v2QuestRewardGiveGold()
; decoder-mode: arm
004c88e4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c88e8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c88ec  10 40 2d e9                                      push {r4, lr}
004c88f0  03 30 8f e0                                      add r3, pc, r3
004c88f4  02 20 93 e7                                      ldr r2, [r3, r2]
004c88f8  00 40 a0 e1                                      mov r4, r0
004c88fc  08 20 82 e2                                      add r2, r2, #8
004c8900  00 20 80 e5                                      str r2, [r0]
004c8904  ad ff ff eb                                      bl #0x4c87c0
004c8908  04 00 a0 e1                                      mov r0, r4
004c890c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8910  a0 c1 4c 00 30 3f 00 00                          .byte 0xa0, 0xc1, 0x4c, 0x00, 0x30, 0x3f, 0x00, 0x00

; FUNCTION 0x004c8918, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestRewardGiveGold
; alias: _ZN7Structs21v2QuestRewardGiveGold8finalizeEv
; demangled: Structs::v2QuestRewardGiveGold::finalize()
; decoder-mode: arm
004c8918  aa ff ff ea                                      b #0x4c87c8

; FUNCTION 0x004cd92c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestRewardGiveGold
; alias: _ZN7Structs21v2QuestRewardGiveGoldD0Ev
; demangled: Structs::v2QuestRewardGiveGold::~v2QuestRewardGiveGold()
; decoder-mode: arm
004cd92c  10 40 2d e9                                      push {r4, lr}
004cd930  00 40 a0 e1                                      mov r4, r0
004cd934  ea eb ff eb                                      bl #0x4c88e4
004cd938  04 00 a0 e1                                      mov r0, r4
004cd93c  bf 0a f9 eb                                      bl #0x310440
004cd940  04 00 a0 e1                                      mov r0, r4
004cd944  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005056f4, declared_size=212, range_size=212, mode=arm
; class-group: Structs::v2QuestRewardGiveGold
; alias: _ZN7Structs21v2QuestRewardGiveGold4readEP11IStreamBase
; demangled: Structs::v2QuestRewardGiveGold::read(IStreamBase*)
; decoder-mode: arm
005056f4  30 40 2d e9                                      push {r4, r5, lr}
005056f8  00 40 a0 e1                                      mov r4, r0
005056fc  0c d0 4d e2                                      sub sp, sp, #0xc
00505700  01 50 a0 e1                                      mov r5, r1
00505704  3c ff ff eb                                      bl #0x5053fc
00505708  05 00 a0 e1                                      mov r0, r5
0050570c  08 10 84 e2                                      add r1, r4, #8
00505710  5e 4e fd eb                                      bl #0x459090
00505714  01 30 a0 e3                                      mov r3, #1
00505718  00 00 53 e3                                      cmp r3, #0
0050571c  04 30 8d e5                                      str r3, [sp, #4]
00505720  0f 00 00 1a                                      bne #0x505764
00505724  09 30 84 e2                                      add r3, r4, #9
00505728  0a 20 84 e2                                      add r2, r4, #0xa
0050572c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505730  01 10 53 e5                                      ldrb r1, [r3, #-1]
00505734  02 00 53 e1                                      cmp r3, r2
00505738  01 10 20 e0                                      eor r1, r0, r1
0050573c  01 10 43 e5                                      strb r1, [r3, #-1]
00505740  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505744  00 10 21 e0                                      eor r1, r1, r0
00505748  01 10 c2 e5                                      strb r1, [r2, #1]
0050574c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00505750  01 20 42 e2                                      sub r2, r2, #1
00505754  00 10 21 e0                                      eor r1, r1, r0
00505758  01 10 43 e5                                      strb r1, [r3, #-1]
0050575c  01 30 83 e2                                      add r3, r3, #1
00505760  f1 ff ff 3a                                      blo #0x50572c
00505764  05 00 a0 e1                                      mov r0, r5
00505768  0c 10 84 e2                                      add r1, r4, #0xc
0050576c  47 4e fd eb                                      bl #0x459090
00505770  01 30 a0 e3                                      mov r3, #1
00505774  00 00 53 e3                                      cmp r3, #0
00505778  04 30 8d e5                                      str r3, [sp, #4]
0050577c  0f 00 00 1a                                      bne #0x5057c0
00505780  0e 30 84 e2                                      add r3, r4, #0xe
00505784  0d 40 84 e2                                      add r4, r4, #0xd
00505788  01 10 d3 e5                                      ldrb r1, [r3, #1]
0050578c  01 20 54 e5                                      ldrb r2, [r4, #-1]
00505790  04 00 53 e1                                      cmp r3, r4
00505794  02 20 21 e0                                      eor r2, r1, r2
00505798  01 20 44 e5                                      strb r2, [r4, #-1]
0050579c  01 10 d3 e5                                      ldrb r1, [r3, #1]
005057a0  01 20 22 e0                                      eor r2, r2, r1
005057a4  01 20 c3 e5                                      strb r2, [r3, #1]
005057a8  01 10 54 e5                                      ldrb r1, [r4, #-1]
005057ac  01 30 43 e2                                      sub r3, r3, #1
005057b0  01 20 22 e0                                      eor r2, r2, r1
005057b4  01 20 44 e5                                      strb r2, [r4, #-1]
005057b8  01 40 84 e2                                      add r4, r4, #1
005057bc  f1 ff ff 8a                                      bhi #0x505788
005057c0  0c d0 8d e2                                      add sp, sp, #0xc
005057c4  30 80 bd e8                                      pop {r4, r5, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c87c0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestReward
; alias: _ZN7Structs13v2QuestRewardD2Ev
; demangled: Structs::v2QuestReward::~v2QuestReward()
; decoder-mode: arm
004c87c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c87c4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestReward
; alias: _ZN7Structs13v2QuestRewardD1Ev
; demangled: Structs::v2QuestReward::~v2QuestReward()
; decoder-mode: arm
004c87c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c87c8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestReward
; alias: _ZN7Structs13v2QuestReward8finalizeEv
; demangled: Structs::v2QuestReward::finalize()
; decoder-mode: arm
004c87c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cd868, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestReward
; alias: _ZN7Structs13v2QuestRewardD0Ev
; demangled: Structs::v2QuestReward::~v2QuestReward()
; decoder-mode: arm
004cd868  10 40 2d e9                                      push {r4, lr}
004cd86c  00 40 a0 e1                                      mov r4, r0
004cd870  d3 eb ff eb                                      bl #0x4c87c4
004cd874  04 00 a0 e1                                      mov r0, r4
004cd878  f0 0a f9 eb                                      bl #0x310440
004cd87c  04 00 a0 e1                                      mov r0, r4
004cd880  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005053fc, declared_size=112, range_size=112, mode=arm
; class-group: Structs::v2QuestReward
; alias: _ZN7Structs13v2QuestReward4readEP11IStreamBase
; demangled: Structs::v2QuestReward::read(IStreamBase*)
; decoder-mode: arm
005053fc  10 40 2d e9                                      push {r4, lr}
00505400  00 40 a0 e1                                      mov r4, r0
00505404  08 d0 4d e2                                      sub sp, sp, #8
00505408  01 00 a0 e1                                      mov r0, r1
0050540c  04 10 84 e2                                      add r1, r4, #4
00505410  1e 4f fd eb                                      bl #0x459090
00505414  01 30 a0 e3                                      mov r3, #1
00505418  00 00 53 e3                                      cmp r3, #0
0050541c  04 30 8d e5                                      str r3, [sp, #4]
00505420  0f 00 00 1a                                      bne #0x505464
00505424  06 30 84 e2                                      add r3, r4, #6
00505428  05 40 84 e2                                      add r4, r4, #5
0050542c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505430  01 20 54 e5                                      ldrb r2, [r4, #-1]
00505434  03 00 54 e1                                      cmp r4, r3
00505438  02 20 21 e0                                      eor r2, r1, r2
0050543c  01 20 44 e5                                      strb r2, [r4, #-1]
00505440  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505444  01 20 22 e0                                      eor r2, r2, r1
00505448  01 20 c3 e5                                      strb r2, [r3, #1]
0050544c  01 10 54 e5                                      ldrb r1, [r4, #-1]
00505450  01 30 43 e2                                      sub r3, r3, #1
00505454  01 20 22 e0                                      eor r2, r2, r1
00505458  01 20 44 e5                                      strb r2, [r4, #-1]
0050545c  01 40 84 e2                                      add r4, r4, #1
00505460  f1 ff ff 3a                                      blo #0x50542c
00505464  08 d0 8d e2                                      add sp, sp, #8
00505468  10 80 bd e8                                      pop {r4, pc}

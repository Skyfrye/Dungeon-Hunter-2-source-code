; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8844, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveXP
; alias: _ZN7Structs19v2QuestRewardGiveXPD2Ev
; demangled: Structs::v2QuestRewardGiveXP::~v2QuestRewardGiveXP()
; decoder-mode: arm
004c8844  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8848  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c884c  10 40 2d e9                                      push {r4, lr}
004c8850  03 30 8f e0                                      add r3, pc, r3
004c8854  02 20 93 e7                                      ldr r2, [r3, r2]
004c8858  00 40 a0 e1                                      mov r4, r0
004c885c  08 20 82 e2                                      add r2, r2, #8
004c8860  00 20 80 e5                                      str r2, [r0]
004c8864  d5 ff ff eb                                      bl #0x4c87c0
004c8868  04 00 a0 e1                                      mov r0, r4
004c886c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8870  40 c2 4c 00 98 4b 00 00                          .byte 0x40, 0xc2, 0x4c, 0x00, 0x98, 0x4b, 0x00, 0x00

; FUNCTION 0x004c8878, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveXP
; alias: _ZN7Structs19v2QuestRewardGiveXPD1Ev
; demangled: Structs::v2QuestRewardGiveXP::~v2QuestRewardGiveXP()
; decoder-mode: arm
004c8878  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c887c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8880  10 40 2d e9                                      push {r4, lr}
004c8884  03 30 8f e0                                      add r3, pc, r3
004c8888  02 20 93 e7                                      ldr r2, [r3, r2]
004c888c  00 40 a0 e1                                      mov r4, r0
004c8890  08 20 82 e2                                      add r2, r2, #8
004c8894  00 20 80 e5                                      str r2, [r0]
004c8898  c8 ff ff eb                                      bl #0x4c87c0
004c889c  04 00 a0 e1                                      mov r0, r4
004c88a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c88a4  0c c2 4c 00 98 4b 00 00                          .byte 0x0c, 0xc2, 0x4c, 0x00, 0x98, 0x4b, 0x00, 0x00

; FUNCTION 0x004c88ac, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestRewardGiveXP
; alias: _ZN7Structs19v2QuestRewardGiveXP8finalizeEv
; demangled: Structs::v2QuestRewardGiveXP::finalize()
; decoder-mode: arm
004c88ac  c5 ff ff ea                                      b #0x4c87c8

; FUNCTION 0x004cd948, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestRewardGiveXP
; alias: _ZN7Structs19v2QuestRewardGiveXPD0Ev
; demangled: Structs::v2QuestRewardGiveXP::~v2QuestRewardGiveXP()
; decoder-mode: arm
004cd948  10 40 2d e9                                      push {r4, lr}
004cd94c  00 40 a0 e1                                      mov r4, r0
004cd950  c8 eb ff eb                                      bl #0x4c8878
004cd954  04 00 a0 e1                                      mov r0, r4
004cd958  b8 0a f9 eb                                      bl #0x310440
004cd95c  04 00 a0 e1                                      mov r0, r4
004cd960  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005057c8, declared_size=212, range_size=212, mode=arm
; class-group: Structs::v2QuestRewardGiveXP
; alias: _ZN7Structs19v2QuestRewardGiveXP4readEP11IStreamBase
; demangled: Structs::v2QuestRewardGiveXP::read(IStreamBase*)
; decoder-mode: arm
005057c8  30 40 2d e9                                      push {r4, r5, lr}
005057cc  00 40 a0 e1                                      mov r4, r0
005057d0  0c d0 4d e2                                      sub sp, sp, #0xc
005057d4  01 50 a0 e1                                      mov r5, r1
005057d8  07 ff ff eb                                      bl #0x5053fc
005057dc  05 00 a0 e1                                      mov r0, r5
005057e0  08 10 84 e2                                      add r1, r4, #8
005057e4  29 4e fd eb                                      bl #0x459090
005057e8  01 30 a0 e3                                      mov r3, #1
005057ec  00 00 53 e3                                      cmp r3, #0
005057f0  04 30 8d e5                                      str r3, [sp, #4]
005057f4  0f 00 00 1a                                      bne #0x505838
005057f8  09 30 84 e2                                      add r3, r4, #9
005057fc  0a 20 84 e2                                      add r2, r4, #0xa
00505800  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505804  01 10 53 e5                                      ldrb r1, [r3, #-1]
00505808  02 00 53 e1                                      cmp r3, r2
0050580c  01 10 20 e0                                      eor r1, r0, r1
00505810  01 10 43 e5                                      strb r1, [r3, #-1]
00505814  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505818  00 10 21 e0                                      eor r1, r1, r0
0050581c  01 10 c2 e5                                      strb r1, [r2, #1]
00505820  01 00 53 e5                                      ldrb r0, [r3, #-1]
00505824  01 20 42 e2                                      sub r2, r2, #1
00505828  00 10 21 e0                                      eor r1, r1, r0
0050582c  01 10 43 e5                                      strb r1, [r3, #-1]
00505830  01 30 83 e2                                      add r3, r3, #1
00505834  f1 ff ff 3a                                      blo #0x505800
00505838  05 00 a0 e1                                      mov r0, r5
0050583c  0c 10 84 e2                                      add r1, r4, #0xc
00505840  12 4e fd eb                                      bl #0x459090
00505844  01 30 a0 e3                                      mov r3, #1
00505848  00 00 53 e3                                      cmp r3, #0
0050584c  04 30 8d e5                                      str r3, [sp, #4]
00505850  0f 00 00 1a                                      bne #0x505894
00505854  0e 30 84 e2                                      add r3, r4, #0xe
00505858  0d 40 84 e2                                      add r4, r4, #0xd
0050585c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505860  01 20 54 e5                                      ldrb r2, [r4, #-1]
00505864  04 00 53 e1                                      cmp r3, r4
00505868  02 20 21 e0                                      eor r2, r1, r2
0050586c  01 20 44 e5                                      strb r2, [r4, #-1]
00505870  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505874  01 20 22 e0                                      eor r2, r2, r1
00505878  01 20 c3 e5                                      strb r2, [r3, #1]
0050587c  01 10 54 e5                                      ldrb r1, [r4, #-1]
00505880  01 30 43 e2                                      sub r3, r3, #1
00505884  01 20 22 e0                                      eor r2, r2, r1
00505888  01 20 44 e5                                      strb r2, [r4, #-1]
0050588c  01 40 84 e2                                      add r4, r4, #1
00505890  f1 ff ff 8a                                      bhi #0x50585c
00505894  0c d0 8d e2                                      add sp, sp, #0xc
00505898  30 80 bd e8                                      pop {r4, r5, pc}

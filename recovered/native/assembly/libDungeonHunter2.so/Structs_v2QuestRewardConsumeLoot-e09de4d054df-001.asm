; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8b38, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardConsumeLoot
; alias: _ZN7Structs24v2QuestRewardConsumeLootD2Ev
; demangled: Structs::v2QuestRewardConsumeLoot::~v2QuestRewardConsumeLoot()
; decoder-mode: arm
004c8b38  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8b3c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8b40  10 40 2d e9                                      push {r4, lr}
004c8b44  03 30 8f e0                                      add r3, pc, r3
004c8b48  02 20 93 e7                                      ldr r2, [r3, r2]
004c8b4c  00 40 a0 e1                                      mov r4, r0
004c8b50  08 20 82 e2                                      add r2, r2, #8
004c8b54  00 20 80 e5                                      str r2, [r0]
004c8b58  18 ff ff eb                                      bl #0x4c87c0
004c8b5c  04 00 a0 e1                                      mov r0, r4
004c8b60  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8b64  4c bf 4c 00 80 3a 00 00                          .byte 0x4c, 0xbf, 0x4c, 0x00, 0x80, 0x3a, 0x00, 0x00

; FUNCTION 0x004c8b6c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardConsumeLoot
; alias: _ZN7Structs24v2QuestRewardConsumeLootD1Ev
; demangled: Structs::v2QuestRewardConsumeLoot::~v2QuestRewardConsumeLoot()
; decoder-mode: arm
004c8b6c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8b70  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8b74  10 40 2d e9                                      push {r4, lr}
004c8b78  03 30 8f e0                                      add r3, pc, r3
004c8b7c  02 20 93 e7                                      ldr r2, [r3, r2]
004c8b80  00 40 a0 e1                                      mov r4, r0
004c8b84  08 20 82 e2                                      add r2, r2, #8
004c8b88  00 20 80 e5                                      str r2, [r0]
004c8b8c  0b ff ff eb                                      bl #0x4c87c0
004c8b90  04 00 a0 e1                                      mov r0, r4
004c8b94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8b98  18 bf 4c 00 80 3a 00 00                          .byte 0x18, 0xbf, 0x4c, 0x00, 0x80, 0x3a, 0x00, 0x00

; FUNCTION 0x004c8ba0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestRewardConsumeLoot
; alias: _ZN7Structs24v2QuestRewardConsumeLoot8finalizeEv
; demangled: Structs::v2QuestRewardConsumeLoot::finalize()
; decoder-mode: arm
004c8ba0  08 ff ff ea                                      b #0x4c87c8

; FUNCTION 0x004cd884, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestRewardConsumeLoot
; alias: _ZN7Structs24v2QuestRewardConsumeLootD0Ev
; demangled: Structs::v2QuestRewardConsumeLoot::~v2QuestRewardConsumeLoot()
; decoder-mode: arm
004cd884  10 40 2d e9                                      push {r4, lr}
004cd888  00 40 a0 e1                                      mov r4, r0
004cd88c  b6 ec ff eb                                      bl #0x4c8b6c
004cd890  04 00 a0 e1                                      mov r0, r4
004cd894  e9 0a f9 eb                                      bl #0x310440
004cd898  04 00 a0 e1                                      mov r0, r4
004cd89c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0050546c, declared_size=212, range_size=212, mode=arm
; class-group: Structs::v2QuestRewardConsumeLoot
; alias: _ZN7Structs24v2QuestRewardConsumeLoot4readEP11IStreamBase
; demangled: Structs::v2QuestRewardConsumeLoot::read(IStreamBase*)
; decoder-mode: arm
0050546c  30 40 2d e9                                      push {r4, r5, lr}
00505470  00 40 a0 e1                                      mov r4, r0
00505474  0c d0 4d e2                                      sub sp, sp, #0xc
00505478  01 50 a0 e1                                      mov r5, r1
0050547c  de ff ff eb                                      bl #0x5053fc
00505480  05 00 a0 e1                                      mov r0, r5
00505484  08 10 84 e2                                      add r1, r4, #8
00505488  00 4f fd eb                                      bl #0x459090
0050548c  01 30 a0 e3                                      mov r3, #1
00505490  00 00 53 e3                                      cmp r3, #0
00505494  04 30 8d e5                                      str r3, [sp, #4]
00505498  0f 00 00 1a                                      bne #0x5054dc
0050549c  09 30 84 e2                                      add r3, r4, #9
005054a0  0a 20 84 e2                                      add r2, r4, #0xa
005054a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005054a8  01 10 53 e5                                      ldrb r1, [r3, #-1]
005054ac  02 00 53 e1                                      cmp r3, r2
005054b0  01 10 20 e0                                      eor r1, r0, r1
005054b4  01 10 43 e5                                      strb r1, [r3, #-1]
005054b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005054bc  00 10 21 e0                                      eor r1, r1, r0
005054c0  01 10 c2 e5                                      strb r1, [r2, #1]
005054c4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005054c8  01 20 42 e2                                      sub r2, r2, #1
005054cc  00 10 21 e0                                      eor r1, r1, r0
005054d0  01 10 43 e5                                      strb r1, [r3, #-1]
005054d4  01 30 83 e2                                      add r3, r3, #1
005054d8  f1 ff ff 3a                                      blo #0x5054a4
005054dc  05 00 a0 e1                                      mov r0, r5
005054e0  0c 10 84 e2                                      add r1, r4, #0xc
005054e4  e9 4e fd eb                                      bl #0x459090
005054e8  01 30 a0 e3                                      mov r3, #1
005054ec  00 00 53 e3                                      cmp r3, #0
005054f0  04 30 8d e5                                      str r3, [sp, #4]
005054f4  0f 00 00 1a                                      bne #0x505538
005054f8  0e 30 84 e2                                      add r3, r4, #0xe
005054fc  0d 40 84 e2                                      add r4, r4, #0xd
00505500  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505504  01 20 54 e5                                      ldrb r2, [r4, #-1]
00505508  04 00 53 e1                                      cmp r3, r4
0050550c  02 20 21 e0                                      eor r2, r1, r2
00505510  01 20 44 e5                                      strb r2, [r4, #-1]
00505514  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505518  01 20 22 e0                                      eor r2, r2, r1
0050551c  01 20 c3 e5                                      strb r2, [r3, #1]
00505520  01 10 54 e5                                      ldrb r1, [r4, #-1]
00505524  01 30 43 e2                                      sub r3, r3, #1
00505528  01 20 22 e0                                      eor r2, r2, r1
0050552c  01 20 44 e5                                      strb r2, [r4, #-1]
00505530  01 40 84 e2                                      add r4, r4, #1
00505534  f1 ff ff 8a                                      bhi #0x505500
00505538  0c d0 8d e2                                      add sp, sp, #0xc
0050553c  30 80 bd e8                                      pop {r4, r5, pc}

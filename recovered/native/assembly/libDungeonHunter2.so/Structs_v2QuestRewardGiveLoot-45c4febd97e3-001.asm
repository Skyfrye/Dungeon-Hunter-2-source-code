; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8acc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveLoot
; alias: _ZN7Structs21v2QuestRewardGiveLootD2Ev
; demangled: Structs::v2QuestRewardGiveLoot::~v2QuestRewardGiveLoot()
; decoder-mode: arm
004c8acc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8ad0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8ad4  10 40 2d e9                                      push {r4, lr}
004c8ad8  03 30 8f e0                                      add r3, pc, r3
004c8adc  02 20 93 e7                                      ldr r2, [r3, r2]
004c8ae0  00 40 a0 e1                                      mov r4, r0
004c8ae4  08 20 82 e2                                      add r2, r2, #8
004c8ae8  00 20 80 e5                                      str r2, [r0]
004c8aec  33 ff ff eb                                      bl #0x4c87c0
004c8af0  04 00 a0 e1                                      mov r0, r4
004c8af4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8af8  b8 bf 4c 00 8c 09 00 00                          .byte 0xb8, 0xbf, 0x4c, 0x00, 0x8c, 0x09, 0x00, 0x00

; FUNCTION 0x004c8b00, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveLoot
; alias: _ZN7Structs21v2QuestRewardGiveLootD1Ev
; demangled: Structs::v2QuestRewardGiveLoot::~v2QuestRewardGiveLoot()
; decoder-mode: arm
004c8b00  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8b04  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8b08  10 40 2d e9                                      push {r4, lr}
004c8b0c  03 30 8f e0                                      add r3, pc, r3
004c8b10  02 20 93 e7                                      ldr r2, [r3, r2]
004c8b14  00 40 a0 e1                                      mov r4, r0
004c8b18  08 20 82 e2                                      add r2, r2, #8
004c8b1c  00 20 80 e5                                      str r2, [r0]
004c8b20  26 ff ff eb                                      bl #0x4c87c0
004c8b24  04 00 a0 e1                                      mov r0, r4
004c8b28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8b2c  84 bf 4c 00 8c 09 00 00                          .byte 0x84, 0xbf, 0x4c, 0x00, 0x8c, 0x09, 0x00, 0x00

; FUNCTION 0x004c8b34, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestRewardGiveLoot
; alias: _ZN7Structs21v2QuestRewardGiveLoot8finalizeEv
; demangled: Structs::v2QuestRewardGiveLoot::finalize()
; decoder-mode: arm
004c8b34  23 ff ff ea                                      b #0x4c87c8

; FUNCTION 0x004cd8a0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestRewardGiveLoot
; alias: _ZN7Structs21v2QuestRewardGiveLootD0Ev
; demangled: Structs::v2QuestRewardGiveLoot::~v2QuestRewardGiveLoot()
; decoder-mode: arm
004cd8a0  10 40 2d e9                                      push {r4, lr}
004cd8a4  00 40 a0 e1                                      mov r4, r0
004cd8a8  94 ec ff eb                                      bl #0x4c8b00
004cd8ac  04 00 a0 e1                                      mov r0, r4
004cd8b0  e2 0a f9 eb                                      bl #0x310440
004cd8b4  04 00 a0 e1                                      mov r0, r4
004cd8b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505540, declared_size=212, range_size=212, mode=arm
; class-group: Structs::v2QuestRewardGiveLoot
; alias: _ZN7Structs21v2QuestRewardGiveLoot4readEP11IStreamBase
; demangled: Structs::v2QuestRewardGiveLoot::read(IStreamBase*)
; decoder-mode: arm
00505540  30 40 2d e9                                      push {r4, r5, lr}
00505544  00 40 a0 e1                                      mov r4, r0
00505548  0c d0 4d e2                                      sub sp, sp, #0xc
0050554c  01 50 a0 e1                                      mov r5, r1
00505550  a9 ff ff eb                                      bl #0x5053fc
00505554  05 00 a0 e1                                      mov r0, r5
00505558  08 10 84 e2                                      add r1, r4, #8
0050555c  cb 4e fd eb                                      bl #0x459090
00505560  01 30 a0 e3                                      mov r3, #1
00505564  00 00 53 e3                                      cmp r3, #0
00505568  04 30 8d e5                                      str r3, [sp, #4]
0050556c  0f 00 00 1a                                      bne #0x5055b0
00505570  09 30 84 e2                                      add r3, r4, #9
00505574  0a 20 84 e2                                      add r2, r4, #0xa
00505578  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050557c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00505580  02 00 53 e1                                      cmp r3, r2
00505584  01 10 20 e0                                      eor r1, r0, r1
00505588  01 10 43 e5                                      strb r1, [r3, #-1]
0050558c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505590  00 10 21 e0                                      eor r1, r1, r0
00505594  01 10 c2 e5                                      strb r1, [r2, #1]
00505598  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050559c  01 20 42 e2                                      sub r2, r2, #1
005055a0  00 10 21 e0                                      eor r1, r1, r0
005055a4  01 10 43 e5                                      strb r1, [r3, #-1]
005055a8  01 30 83 e2                                      add r3, r3, #1
005055ac  f1 ff ff 3a                                      blo #0x505578
005055b0  05 00 a0 e1                                      mov r0, r5
005055b4  0c 10 84 e2                                      add r1, r4, #0xc
005055b8  b4 4e fd eb                                      bl #0x459090
005055bc  01 30 a0 e3                                      mov r3, #1
005055c0  00 00 53 e3                                      cmp r3, #0
005055c4  04 30 8d e5                                      str r3, [sp, #4]
005055c8  0f 00 00 1a                                      bne #0x50560c
005055cc  0e 30 84 e2                                      add r3, r4, #0xe
005055d0  0d 40 84 e2                                      add r4, r4, #0xd
005055d4  01 10 d3 e5                                      ldrb r1, [r3, #1]
005055d8  01 20 54 e5                                      ldrb r2, [r4, #-1]
005055dc  04 00 53 e1                                      cmp r3, r4
005055e0  02 20 21 e0                                      eor r2, r1, r2
005055e4  01 20 44 e5                                      strb r2, [r4, #-1]
005055e8  01 10 d3 e5                                      ldrb r1, [r3, #1]
005055ec  01 20 22 e0                                      eor r2, r2, r1
005055f0  01 20 c3 e5                                      strb r2, [r3, #1]
005055f4  01 10 54 e5                                      ldrb r1, [r4, #-1]
005055f8  01 30 43 e2                                      sub r3, r3, #1
005055fc  01 20 22 e0                                      eor r2, r2, r1
00505600  01 20 44 e5                                      strb r2, [r4, #-1]
00505604  01 40 84 e2                                      add r4, r4, #1
00505608  f1 ff ff 8a                                      bhi #0x5055d4
0050560c  0c d0 8d e2                                      add sp, sp, #0xc
00505610  30 80 bd e8                                      pop {r4, r5, pc}

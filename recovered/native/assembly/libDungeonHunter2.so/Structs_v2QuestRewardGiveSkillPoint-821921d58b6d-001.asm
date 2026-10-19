; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8988, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveSkillPoint
; alias: _ZN7Structs27v2QuestRewardGiveSkillPointD2Ev
; demangled: Structs::v2QuestRewardGiveSkillPoint::~v2QuestRewardGiveSkillPoint()
; decoder-mode: arm
004c8988  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c898c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8990  10 40 2d e9                                      push {r4, lr}
004c8994  03 30 8f e0                                      add r3, pc, r3
004c8998  02 20 93 e7                                      ldr r2, [r3, r2]
004c899c  00 40 a0 e1                                      mov r4, r0
004c89a0  08 20 82 e2                                      add r2, r2, #8
004c89a4  00 20 80 e5                                      str r2, [r0]
004c89a8  db ff ff eb                                      bl #0x4c891c
004c89ac  04 00 a0 e1                                      mov r0, r4
004c89b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c89b4  fc c0 4c 00 38 49 00 00                          .byte 0xfc, 0xc0, 0x4c, 0x00, 0x38, 0x49, 0x00, 0x00

; FUNCTION 0x004c89bc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveSkillPoint
; alias: _ZN7Structs27v2QuestRewardGiveSkillPointD1Ev
; demangled: Structs::v2QuestRewardGiveSkillPoint::~v2QuestRewardGiveSkillPoint()
; decoder-mode: arm
004c89bc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c89c0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c89c4  10 40 2d e9                                      push {r4, lr}
004c89c8  03 30 8f e0                                      add r3, pc, r3
004c89cc  02 20 93 e7                                      ldr r2, [r3, r2]
004c89d0  00 40 a0 e1                                      mov r4, r0
004c89d4  08 20 82 e2                                      add r2, r2, #8
004c89d8  00 20 80 e5                                      str r2, [r0]
004c89dc  ce ff ff eb                                      bl #0x4c891c
004c89e0  04 00 a0 e1                                      mov r0, r4
004c89e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c89e8  c8 c0 4c 00 38 49 00 00                          .byte 0xc8, 0xc0, 0x4c, 0x00, 0x38, 0x49, 0x00, 0x00

; FUNCTION 0x004c89f0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestRewardGiveSkillPoint
; alias: _ZN7Structs27v2QuestRewardGiveSkillPoint8finalizeEv
; demangled: Structs::v2QuestRewardGiveSkillPoint::finalize()
; decoder-mode: arm
004c89f0  e3 ff ff ea                                      b #0x4c8984

; FUNCTION 0x004cd910, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestRewardGiveSkillPoint
; alias: _ZN7Structs27v2QuestRewardGiveSkillPointD0Ev
; demangled: Structs::v2QuestRewardGiveSkillPoint::~v2QuestRewardGiveSkillPoint()
; decoder-mode: arm
004cd910  10 40 2d e9                                      push {r4, lr}
004cd914  00 40 a0 e1                                      mov r4, r0
004cd918  27 ec ff eb                                      bl #0x4c89bc
004cd91c  04 00 a0 e1                                      mov r0, r4
004cd920  c6 0a f9 eb                                      bl #0x310440
004cd924  04 00 a0 e1                                      mov r0, r4
004cd928  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005056f0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestRewardGiveSkillPoint
; alias: _ZN7Structs27v2QuestRewardGiveSkillPoint4readEP11IStreamBase
; demangled: Structs::v2QuestRewardGiveSkillPoint::read(IStreamBase*)
; decoder-mode: arm
005056f0  c7 ff ff ea                                      b #0x505614

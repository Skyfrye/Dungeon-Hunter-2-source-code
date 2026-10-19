; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8a60, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveMaxMPBonus
; alias: _ZN7Structs27v2QuestRewardGiveMaxMPBonusD2Ev
; demangled: Structs::v2QuestRewardGiveMaxMPBonus::~v2QuestRewardGiveMaxMPBonus()
; decoder-mode: arm
004c8a60  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8a64  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8a68  10 40 2d e9                                      push {r4, lr}
004c8a6c  03 30 8f e0                                      add r3, pc, r3
004c8a70  02 20 93 e7                                      ldr r2, [r3, r2]
004c8a74  00 40 a0 e1                                      mov r4, r0
004c8a78  08 20 82 e2                                      add r2, r2, #8
004c8a7c  00 20 80 e5                                      str r2, [r0]
004c8a80  a5 ff ff eb                                      bl #0x4c891c
004c8a84  04 00 a0 e1                                      mov r0, r4
004c8a88  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8a8c  24 c0 4c 00 44 45 00 00                          .byte 0x24, 0xc0, 0x4c, 0x00, 0x44, 0x45, 0x00, 0x00

; FUNCTION 0x004c8a94, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveMaxMPBonus
; alias: _ZN7Structs27v2QuestRewardGiveMaxMPBonusD1Ev
; demangled: Structs::v2QuestRewardGiveMaxMPBonus::~v2QuestRewardGiveMaxMPBonus()
; decoder-mode: arm
004c8a94  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8a98  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8a9c  10 40 2d e9                                      push {r4, lr}
004c8aa0  03 30 8f e0                                      add r3, pc, r3
004c8aa4  02 20 93 e7                                      ldr r2, [r3, r2]
004c8aa8  00 40 a0 e1                                      mov r4, r0
004c8aac  08 20 82 e2                                      add r2, r2, #8
004c8ab0  00 20 80 e5                                      str r2, [r0]
004c8ab4  98 ff ff eb                                      bl #0x4c891c
004c8ab8  04 00 a0 e1                                      mov r0, r4
004c8abc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8ac0  f0 bf 4c 00 44 45 00 00                          .byte 0xf0, 0xbf, 0x4c, 0x00, 0x44, 0x45, 0x00, 0x00

; FUNCTION 0x004c8ac8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestRewardGiveMaxMPBonus
; alias: _ZN7Structs27v2QuestRewardGiveMaxMPBonus8finalizeEv
; demangled: Structs::v2QuestRewardGiveMaxMPBonus::finalize()
; decoder-mode: arm
004c8ac8  ad ff ff ea                                      b #0x4c8984

; FUNCTION 0x004cd8d8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestRewardGiveMaxMPBonus
; alias: _ZN7Structs27v2QuestRewardGiveMaxMPBonusD0Ev
; demangled: Structs::v2QuestRewardGiveMaxMPBonus::~v2QuestRewardGiveMaxMPBonus()
; decoder-mode: arm
004cd8d8  10 40 2d e9                                      push {r4, lr}
004cd8dc  00 40 a0 e1                                      mov r4, r0
004cd8e0  6b ec ff eb                                      bl #0x4c8a94
004cd8e4  04 00 a0 e1                                      mov r0, r4
004cd8e8  d4 0a f9 eb                                      bl #0x310440
004cd8ec  04 00 a0 e1                                      mov r0, r4
004cd8f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005056e8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestRewardGiveMaxMPBonus
; alias: _ZN7Structs27v2QuestRewardGiveMaxMPBonus4readEP11IStreamBase
; demangled: Structs::v2QuestRewardGiveMaxMPBonus::read(IStreamBase*)
; decoder-mode: arm
005056e8  c9 ff ff ea                                      b #0x505614

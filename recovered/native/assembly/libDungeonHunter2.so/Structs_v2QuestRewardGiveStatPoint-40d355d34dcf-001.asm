; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c89f4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveStatPoint
; alias: _ZN7Structs26v2QuestRewardGiveStatPointD2Ev
; demangled: Structs::v2QuestRewardGiveStatPoint::~v2QuestRewardGiveStatPoint()
; decoder-mode: arm
004c89f4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c89f8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c89fc  10 40 2d e9                                      push {r4, lr}
004c8a00  03 30 8f e0                                      add r3, pc, r3
004c8a04  02 20 93 e7                                      ldr r2, [r3, r2]
004c8a08  00 40 a0 e1                                      mov r4, r0
004c8a0c  08 20 82 e2                                      add r2, r2, #8
004c8a10  00 20 80 e5                                      str r2, [r0]
004c8a14  c0 ff ff eb                                      bl #0x4c891c
004c8a18  04 00 a0 e1                                      mov r0, r4
004c8a1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8a20  90 c0 4c 00 38 30 00 00                          .byte 0x90, 0xc0, 0x4c, 0x00, 0x38, 0x30, 0x00, 0x00

; FUNCTION 0x004c8a28, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardGiveStatPoint
; alias: _ZN7Structs26v2QuestRewardGiveStatPointD1Ev
; demangled: Structs::v2QuestRewardGiveStatPoint::~v2QuestRewardGiveStatPoint()
; decoder-mode: arm
004c8a28  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8a2c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8a30  10 40 2d e9                                      push {r4, lr}
004c8a34  03 30 8f e0                                      add r3, pc, r3
004c8a38  02 20 93 e7                                      ldr r2, [r3, r2]
004c8a3c  00 40 a0 e1                                      mov r4, r0
004c8a40  08 20 82 e2                                      add r2, r2, #8
004c8a44  00 20 80 e5                                      str r2, [r0]
004c8a48  b3 ff ff eb                                      bl #0x4c891c
004c8a4c  04 00 a0 e1                                      mov r0, r4
004c8a50  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8a54  5c c0 4c 00 38 30 00 00                          .byte 0x5c, 0xc0, 0x4c, 0x00, 0x38, 0x30, 0x00, 0x00

; FUNCTION 0x004c8a5c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestRewardGiveStatPoint
; alias: _ZN7Structs26v2QuestRewardGiveStatPoint8finalizeEv
; demangled: Structs::v2QuestRewardGiveStatPoint::finalize()
; decoder-mode: arm
004c8a5c  c8 ff ff ea                                      b #0x4c8984

; FUNCTION 0x004cd8f4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestRewardGiveStatPoint
; alias: _ZN7Structs26v2QuestRewardGiveStatPointD0Ev
; demangled: Structs::v2QuestRewardGiveStatPoint::~v2QuestRewardGiveStatPoint()
; decoder-mode: arm
004cd8f4  10 40 2d e9                                      push {r4, lr}
004cd8f8  00 40 a0 e1                                      mov r4, r0
004cd8fc  49 ec ff eb                                      bl #0x4c8a28
004cd900  04 00 a0 e1                                      mov r0, r4
004cd904  cd 0a f9 eb                                      bl #0x310440
004cd908  04 00 a0 e1                                      mov r0, r4
004cd90c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005056ec, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestRewardGiveStatPoint
; alias: _ZN7Structs26v2QuestRewardGiveStatPoint4readEP11IStreamBase
; demangled: Structs::v2QuestRewardGiveStatPoint::read(IStreamBase*)
; decoder-mode: arm
005056ec  c8 ff ff ea                                      b #0x505614

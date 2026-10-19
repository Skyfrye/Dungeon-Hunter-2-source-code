; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7fbc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestCompleted
; alias: _ZN7Structs18v2IsQuestCompletedD2Ev
; demangled: Structs::v2IsQuestCompleted::~v2IsQuestCompleted()
; decoder-mode: arm
004c7fbc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7fc0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7fc4  10 40 2d e9                                      push {r4, lr}
004c7fc8  03 30 8f e0                                      add r3, pc, r3
004c7fcc  02 20 93 e7                                      ldr r2, [r3, r2]
004c7fd0  00 40 a0 e1                                      mov r4, r0
004c7fd4  08 20 82 e2                                      add r2, r2, #8
004c7fd8  00 20 80 e5                                      str r2, [r0]
004c7fdc  54 ff ff eb                                      bl #0x4c7d34
004c7fe0  04 00 a0 e1                                      mov r0, r4
004c7fe4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7fe8  c8 ca 4c 00 2c 3c 00 00                          .byte 0xc8, 0xca, 0x4c, 0x00, 0x2c, 0x3c, 0x00, 0x00

; FUNCTION 0x004c7ff0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestCompleted
; alias: _ZN7Structs18v2IsQuestCompletedD1Ev
; demangled: Structs::v2IsQuestCompleted::~v2IsQuestCompleted()
; decoder-mode: arm
004c7ff0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7ff4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7ff8  10 40 2d e9                                      push {r4, lr}
004c7ffc  03 30 8f e0                                      add r3, pc, r3
004c8000  02 20 93 e7                                      ldr r2, [r3, r2]
004c8004  00 40 a0 e1                                      mov r4, r0
004c8008  08 20 82 e2                                      add r2, r2, #8
004c800c  00 20 80 e5                                      str r2, [r0]
004c8010  47 ff ff eb                                      bl #0x4c7d34
004c8014  04 00 a0 e1                                      mov r0, r4
004c8018  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c801c  94 ca 4c 00 2c 3c 00 00                          .byte 0x94, 0xca, 0x4c, 0x00, 0x2c, 0x3c, 0x00, 0x00

; FUNCTION 0x004c8024, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestCompleted
; alias: _ZN7Structs18v2IsQuestCompleted8finalizeEv
; demangled: Structs::v2IsQuestCompleted::finalize()
; decoder-mode: arm
004c8024  5c ff ff ea                                      b #0x4c7d9c

; FUNCTION 0x004cdc04, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestCompleted
; alias: _ZN7Structs18v2IsQuestCompletedD0Ev
; demangled: Structs::v2IsQuestCompleted::~v2IsQuestCompleted()
; decoder-mode: arm
004cdc04  10 40 2d e9                                      push {r4, lr}
004cdc08  00 40 a0 e1                                      mov r4, r0
004cdc0c  f7 e8 ff eb                                      bl #0x4c7ff0
004cdc10  04 00 a0 e1                                      mov r0, r4
004cdc14  09 0a f9 eb                                      bl #0x310440
004cdc18  04 00 a0 e1                                      mov r0, r4
004cdc1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00506000, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestCompleted
; alias: _ZN7Structs18v2IsQuestCompleted4readEP11IStreamBase
; demangled: Structs::v2IsQuestCompleted::read(IStreamBase*)
; decoder-mode: arm
00506000  c7 ff ff ea                                      b #0x505f24

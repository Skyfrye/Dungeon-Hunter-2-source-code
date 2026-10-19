; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7f50, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestActive
; alias: _ZN7Structs15v2IsQuestActiveD2Ev
; demangled: Structs::v2IsQuestActive::~v2IsQuestActive()
; decoder-mode: arm
004c7f50  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7f54  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7f58  10 40 2d e9                                      push {r4, lr}
004c7f5c  03 30 8f e0                                      add r3, pc, r3
004c7f60  02 20 93 e7                                      ldr r2, [r3, r2]
004c7f64  00 40 a0 e1                                      mov r4, r0
004c7f68  08 20 82 e2                                      add r2, r2, #8
004c7f6c  00 20 80 e5                                      str r2, [r0]
004c7f70  6f ff ff eb                                      bl #0x4c7d34
004c7f74  04 00 a0 e1                                      mov r0, r4
004c7f78  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7f7c  34 cb 4c 00 e8 1a 00 00                          .byte 0x34, 0xcb, 0x4c, 0x00, 0xe8, 0x1a, 0x00, 0x00

; FUNCTION 0x004c7f84, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestActive
; alias: _ZN7Structs15v2IsQuestActiveD1Ev
; demangled: Structs::v2IsQuestActive::~v2IsQuestActive()
; decoder-mode: arm
004c7f84  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7f88  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7f8c  10 40 2d e9                                      push {r4, lr}
004c7f90  03 30 8f e0                                      add r3, pc, r3
004c7f94  02 20 93 e7                                      ldr r2, [r3, r2]
004c7f98  00 40 a0 e1                                      mov r4, r0
004c7f9c  08 20 82 e2                                      add r2, r2, #8
004c7fa0  00 20 80 e5                                      str r2, [r0]
004c7fa4  62 ff ff eb                                      bl #0x4c7d34
004c7fa8  04 00 a0 e1                                      mov r0, r4
004c7fac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7fb0  00 cb 4c 00 e8 1a 00 00                          .byte 0x00, 0xcb, 0x4c, 0x00, 0xe8, 0x1a, 0x00, 0x00

; FUNCTION 0x004c7fb8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestActive
; alias: _ZN7Structs15v2IsQuestActive8finalizeEv
; demangled: Structs::v2IsQuestActive::finalize()
; decoder-mode: arm
004c7fb8  77 ff ff ea                                      b #0x4c7d9c

; FUNCTION 0x004cdc20, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestActive
; alias: _ZN7Structs15v2IsQuestActiveD0Ev
; demangled: Structs::v2IsQuestActive::~v2IsQuestActive()
; decoder-mode: arm
004cdc20  10 40 2d e9                                      push {r4, lr}
004cdc24  00 40 a0 e1                                      mov r4, r0
004cdc28  d5 e8 ff eb                                      bl #0x4c7f84
004cdc2c  04 00 a0 e1                                      mov r0, r4
004cdc30  02 0a f9 eb                                      bl #0x310440
004cdc34  04 00 a0 e1                                      mov r0, r4
004cdc38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00506004, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestActive
; alias: _ZN7Structs15v2IsQuestActive4readEP11IStreamBase
; demangled: Structs::v2IsQuestActive::read(IStreamBase*)
; decoder-mode: arm
00506004  c6 ff ff ea                                      b #0x505f24

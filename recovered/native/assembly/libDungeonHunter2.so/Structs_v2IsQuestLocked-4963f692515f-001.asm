; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7ee4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLocked
; alias: _ZN7Structs15v2IsQuestLockedD2Ev
; demangled: Structs::v2IsQuestLocked::~v2IsQuestLocked()
; decoder-mode: arm
004c7ee4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7ee8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7eec  10 40 2d e9                                      push {r4, lr}
004c7ef0  03 30 8f e0                                      add r3, pc, r3
004c7ef4  02 20 93 e7                                      ldr r2, [r3, r2]
004c7ef8  00 40 a0 e1                                      mov r4, r0
004c7efc  08 20 82 e2                                      add r2, r2, #8
004c7f00  00 20 80 e5                                      str r2, [r0]
004c7f04  8a ff ff eb                                      bl #0x4c7d34
004c7f08  04 00 a0 e1                                      mov r0, r4
004c7f0c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7f10  a0 cb 4c 00 cc 06 00 00                          .byte 0xa0, 0xcb, 0x4c, 0x00, 0xcc, 0x06, 0x00, 0x00

; FUNCTION 0x004c7f18, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLocked
; alias: _ZN7Structs15v2IsQuestLockedD1Ev
; demangled: Structs::v2IsQuestLocked::~v2IsQuestLocked()
; decoder-mode: arm
004c7f18  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7f1c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7f20  10 40 2d e9                                      push {r4, lr}
004c7f24  03 30 8f e0                                      add r3, pc, r3
004c7f28  02 20 93 e7                                      ldr r2, [r3, r2]
004c7f2c  00 40 a0 e1                                      mov r4, r0
004c7f30  08 20 82 e2                                      add r2, r2, #8
004c7f34  00 20 80 e5                                      str r2, [r0]
004c7f38  7d ff ff eb                                      bl #0x4c7d34
004c7f3c  04 00 a0 e1                                      mov r0, r4
004c7f40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7f44  6c cb 4c 00 cc 06 00 00                          .byte 0x6c, 0xcb, 0x4c, 0x00, 0xcc, 0x06, 0x00, 0x00

; FUNCTION 0x004c7f4c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLocked
; alias: _ZN7Structs15v2IsQuestLocked8finalizeEv
; demangled: Structs::v2IsQuestLocked::finalize()
; decoder-mode: arm
004c7f4c  92 ff ff ea                                      b #0x4c7d9c

; FUNCTION 0x004cdc3c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestLocked
; alias: _ZN7Structs15v2IsQuestLockedD0Ev
; demangled: Structs::v2IsQuestLocked::~v2IsQuestLocked()
; decoder-mode: arm
004cdc3c  10 40 2d e9                                      push {r4, lr}
004cdc40  00 40 a0 e1                                      mov r4, r0
004cdc44  b3 e8 ff eb                                      bl #0x4c7f18
004cdc48  04 00 a0 e1                                      mov r0, r4
004cdc4c  fb 09 f9 eb                                      bl #0x310440
004cdc50  04 00 a0 e1                                      mov r0, r4
004cdc54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00506008, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLocked
; alias: _ZN7Structs15v2IsQuestLocked4readEP11IStreamBase
; demangled: Structs::v2IsQuestLocked::read(IStreamBase*)
; decoder-mode: arm
00506008  c5 ff ff ea                                      b #0x505f24

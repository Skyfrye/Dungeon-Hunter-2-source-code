; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8100, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLowerThenLocked
; alias: _ZN7Structs24v2IsQuestLowerThenLockedD2Ev
; demangled: Structs::v2IsQuestLowerThenLocked::~v2IsQuestLowerThenLocked()
; decoder-mode: arm
004c8100  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8104  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8108  10 40 2d e9                                      push {r4, lr}
004c810c  03 30 8f e0                                      add r3, pc, r3
004c8110  02 20 93 e7                                      ldr r2, [r3, r2]
004c8114  00 40 a0 e1                                      mov r4, r0
004c8118  08 20 82 e2                                      add r2, r2, #8
004c811c  00 20 80 e5                                      str r2, [r0]
004c8120  1e ff ff eb                                      bl #0x4c7da0
004c8124  04 00 a0 e1                                      mov r0, r4
004c8128  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c812c  84 c9 4c 00 60 36 00 00                          .byte 0x84, 0xc9, 0x4c, 0x00, 0x60, 0x36, 0x00, 0x00

; FUNCTION 0x004c8134, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLowerThenLocked
; alias: _ZN7Structs24v2IsQuestLowerThenLockedD1Ev
; demangled: Structs::v2IsQuestLowerThenLocked::~v2IsQuestLowerThenLocked()
; decoder-mode: arm
004c8134  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8138  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c813c  10 40 2d e9                                      push {r4, lr}
004c8140  03 30 8f e0                                      add r3, pc, r3
004c8144  02 20 93 e7                                      ldr r2, [r3, r2]
004c8148  00 40 a0 e1                                      mov r4, r0
004c814c  08 20 82 e2                                      add r2, r2, #8
004c8150  00 20 80 e5                                      str r2, [r0]
004c8154  11 ff ff eb                                      bl #0x4c7da0
004c8158  04 00 a0 e1                                      mov r0, r4
004c815c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8160  50 c9 4c 00 60 36 00 00                          .byte 0x50, 0xc9, 0x4c, 0x00, 0x60, 0x36, 0x00, 0x00

; FUNCTION 0x004c8168, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLowerThenLocked
; alias: _ZN7Structs24v2IsQuestLowerThenLocked8finalizeEv
; demangled: Structs::v2IsQuestLowerThenLocked::finalize()
; decoder-mode: arm
004c8168  26 ff ff ea                                      b #0x4c7e08

; FUNCTION 0x004cdb94, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestLowerThenLocked
; alias: _ZN7Structs24v2IsQuestLowerThenLockedD0Ev
; demangled: Structs::v2IsQuestLowerThenLocked::~v2IsQuestLowerThenLocked()
; decoder-mode: arm
004cdb94  10 40 2d e9                                      push {r4, lr}
004cdb98  00 40 a0 e1                                      mov r4, r0
004cdb9c  64 e9 ff eb                                      bl #0x4c8134
004cdba0  04 00 a0 e1                                      mov r0, r4
004cdba4  25 0a f9 eb                                      bl #0x310440
004cdba8  04 00 a0 e1                                      mov r0, r4
004cdbac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505f20, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLowerThenLocked
; alias: _ZN7Structs24v2IsQuestLowerThenLocked4readEP11IStreamBase
; demangled: Structs::v2IsQuestLowerThenLocked::read(IStreamBase*)
; decoder-mode: arm
00505f20  c4 ff ff ea                                      b #0x505e38

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c84cc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestHigherThenCompleted
; alias: _ZN7Structs28v2IsQuestHigherThenCompletedD2Ev
; demangled: Structs::v2IsQuestHigherThenCompleted::~v2IsQuestHigherThenCompleted()
; decoder-mode: arm
004c84cc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c84d0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c84d4  10 40 2d e9                                      push {r4, lr}
004c84d8  03 30 8f e0                                      add r3, pc, r3
004c84dc  02 20 93 e7                                      ldr r2, [r3, r2]
004c84e0  00 40 a0 e1                                      mov r4, r0
004c84e4  08 20 82 e2                                      add r2, r2, #8
004c84e8  00 20 80 e5                                      str r2, [r0]
004c84ec  46 fe ff eb                                      bl #0x4c7e0c
004c84f0  04 00 a0 e1                                      mov r0, r4
004c84f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c84f8  b8 c5 4c 00 38 0f 00 00                          .byte 0xb8, 0xc5, 0x4c, 0x00, 0x38, 0x0f, 0x00, 0x00

; FUNCTION 0x004c8500, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestHigherThenCompleted
; alias: _ZN7Structs28v2IsQuestHigherThenCompletedD1Ev
; demangled: Structs::v2IsQuestHigherThenCompleted::~v2IsQuestHigherThenCompleted()
; decoder-mode: arm
004c8500  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8504  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8508  10 40 2d e9                                      push {r4, lr}
004c850c  03 30 8f e0                                      add r3, pc, r3
004c8510  02 20 93 e7                                      ldr r2, [r3, r2]
004c8514  00 40 a0 e1                                      mov r4, r0
004c8518  08 20 82 e2                                      add r2, r2, #8
004c851c  00 20 80 e5                                      str r2, [r0]
004c8520  39 fe ff eb                                      bl #0x4c7e0c
004c8524  04 00 a0 e1                                      mov r0, r4
004c8528  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c852c  84 c5 4c 00 38 0f 00 00                          .byte 0x84, 0xc5, 0x4c, 0x00, 0x38, 0x0f, 0x00, 0x00

; FUNCTION 0x004c8534, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestHigherThenCompleted
; alias: _ZN7Structs28v2IsQuestHigherThenCompleted8finalizeEv
; demangled: Structs::v2IsQuestHigherThenCompleted::finalize()
; decoder-mode: arm
004c8534  4e fe ff ea                                      b #0x4c7e74

; FUNCTION 0x004cda7c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestHigherThenCompleted
; alias: _ZN7Structs28v2IsQuestHigherThenCompletedD0Ev
; demangled: Structs::v2IsQuestHigherThenCompleted::~v2IsQuestHigherThenCompleted()
; decoder-mode: arm
004cda7c  10 40 2d e9                                      push {r4, lr}
004cda80  00 40 a0 e1                                      mov r4, r0
004cda84  9d ea ff eb                                      bl #0x4c8500
004cda88  04 00 a0 e1                                      mov r0, r4
004cda8c  6b 0a f9 eb                                      bl #0x310440
004cda90  04 00 a0 e1                                      mov r0, r4
004cda94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505e28, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestHigherThenCompleted
; alias: _ZN7Structs28v2IsQuestHigherThenCompleted4readEP11IStreamBase
; demangled: Structs::v2IsQuestHigherThenCompleted::read(IStreamBase*)
; decoder-mode: arm
00505e28  c7 ff ff ea                                      b #0x505d4c

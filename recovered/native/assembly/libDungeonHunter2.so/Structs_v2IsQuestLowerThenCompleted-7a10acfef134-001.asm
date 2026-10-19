; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8244, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLowerThenCompleted
; alias: _ZN7Structs27v2IsQuestLowerThenCompletedD2Ev
; demangled: Structs::v2IsQuestLowerThenCompleted::~v2IsQuestLowerThenCompleted()
; decoder-mode: arm
004c8244  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8248  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c824c  10 40 2d e9                                      push {r4, lr}
004c8250  03 30 8f e0                                      add r3, pc, r3
004c8254  02 20 93 e7                                      ldr r2, [r3, r2]
004c8258  00 40 a0 e1                                      mov r4, r0
004c825c  08 20 82 e2                                      add r2, r2, #8
004c8260  00 20 80 e5                                      str r2, [r0]
004c8264  cd fe ff eb                                      bl #0x4c7da0
004c8268  04 00 a0 e1                                      mov r0, r4
004c826c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8270  40 c8 4c 00 60 42 00 00                          .byte 0x40, 0xc8, 0x4c, 0x00, 0x60, 0x42, 0x00, 0x00

; FUNCTION 0x004c8278, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLowerThenCompleted
; alias: _ZN7Structs27v2IsQuestLowerThenCompletedD1Ev
; demangled: Structs::v2IsQuestLowerThenCompleted::~v2IsQuestLowerThenCompleted()
; decoder-mode: arm
004c8278  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c827c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8280  10 40 2d e9                                      push {r4, lr}
004c8284  03 30 8f e0                                      add r3, pc, r3
004c8288  02 20 93 e7                                      ldr r2, [r3, r2]
004c828c  00 40 a0 e1                                      mov r4, r0
004c8290  08 20 82 e2                                      add r2, r2, #8
004c8294  00 20 80 e5                                      str r2, [r0]
004c8298  c0 fe ff eb                                      bl #0x4c7da0
004c829c  04 00 a0 e1                                      mov r0, r4
004c82a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c82a4  0c c8 4c 00 60 42 00 00                          .byte 0x0c, 0xc8, 0x4c, 0x00, 0x60, 0x42, 0x00, 0x00

; FUNCTION 0x004c82ac, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLowerThenCompleted
; alias: _ZN7Structs27v2IsQuestLowerThenCompleted8finalizeEv
; demangled: Structs::v2IsQuestLowerThenCompleted::finalize()
; decoder-mode: arm
004c82ac  d5 fe ff ea                                      b #0x4c7e08

; FUNCTION 0x004cdb40, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestLowerThenCompleted
; alias: _ZN7Structs27v2IsQuestLowerThenCompletedD0Ev
; demangled: Structs::v2IsQuestLowerThenCompleted::~v2IsQuestLowerThenCompleted()
; decoder-mode: arm
004cdb40  10 40 2d e9                                      push {r4, lr}
004cdb44  00 40 a0 e1                                      mov r4, r0
004cdb48  ca e9 ff eb                                      bl #0x4c8278
004cdb4c  04 00 a0 e1                                      mov r0, r4
004cdb50  3a 0a f9 eb                                      bl #0x310440
004cdb54  04 00 a0 e1                                      mov r0, r4
004cdb58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505f14, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLowerThenCompleted
; alias: _ZN7Structs27v2IsQuestLowerThenCompleted4readEP11IStreamBase
; demangled: Structs::v2IsQuestLowerThenCompleted::read(IStreamBase*)
; decoder-mode: arm
00505f14  c7 ff ff ea                                      b #0x505e38

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8538, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestHigherThenClosed
; alias: _ZN7Structs25v2IsQuestHigherThenClosedD2Ev
; demangled: Structs::v2IsQuestHigherThenClosed::~v2IsQuestHigherThenClosed()
; decoder-mode: arm
004c8538  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c853c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8540  10 40 2d e9                                      push {r4, lr}
004c8544  03 30 8f e0                                      add r3, pc, r3
004c8548  02 20 93 e7                                      ldr r2, [r3, r2]
004c854c  00 40 a0 e1                                      mov r4, r0
004c8550  08 20 82 e2                                      add r2, r2, #8
004c8554  00 20 80 e5                                      str r2, [r0]
004c8558  2b fe ff eb                                      bl #0x4c7e0c
004c855c  04 00 a0 e1                                      mov r0, r4
004c8560  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8564  4c c5 4c 00 b8 20 00 00                          .byte 0x4c, 0xc5, 0x4c, 0x00, 0xb8, 0x20, 0x00, 0x00

; FUNCTION 0x004c856c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestHigherThenClosed
; alias: _ZN7Structs25v2IsQuestHigherThenClosedD1Ev
; demangled: Structs::v2IsQuestHigherThenClosed::~v2IsQuestHigherThenClosed()
; decoder-mode: arm
004c856c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8570  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8574  10 40 2d e9                                      push {r4, lr}
004c8578  03 30 8f e0                                      add r3, pc, r3
004c857c  02 20 93 e7                                      ldr r2, [r3, r2]
004c8580  00 40 a0 e1                                      mov r4, r0
004c8584  08 20 82 e2                                      add r2, r2, #8
004c8588  00 20 80 e5                                      str r2, [r0]
004c858c  1e fe ff eb                                      bl #0x4c7e0c
004c8590  04 00 a0 e1                                      mov r0, r4
004c8594  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8598  18 c5 4c 00 b8 20 00 00                          .byte 0x18, 0xc5, 0x4c, 0x00, 0xb8, 0x20, 0x00, 0x00

; FUNCTION 0x004c85a0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestHigherThenClosed
; alias: _ZN7Structs25v2IsQuestHigherThenClosed8finalizeEv
; demangled: Structs::v2IsQuestHigherThenClosed::finalize()
; decoder-mode: arm
004c85a0  33 fe ff ea                                      b #0x4c7e74

; FUNCTION 0x004cda60, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestHigherThenClosed
; alias: _ZN7Structs25v2IsQuestHigherThenClosedD0Ev
; demangled: Structs::v2IsQuestHigherThenClosed::~v2IsQuestHigherThenClosed()
; decoder-mode: arm
004cda60  10 40 2d e9                                      push {r4, lr}
004cda64  00 40 a0 e1                                      mov r4, r0
004cda68  bf ea ff eb                                      bl #0x4c856c
004cda6c  04 00 a0 e1                                      mov r0, r4
004cda70  72 0a f9 eb                                      bl #0x310440
004cda74  04 00 a0 e1                                      mov r0, r4
004cda78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505e24, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestHigherThenClosed
; alias: _ZN7Structs25v2IsQuestHigherThenClosed4readEP11IStreamBase
; demangled: Structs::v2IsQuestHigherThenClosed::read(IStreamBase*)
; decoder-mode: arm
00505e24  c8 ff ff ea                                      b #0x505d4c

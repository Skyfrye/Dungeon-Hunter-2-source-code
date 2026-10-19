; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8460, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestHigherThenActive
; alias: _ZN7Structs25v2IsQuestHigherThenActiveD2Ev
; demangled: Structs::v2IsQuestHigherThenActive::~v2IsQuestHigherThenActive()
; decoder-mode: arm
004c8460  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8464  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8468  10 40 2d e9                                      push {r4, lr}
004c846c  03 30 8f e0                                      add r3, pc, r3
004c8470  02 20 93 e7                                      ldr r2, [r3, r2]
004c8474  00 40 a0 e1                                      mov r4, r0
004c8478  08 20 82 e2                                      add r2, r2, #8
004c847c  00 20 80 e5                                      str r2, [r0]
004c8480  61 fe ff eb                                      bl #0x4c7e0c
004c8484  04 00 a0 e1                                      mov r0, r4
004c8488  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c848c  24 c6 4c 00 4c 0b 00 00                          .byte 0x24, 0xc6, 0x4c, 0x00, 0x4c, 0x0b, 0x00, 0x00

; FUNCTION 0x004c8494, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestHigherThenActive
; alias: _ZN7Structs25v2IsQuestHigherThenActiveD1Ev
; demangled: Structs::v2IsQuestHigherThenActive::~v2IsQuestHigherThenActive()
; decoder-mode: arm
004c8494  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8498  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c849c  10 40 2d e9                                      push {r4, lr}
004c84a0  03 30 8f e0                                      add r3, pc, r3
004c84a4  02 20 93 e7                                      ldr r2, [r3, r2]
004c84a8  00 40 a0 e1                                      mov r4, r0
004c84ac  08 20 82 e2                                      add r2, r2, #8
004c84b0  00 20 80 e5                                      str r2, [r0]
004c84b4  54 fe ff eb                                      bl #0x4c7e0c
004c84b8  04 00 a0 e1                                      mov r0, r4
004c84bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c84c0  f0 c5 4c 00 4c 0b 00 00                          .byte 0xf0, 0xc5, 0x4c, 0x00, 0x4c, 0x0b, 0x00, 0x00

; FUNCTION 0x004c84c8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestHigherThenActive
; alias: _ZN7Structs25v2IsQuestHigherThenActive8finalizeEv
; demangled: Structs::v2IsQuestHigherThenActive::finalize()
; decoder-mode: arm
004c84c8  69 fe ff ea                                      b #0x4c7e74

; FUNCTION 0x004cda98, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestHigherThenActive
; alias: _ZN7Structs25v2IsQuestHigherThenActiveD0Ev
; demangled: Structs::v2IsQuestHigherThenActive::~v2IsQuestHigherThenActive()
; decoder-mode: arm
004cda98  10 40 2d e9                                      push {r4, lr}
004cda9c  00 40 a0 e1                                      mov r4, r0
004cdaa0  7b ea ff eb                                      bl #0x4c8494
004cdaa4  04 00 a0 e1                                      mov r0, r4
004cdaa8  64 0a f9 eb                                      bl #0x310440
004cdaac  04 00 a0 e1                                      mov r0, r4
004cdab0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505e2c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestHigherThenActive
; alias: _ZN7Structs25v2IsQuestHigherThenActive4readEP11IStreamBase
; demangled: Structs::v2IsQuestHigherThenActive::read(IStreamBase*)
; decoder-mode: arm
00505e2c  c6 ff ff ea                                      b #0x505d4c

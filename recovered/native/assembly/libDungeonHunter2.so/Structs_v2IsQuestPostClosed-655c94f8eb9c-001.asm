; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8094, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestPostClosed
; alias: _ZN7Structs19v2IsQuestPostClosedD2Ev
; demangled: Structs::v2IsQuestPostClosed::~v2IsQuestPostClosed()
; decoder-mode: arm
004c8094  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8098  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c809c  10 40 2d e9                                      push {r4, lr}
004c80a0  03 30 8f e0                                      add r3, pc, r3
004c80a4  02 20 93 e7                                      ldr r2, [r3, r2]
004c80a8  00 40 a0 e1                                      mov r4, r0
004c80ac  08 20 82 e2                                      add r2, r2, #8
004c80b0  00 20 80 e5                                      str r2, [r0]
004c80b4  1e ff ff eb                                      bl #0x4c7d34
004c80b8  04 00 a0 e1                                      mov r0, r4
004c80bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c80c0  f0 c9 4c 00 5c 0f 00 00                          .byte 0xf0, 0xc9, 0x4c, 0x00, 0x5c, 0x0f, 0x00, 0x00

; FUNCTION 0x004c80c8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestPostClosed
; alias: _ZN7Structs19v2IsQuestPostClosedD1Ev
; demangled: Structs::v2IsQuestPostClosed::~v2IsQuestPostClosed()
; decoder-mode: arm
004c80c8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c80cc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c80d0  10 40 2d e9                                      push {r4, lr}
004c80d4  03 30 8f e0                                      add r3, pc, r3
004c80d8  02 20 93 e7                                      ldr r2, [r3, r2]
004c80dc  00 40 a0 e1                                      mov r4, r0
004c80e0  08 20 82 e2                                      add r2, r2, #8
004c80e4  00 20 80 e5                                      str r2, [r0]
004c80e8  11 ff ff eb                                      bl #0x4c7d34
004c80ec  04 00 a0 e1                                      mov r0, r4
004c80f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c80f4  bc c9 4c 00 5c 0f 00 00                          .byte 0xbc, 0xc9, 0x4c, 0x00, 0x5c, 0x0f, 0x00, 0x00

; FUNCTION 0x004c80fc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestPostClosed
; alias: _ZN7Structs19v2IsQuestPostClosed8finalizeEv
; demangled: Structs::v2IsQuestPostClosed::finalize()
; decoder-mode: arm
004c80fc  26 ff ff ea                                      b #0x4c7d9c

; FUNCTION 0x004cdbcc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestPostClosed
; alias: _ZN7Structs19v2IsQuestPostClosedD0Ev
; demangled: Structs::v2IsQuestPostClosed::~v2IsQuestPostClosed()
; decoder-mode: arm
004cdbcc  10 40 2d e9                                      push {r4, lr}
004cdbd0  00 40 a0 e1                                      mov r4, r0
004cdbd4  3b e9 ff eb                                      bl #0x4c80c8
004cdbd8  04 00 a0 e1                                      mov r0, r4
004cdbdc  17 0a f9 eb                                      bl #0x310440
004cdbe0  04 00 a0 e1                                      mov r0, r4
004cdbe4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505ff8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestPostClosed
; alias: _ZN7Structs19v2IsQuestPostClosed4readEP11IStreamBase
; demangled: Structs::v2IsQuestPostClosed::read(IStreamBase*)
; decoder-mode: arm
00505ff8  c9 ff ff ea                                      b #0x505f24

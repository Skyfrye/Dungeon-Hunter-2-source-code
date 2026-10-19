; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8388, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestHigherThenLocked
; alias: _ZN7Structs25v2IsQuestHigherThenLockedD2Ev
; demangled: Structs::v2IsQuestHigherThenLocked::~v2IsQuestHigherThenLocked()
; decoder-mode: arm
004c8388  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c838c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8390  10 40 2d e9                                      push {r4, lr}
004c8394  03 30 8f e0                                      add r3, pc, r3
004c8398  02 20 93 e7                                      ldr r2, [r3, r2]
004c839c  00 40 a0 e1                                      mov r4, r0
004c83a0  08 20 82 e2                                      add r2, r2, #8
004c83a4  00 20 80 e5                                      str r2, [r0]
004c83a8  97 fe ff eb                                      bl #0x4c7e0c
004c83ac  04 00 a0 e1                                      mov r0, r4
004c83b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c83b4  fc c6 4c 00 ec 13 00 00                          .byte 0xfc, 0xc6, 0x4c, 0x00, 0xec, 0x13, 0x00, 0x00

; FUNCTION 0x004c83bc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestHigherThenLocked
; alias: _ZN7Structs25v2IsQuestHigherThenLockedD1Ev
; demangled: Structs::v2IsQuestHigherThenLocked::~v2IsQuestHigherThenLocked()
; decoder-mode: arm
004c83bc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c83c0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c83c4  10 40 2d e9                                      push {r4, lr}
004c83c8  03 30 8f e0                                      add r3, pc, r3
004c83cc  02 20 93 e7                                      ldr r2, [r3, r2]
004c83d0  00 40 a0 e1                                      mov r4, r0
004c83d4  08 20 82 e2                                      add r2, r2, #8
004c83d8  00 20 80 e5                                      str r2, [r0]
004c83dc  8a fe ff eb                                      bl #0x4c7e0c
004c83e0  04 00 a0 e1                                      mov r0, r4
004c83e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c83e8  c8 c6 4c 00 ec 13 00 00                          .byte 0xc8, 0xc6, 0x4c, 0x00, 0xec, 0x13, 0x00, 0x00

; FUNCTION 0x004c83f0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestHigherThenLocked
; alias: _ZN7Structs25v2IsQuestHigherThenLocked8finalizeEv
; demangled: Structs::v2IsQuestHigherThenLocked::finalize()
; decoder-mode: arm
004c83f0  9f fe ff ea                                      b #0x4c7e74

; FUNCTION 0x004cdad0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestHigherThenLocked
; alias: _ZN7Structs25v2IsQuestHigherThenLockedD0Ev
; demangled: Structs::v2IsQuestHigherThenLocked::~v2IsQuestHigherThenLocked()
; decoder-mode: arm
004cdad0  10 40 2d e9                                      push {r4, lr}
004cdad4  00 40 a0 e1                                      mov r4, r0
004cdad8  37 ea ff eb                                      bl #0x4c83bc
004cdadc  04 00 a0 e1                                      mov r0, r4
004cdae0  56 0a f9 eb                                      bl #0x310440
004cdae4  04 00 a0 e1                                      mov r0, r4
004cdae8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505e34, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestHigherThenLocked
; alias: _ZN7Structs25v2IsQuestHigherThenLocked4readEP11IStreamBase
; demangled: Structs::v2IsQuestHigherThenLocked::read(IStreamBase*)
; decoder-mode: arm
00505e34  c4 ff ff ea                                      b #0x505d4c

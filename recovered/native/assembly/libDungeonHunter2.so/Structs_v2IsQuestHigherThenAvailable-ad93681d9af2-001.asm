; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c83f4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestHigherThenAvailable
; alias: _ZN7Structs28v2IsQuestHigherThenAvailableD2Ev
; demangled: Structs::v2IsQuestHigherThenAvailable::~v2IsQuestHigherThenAvailable()
; decoder-mode: arm
004c83f4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c83f8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c83fc  10 40 2d e9                                      push {r4, lr}
004c8400  03 30 8f e0                                      add r3, pc, r3
004c8404  02 20 93 e7                                      ldr r2, [r3, r2]
004c8408  00 40 a0 e1                                      mov r4, r0
004c840c  08 20 82 e2                                      add r2, r2, #8
004c8410  00 20 80 e5                                      str r2, [r0]
004c8414  7c fe ff eb                                      bl #0x4c7e0c
004c8418  04 00 a0 e1                                      mov r0, r4
004c841c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8420  90 c6 4c 00 04 16 00 00                          .byte 0x90, 0xc6, 0x4c, 0x00, 0x04, 0x16, 0x00, 0x00

; FUNCTION 0x004c8428, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestHigherThenAvailable
; alias: _ZN7Structs28v2IsQuestHigherThenAvailableD1Ev
; demangled: Structs::v2IsQuestHigherThenAvailable::~v2IsQuestHigherThenAvailable()
; decoder-mode: arm
004c8428  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c842c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8430  10 40 2d e9                                      push {r4, lr}
004c8434  03 30 8f e0                                      add r3, pc, r3
004c8438  02 20 93 e7                                      ldr r2, [r3, r2]
004c843c  00 40 a0 e1                                      mov r4, r0
004c8440  08 20 82 e2                                      add r2, r2, #8
004c8444  00 20 80 e5                                      str r2, [r0]
004c8448  6f fe ff eb                                      bl #0x4c7e0c
004c844c  04 00 a0 e1                                      mov r0, r4
004c8450  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8454  5c c6 4c 00 04 16 00 00                          .byte 0x5c, 0xc6, 0x4c, 0x00, 0x04, 0x16, 0x00, 0x00

; FUNCTION 0x004c845c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestHigherThenAvailable
; alias: _ZN7Structs28v2IsQuestHigherThenAvailable8finalizeEv
; demangled: Structs::v2IsQuestHigherThenAvailable::finalize()
; decoder-mode: arm
004c845c  84 fe ff ea                                      b #0x4c7e74

; FUNCTION 0x004cdab4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestHigherThenAvailable
; alias: _ZN7Structs28v2IsQuestHigherThenAvailableD0Ev
; demangled: Structs::v2IsQuestHigherThenAvailable::~v2IsQuestHigherThenAvailable()
; decoder-mode: arm
004cdab4  10 40 2d e9                                      push {r4, lr}
004cdab8  00 40 a0 e1                                      mov r4, r0
004cdabc  59 ea ff eb                                      bl #0x4c8428
004cdac0  04 00 a0 e1                                      mov r0, r4
004cdac4  5d 0a f9 eb                                      bl #0x310440
004cdac8  04 00 a0 e1                                      mov r0, r4
004cdacc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505e30, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestHigherThenAvailable
; alias: _ZN7Structs28v2IsQuestHigherThenAvailable4readEP11IStreamBase
; demangled: Structs::v2IsQuestHigherThenAvailable::read(IStreamBase*)
; decoder-mode: arm
00505e30  c5 ff ff ea                                      b #0x505d4c

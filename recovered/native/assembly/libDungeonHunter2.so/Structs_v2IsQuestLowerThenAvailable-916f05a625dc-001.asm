; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c816c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLowerThenAvailable
; alias: _ZN7Structs27v2IsQuestLowerThenAvailableD2Ev
; demangled: Structs::v2IsQuestLowerThenAvailable::~v2IsQuestLowerThenAvailable()
; decoder-mode: arm
004c816c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8170  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8174  10 40 2d e9                                      push {r4, lr}
004c8178  03 30 8f e0                                      add r3, pc, r3
004c817c  02 20 93 e7                                      ldr r2, [r3, r2]
004c8180  00 40 a0 e1                                      mov r4, r0
004c8184  08 20 82 e2                                      add r2, r2, #8
004c8188  00 20 80 e5                                      str r2, [r0]
004c818c  03 ff ff eb                                      bl #0x4c7da0
004c8190  04 00 a0 e1                                      mov r0, r4
004c8194  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8198  18 c9 4c 00 14 3e 00 00                          .byte 0x18, 0xc9, 0x4c, 0x00, 0x14, 0x3e, 0x00, 0x00

; FUNCTION 0x004c81a0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLowerThenAvailable
; alias: _ZN7Structs27v2IsQuestLowerThenAvailableD1Ev
; demangled: Structs::v2IsQuestLowerThenAvailable::~v2IsQuestLowerThenAvailable()
; decoder-mode: arm
004c81a0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c81a4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c81a8  10 40 2d e9                                      push {r4, lr}
004c81ac  03 30 8f e0                                      add r3, pc, r3
004c81b0  02 20 93 e7                                      ldr r2, [r3, r2]
004c81b4  00 40 a0 e1                                      mov r4, r0
004c81b8  08 20 82 e2                                      add r2, r2, #8
004c81bc  00 20 80 e5                                      str r2, [r0]
004c81c0  f6 fe ff eb                                      bl #0x4c7da0
004c81c4  04 00 a0 e1                                      mov r0, r4
004c81c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c81cc  e4 c8 4c 00 14 3e 00 00                          .byte 0xe4, 0xc8, 0x4c, 0x00, 0x14, 0x3e, 0x00, 0x00

; FUNCTION 0x004c81d4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLowerThenAvailable
; alias: _ZN7Structs27v2IsQuestLowerThenAvailable8finalizeEv
; demangled: Structs::v2IsQuestLowerThenAvailable::finalize()
; decoder-mode: arm
004c81d4  0b ff ff ea                                      b #0x4c7e08

; FUNCTION 0x004cdb78, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestLowerThenAvailable
; alias: _ZN7Structs27v2IsQuestLowerThenAvailableD0Ev
; demangled: Structs::v2IsQuestLowerThenAvailable::~v2IsQuestLowerThenAvailable()
; decoder-mode: arm
004cdb78  10 40 2d e9                                      push {r4, lr}
004cdb7c  00 40 a0 e1                                      mov r4, r0
004cdb80  86 e9 ff eb                                      bl #0x4c81a0
004cdb84  04 00 a0 e1                                      mov r0, r4
004cdb88  2c 0a f9 eb                                      bl #0x310440
004cdb8c  04 00 a0 e1                                      mov r0, r4
004cdb90  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505f1c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLowerThenAvailable
; alias: _ZN7Structs27v2IsQuestLowerThenAvailable4readEP11IStreamBase
; demangled: Structs::v2IsQuestLowerThenAvailable::read(IStreamBase*)
; decoder-mode: arm
00505f1c  c5 ff ff ea                                      b #0x505e38

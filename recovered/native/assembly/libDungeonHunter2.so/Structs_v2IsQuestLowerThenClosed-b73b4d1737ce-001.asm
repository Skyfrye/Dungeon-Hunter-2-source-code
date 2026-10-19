; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c82b0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLowerThenClosed
; alias: _ZN7Structs24v2IsQuestLowerThenClosedD2Ev
; demangled: Structs::v2IsQuestLowerThenClosed::~v2IsQuestLowerThenClosed()
; decoder-mode: arm
004c82b0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c82b4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c82b8  10 40 2d e9                                      push {r4, lr}
004c82bc  03 30 8f e0                                      add r3, pc, r3
004c82c0  02 20 93 e7                                      ldr r2, [r3, r2]
004c82c4  00 40 a0 e1                                      mov r4, r0
004c82c8  08 20 82 e2                                      add r2, r2, #8
004c82cc  00 20 80 e5                                      str r2, [r0]
004c82d0  b2 fe ff eb                                      bl #0x4c7da0
004c82d4  04 00 a0 e1                                      mov r0, r4
004c82d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c82dc  d4 c7 4c 00 50 12 00 00                          .byte 0xd4, 0xc7, 0x4c, 0x00, 0x50, 0x12, 0x00, 0x00

; FUNCTION 0x004c82e4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLowerThenClosed
; alias: _ZN7Structs24v2IsQuestLowerThenClosedD1Ev
; demangled: Structs::v2IsQuestLowerThenClosed::~v2IsQuestLowerThenClosed()
; decoder-mode: arm
004c82e4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c82e8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c82ec  10 40 2d e9                                      push {r4, lr}
004c82f0  03 30 8f e0                                      add r3, pc, r3
004c82f4  02 20 93 e7                                      ldr r2, [r3, r2]
004c82f8  00 40 a0 e1                                      mov r4, r0
004c82fc  08 20 82 e2                                      add r2, r2, #8
004c8300  00 20 80 e5                                      str r2, [r0]
004c8304  a5 fe ff eb                                      bl #0x4c7da0
004c8308  04 00 a0 e1                                      mov r0, r4
004c830c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8310  a0 c7 4c 00 50 12 00 00                          .byte 0xa0, 0xc7, 0x4c, 0x00, 0x50, 0x12, 0x00, 0x00

; FUNCTION 0x004c8318, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLowerThenClosed
; alias: _ZN7Structs24v2IsQuestLowerThenClosed8finalizeEv
; demangled: Structs::v2IsQuestLowerThenClosed::finalize()
; decoder-mode: arm
004c8318  ba fe ff ea                                      b #0x4c7e08

; FUNCTION 0x004cdb24, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestLowerThenClosed
; alias: _ZN7Structs24v2IsQuestLowerThenClosedD0Ev
; demangled: Structs::v2IsQuestLowerThenClosed::~v2IsQuestLowerThenClosed()
; decoder-mode: arm
004cdb24  10 40 2d e9                                      push {r4, lr}
004cdb28  00 40 a0 e1                                      mov r4, r0
004cdb2c  ec e9 ff eb                                      bl #0x4c82e4
004cdb30  04 00 a0 e1                                      mov r0, r4
004cdb34  41 0a f9 eb                                      bl #0x310440
004cdb38  04 00 a0 e1                                      mov r0, r4
004cdb3c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505f10, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLowerThenClosed
; alias: _ZN7Structs24v2IsQuestLowerThenClosed4readEP11IStreamBase
; demangled: Structs::v2IsQuestLowerThenClosed::read(IStreamBase*)
; decoder-mode: arm
00505f10  c8 ff ff ea                                      b #0x505e38

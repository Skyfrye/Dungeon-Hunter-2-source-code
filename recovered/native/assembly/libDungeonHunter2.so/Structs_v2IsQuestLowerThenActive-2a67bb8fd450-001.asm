; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c81d8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLowerThenActive
; alias: _ZN7Structs24v2IsQuestLowerThenActiveD2Ev
; demangled: Structs::v2IsQuestLowerThenActive::~v2IsQuestLowerThenActive()
; decoder-mode: arm
004c81d8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c81dc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c81e0  10 40 2d e9                                      push {r4, lr}
004c81e4  03 30 8f e0                                      add r3, pc, r3
004c81e8  02 20 93 e7                                      ldr r2, [r3, r2]
004c81ec  00 40 a0 e1                                      mov r4, r0
004c81f0  08 20 82 e2                                      add r2, r2, #8
004c81f4  00 20 80 e5                                      str r2, [r0]
004c81f8  e8 fe ff eb                                      bl #0x4c7da0
004c81fc  04 00 a0 e1                                      mov r0, r4
004c8200  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8204  ac c8 4c 00 50 14 00 00                          .byte 0xac, 0xc8, 0x4c, 0x00, 0x50, 0x14, 0x00, 0x00

; FUNCTION 0x004c820c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLowerThenActive
; alias: _ZN7Structs24v2IsQuestLowerThenActiveD1Ev
; demangled: Structs::v2IsQuestLowerThenActive::~v2IsQuestLowerThenActive()
; decoder-mode: arm
004c820c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8210  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8214  10 40 2d e9                                      push {r4, lr}
004c8218  03 30 8f e0                                      add r3, pc, r3
004c821c  02 20 93 e7                                      ldr r2, [r3, r2]
004c8220  00 40 a0 e1                                      mov r4, r0
004c8224  08 20 82 e2                                      add r2, r2, #8
004c8228  00 20 80 e5                                      str r2, [r0]
004c822c  db fe ff eb                                      bl #0x4c7da0
004c8230  04 00 a0 e1                                      mov r0, r4
004c8234  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8238  78 c8 4c 00 50 14 00 00                          .byte 0x78, 0xc8, 0x4c, 0x00, 0x50, 0x14, 0x00, 0x00

; FUNCTION 0x004c8240, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLowerThenActive
; alias: _ZN7Structs24v2IsQuestLowerThenActive8finalizeEv
; demangled: Structs::v2IsQuestLowerThenActive::finalize()
; decoder-mode: arm
004c8240  f0 fe ff ea                                      b #0x4c7e08

; FUNCTION 0x004cdb5c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestLowerThenActive
; alias: _ZN7Structs24v2IsQuestLowerThenActiveD0Ev
; demangled: Structs::v2IsQuestLowerThenActive::~v2IsQuestLowerThenActive()
; decoder-mode: arm
004cdb5c  10 40 2d e9                                      push {r4, lr}
004cdb60  00 40 a0 e1                                      mov r4, r0
004cdb64  a8 e9 ff eb                                      bl #0x4c820c
004cdb68  04 00 a0 e1                                      mov r0, r4
004cdb6c  33 0a f9 eb                                      bl #0x310440
004cdb70  04 00 a0 e1                                      mov r0, r4
004cdb74  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505f18, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLowerThenActive
; alias: _ZN7Structs24v2IsQuestLowerThenActive4readEP11IStreamBase
; demangled: Structs::v2IsQuestLowerThenActive::read(IStreamBase*)
; decoder-mode: arm
00505f18  c6 ff ff ea                                      b #0x505e38

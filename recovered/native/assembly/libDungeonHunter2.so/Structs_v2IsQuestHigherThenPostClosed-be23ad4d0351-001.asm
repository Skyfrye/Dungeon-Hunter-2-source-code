; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c85a4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestHigherThenPostClosed
; alias: _ZN7Structs29v2IsQuestHigherThenPostClosedD2Ev
; demangled: Structs::v2IsQuestHigherThenPostClosed::~v2IsQuestHigherThenPostClosed()
; decoder-mode: arm
004c85a4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c85a8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c85ac  10 40 2d e9                                      push {r4, lr}
004c85b0  03 30 8f e0                                      add r3, pc, r3
004c85b4  02 20 93 e7                                      ldr r2, [r3, r2]
004c85b8  00 40 a0 e1                                      mov r4, r0
004c85bc  08 20 82 e2                                      add r2, r2, #8
004c85c0  00 20 80 e5                                      str r2, [r0]
004c85c4  10 fe ff eb                                      bl #0x4c7e0c
004c85c8  04 00 a0 e1                                      mov r0, r4
004c85cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c85d0  e0 c4 4c 00 e8 42 00 00                          .byte 0xe0, 0xc4, 0x4c, 0x00, 0xe8, 0x42, 0x00, 0x00

; FUNCTION 0x004c85d8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestHigherThenPostClosed
; alias: _ZN7Structs29v2IsQuestHigherThenPostClosedD1Ev
; demangled: Structs::v2IsQuestHigherThenPostClosed::~v2IsQuestHigherThenPostClosed()
; decoder-mode: arm
004c85d8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c85dc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c85e0  10 40 2d e9                                      push {r4, lr}
004c85e4  03 30 8f e0                                      add r3, pc, r3
004c85e8  02 20 93 e7                                      ldr r2, [r3, r2]
004c85ec  00 40 a0 e1                                      mov r4, r0
004c85f0  08 20 82 e2                                      add r2, r2, #8
004c85f4  00 20 80 e5                                      str r2, [r0]
004c85f8  03 fe ff eb                                      bl #0x4c7e0c
004c85fc  04 00 a0 e1                                      mov r0, r4
004c8600  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8604  ac c4 4c 00 e8 42 00 00                          .byte 0xac, 0xc4, 0x4c, 0x00, 0xe8, 0x42, 0x00, 0x00

; FUNCTION 0x004c860c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestHigherThenPostClosed
; alias: _ZN7Structs29v2IsQuestHigherThenPostClosed8finalizeEv
; demangled: Structs::v2IsQuestHigherThenPostClosed::finalize()
; decoder-mode: arm
004c860c  18 fe ff ea                                      b #0x4c7e74

; FUNCTION 0x004cda44, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestHigherThenPostClosed
; alias: _ZN7Structs29v2IsQuestHigherThenPostClosedD0Ev
; demangled: Structs::v2IsQuestHigherThenPostClosed::~v2IsQuestHigherThenPostClosed()
; decoder-mode: arm
004cda44  10 40 2d e9                                      push {r4, lr}
004cda48  00 40 a0 e1                                      mov r4, r0
004cda4c  e1 ea ff eb                                      bl #0x4c85d8
004cda50  04 00 a0 e1                                      mov r0, r4
004cda54  79 0a f9 eb                                      bl #0x310440
004cda58  04 00 a0 e1                                      mov r0, r4
004cda5c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505e20, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestHigherThenPostClosed
; alias: _ZN7Structs29v2IsQuestHigherThenPostClosed4readEP11IStreamBase
; demangled: Structs::v2IsQuestHigherThenPostClosed::read(IStreamBase*)
; decoder-mode: arm
00505e20  c9 ff ff ea                                      b #0x505d4c

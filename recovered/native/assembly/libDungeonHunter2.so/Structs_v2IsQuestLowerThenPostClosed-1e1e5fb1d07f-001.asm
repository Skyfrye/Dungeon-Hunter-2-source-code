; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c831c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLowerThenPostClosed
; alias: _ZN7Structs28v2IsQuestLowerThenPostClosedD2Ev
; demangled: Structs::v2IsQuestLowerThenPostClosed::~v2IsQuestLowerThenPostClosed()
; decoder-mode: arm
004c831c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8320  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8324  10 40 2d e9                                      push {r4, lr}
004c8328  03 30 8f e0                                      add r3, pc, r3
004c832c  02 20 93 e7                                      ldr r2, [r3, r2]
004c8330  00 40 a0 e1                                      mov r4, r0
004c8334  08 20 82 e2                                      add r2, r2, #8
004c8338  00 20 80 e5                                      str r2, [r0]
004c833c  97 fe ff eb                                      bl #0x4c7da0
004c8340  04 00 a0 e1                                      mov r0, r4
004c8344  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8348  68 c7 4c 00 cc 4a 00 00                          .byte 0x68, 0xc7, 0x4c, 0x00, 0xcc, 0x4a, 0x00, 0x00

; FUNCTION 0x004c8350, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestLowerThenPostClosed
; alias: _ZN7Structs28v2IsQuestLowerThenPostClosedD1Ev
; demangled: Structs::v2IsQuestLowerThenPostClosed::~v2IsQuestLowerThenPostClosed()
; decoder-mode: arm
004c8350  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8354  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8358  10 40 2d e9                                      push {r4, lr}
004c835c  03 30 8f e0                                      add r3, pc, r3
004c8360  02 20 93 e7                                      ldr r2, [r3, r2]
004c8364  00 40 a0 e1                                      mov r4, r0
004c8368  08 20 82 e2                                      add r2, r2, #8
004c836c  00 20 80 e5                                      str r2, [r0]
004c8370  8a fe ff eb                                      bl #0x4c7da0
004c8374  04 00 a0 e1                                      mov r0, r4
004c8378  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c837c  34 c7 4c 00 cc 4a 00 00                          .byte 0x34, 0xc7, 0x4c, 0x00, 0xcc, 0x4a, 0x00, 0x00

; FUNCTION 0x004c8384, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLowerThenPostClosed
; alias: _ZN7Structs28v2IsQuestLowerThenPostClosed8finalizeEv
; demangled: Structs::v2IsQuestLowerThenPostClosed::finalize()
; decoder-mode: arm
004c8384  9f fe ff ea                                      b #0x4c7e08

; FUNCTION 0x004cdb08, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestLowerThenPostClosed
; alias: _ZN7Structs28v2IsQuestLowerThenPostClosedD0Ev
; demangled: Structs::v2IsQuestLowerThenPostClosed::~v2IsQuestLowerThenPostClosed()
; decoder-mode: arm
004cdb08  10 40 2d e9                                      push {r4, lr}
004cdb0c  00 40 a0 e1                                      mov r4, r0
004cdb10  0e ea ff eb                                      bl #0x4c8350
004cdb14  04 00 a0 e1                                      mov r0, r4
004cdb18  48 0a f9 eb                                      bl #0x310440
004cdb1c  04 00 a0 e1                                      mov r0, r4
004cdb20  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505f0c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestLowerThenPostClosed
; alias: _ZN7Structs28v2IsQuestLowerThenPostClosed4readEP11IStreamBase
; demangled: Structs::v2IsQuestLowerThenPostClosed::read(IStreamBase*)
; decoder-mode: arm
00505f0c  c9 ff ff ea                                      b #0x505e38

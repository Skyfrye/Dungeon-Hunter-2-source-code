; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8028, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestClosed
; alias: _ZN7Structs15v2IsQuestClosedD2Ev
; demangled: Structs::v2IsQuestClosed::~v2IsQuestClosed()
; decoder-mode: arm
004c8028  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c802c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8030  10 40 2d e9                                      push {r4, lr}
004c8034  03 30 8f e0                                      add r3, pc, r3
004c8038  02 20 93 e7                                      ldr r2, [r3, r2]
004c803c  00 40 a0 e1                                      mov r4, r0
004c8040  08 20 82 e2                                      add r2, r2, #8
004c8044  00 20 80 e5                                      str r2, [r0]
004c8048  39 ff ff eb                                      bl #0x4c7d34
004c804c  04 00 a0 e1                                      mov r0, r4
004c8050  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8054  5c ca 4c 00 b4 3a 00 00                          .byte 0x5c, 0xca, 0x4c, 0x00, 0xb4, 0x3a, 0x00, 0x00

; FUNCTION 0x004c805c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestClosed
; alias: _ZN7Structs15v2IsQuestClosedD1Ev
; demangled: Structs::v2IsQuestClosed::~v2IsQuestClosed()
; decoder-mode: arm
004c805c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8060  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8064  10 40 2d e9                                      push {r4, lr}
004c8068  03 30 8f e0                                      add r3, pc, r3
004c806c  02 20 93 e7                                      ldr r2, [r3, r2]
004c8070  00 40 a0 e1                                      mov r4, r0
004c8074  08 20 82 e2                                      add r2, r2, #8
004c8078  00 20 80 e5                                      str r2, [r0]
004c807c  2c ff ff eb                                      bl #0x4c7d34
004c8080  04 00 a0 e1                                      mov r0, r4
004c8084  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8088  28 ca 4c 00 b4 3a 00 00                          .byte 0x28, 0xca, 0x4c, 0x00, 0xb4, 0x3a, 0x00, 0x00

; FUNCTION 0x004c8090, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestClosed
; alias: _ZN7Structs15v2IsQuestClosed8finalizeEv
; demangled: Structs::v2IsQuestClosed::finalize()
; decoder-mode: arm
004c8090  41 ff ff ea                                      b #0x4c7d9c

; FUNCTION 0x004cdbe8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestClosed
; alias: _ZN7Structs15v2IsQuestClosedD0Ev
; demangled: Structs::v2IsQuestClosed::~v2IsQuestClosed()
; decoder-mode: arm
004cdbe8  10 40 2d e9                                      push {r4, lr}
004cdbec  00 40 a0 e1                                      mov r4, r0
004cdbf0  19 e9 ff eb                                      bl #0x4c805c
004cdbf4  04 00 a0 e1                                      mov r0, r4
004cdbf8  10 0a f9 eb                                      bl #0x310440
004cdbfc  04 00 a0 e1                                      mov r0, r4
004cdc00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505ffc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestClosed
; alias: _ZN7Structs15v2IsQuestClosed4readEP11IStreamBase
; demangled: Structs::v2IsQuestClosed::read(IStreamBase*)
; decoder-mode: arm
00505ffc  c8 ff ff ea                                      b #0x505f24

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c867c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsEventActive
; alias: _ZN7Structs15v2IsEventActiveD2Ev
; demangled: Structs::v2IsEventActive::~v2IsEventActive()
; decoder-mode: arm
004c867c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8680  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8684  10 40 2d e9                                      push {r4, lr}
004c8688  03 30 8f e0                                      add r3, pc, r3
004c868c  02 20 93 e7                                      ldr r2, [r3, r2]
004c8690  00 40 a0 e1                                      mov r4, r0
004c8694  08 20 82 e2                                      add r2, r2, #8
004c8698  00 20 80 e5                                      str r2, [r0]
004c869c  db ff ff eb                                      bl #0x4c8610
004c86a0  04 00 a0 e1                                      mov r0, r4
004c86a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c86a8  08 c4 4c 00 38 2a 00 00                          .byte 0x08, 0xc4, 0x4c, 0x00, 0x38, 0x2a, 0x00, 0x00

; FUNCTION 0x004c86b0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsEventActive
; alias: _ZN7Structs15v2IsEventActiveD1Ev
; demangled: Structs::v2IsEventActive::~v2IsEventActive()
; decoder-mode: arm
004c86b0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c86b4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c86b8  10 40 2d e9                                      push {r4, lr}
004c86bc  03 30 8f e0                                      add r3, pc, r3
004c86c0  02 20 93 e7                                      ldr r2, [r3, r2]
004c86c4  00 40 a0 e1                                      mov r4, r0
004c86c8  08 20 82 e2                                      add r2, r2, #8
004c86cc  00 20 80 e5                                      str r2, [r0]
004c86d0  ce ff ff eb                                      bl #0x4c8610
004c86d4  04 00 a0 e1                                      mov r0, r4
004c86d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c86dc  d4 c3 4c 00 38 2a 00 00                          .byte 0xd4, 0xc3, 0x4c, 0x00, 0x38, 0x2a, 0x00, 0x00

; FUNCTION 0x004c86e4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsEventActive
; alias: _ZN7Structs15v2IsEventActive8finalizeEv
; demangled: Structs::v2IsEventActive::finalize()
; decoder-mode: arm
004c86e4  e3 ff ff ea                                      b #0x4c8678

; FUNCTION 0x004cd9f0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsEventActive
; alias: _ZN7Structs15v2IsEventActiveD0Ev
; demangled: Structs::v2IsEventActive::~v2IsEventActive()
; decoder-mode: arm
004cd9f0  10 40 2d e9                                      push {r4, lr}
004cd9f4  00 40 a0 e1                                      mov r4, r0
004cd9f8  2c eb ff eb                                      bl #0x4c86b0
004cd9fc  04 00 a0 e1                                      mov r0, r4
004cda00  8e 0a f9 eb                                      bl #0x310440
004cda04  04 00 a0 e1                                      mov r0, r4
004cda08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505c74, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsEventActive
; alias: _ZN7Structs15v2IsEventActive4readEP11IStreamBase
; demangled: Structs::v2IsEventActive::read(IStreamBase*)
; decoder-mode: arm
00505c74  c7 ff ff ea                                      b #0x505b98

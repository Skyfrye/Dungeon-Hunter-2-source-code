; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c86e8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsEventInactive
; alias: _ZN7Structs17v2IsEventInactiveD2Ev
; demangled: Structs::v2IsEventInactive::~v2IsEventInactive()
; decoder-mode: arm
004c86e8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c86ec  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c86f0  10 40 2d e9                                      push {r4, lr}
004c86f4  03 30 8f e0                                      add r3, pc, r3
004c86f8  02 20 93 e7                                      ldr r2, [r3, r2]
004c86fc  00 40 a0 e1                                      mov r4, r0
004c8700  08 20 82 e2                                      add r2, r2, #8
004c8704  00 20 80 e5                                      str r2, [r0]
004c8708  c0 ff ff eb                                      bl #0x4c8610
004c870c  04 00 a0 e1                                      mov r0, r4
004c8710  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8714  9c c3 4c 00 50 27 00 00                          .byte 0x9c, 0xc3, 0x4c, 0x00, 0x50, 0x27, 0x00, 0x00

; FUNCTION 0x004c871c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsEventInactive
; alias: _ZN7Structs17v2IsEventInactiveD1Ev
; demangled: Structs::v2IsEventInactive::~v2IsEventInactive()
; decoder-mode: arm
004c871c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8720  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8724  10 40 2d e9                                      push {r4, lr}
004c8728  03 30 8f e0                                      add r3, pc, r3
004c872c  02 20 93 e7                                      ldr r2, [r3, r2]
004c8730  00 40 a0 e1                                      mov r4, r0
004c8734  08 20 82 e2                                      add r2, r2, #8
004c8738  00 20 80 e5                                      str r2, [r0]
004c873c  b3 ff ff eb                                      bl #0x4c8610
004c8740  04 00 a0 e1                                      mov r0, r4
004c8744  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8748  68 c3 4c 00 50 27 00 00                          .byte 0x68, 0xc3, 0x4c, 0x00, 0x50, 0x27, 0x00, 0x00

; FUNCTION 0x004c8750, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsEventInactive
; alias: _ZN7Structs17v2IsEventInactive8finalizeEv
; demangled: Structs::v2IsEventInactive::finalize()
; decoder-mode: arm
004c8750  c8 ff ff ea                                      b #0x4c8678

; FUNCTION 0x004cd9d4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsEventInactive
; alias: _ZN7Structs17v2IsEventInactiveD0Ev
; demangled: Structs::v2IsEventInactive::~v2IsEventInactive()
; decoder-mode: arm
004cd9d4  10 40 2d e9                                      push {r4, lr}
004cd9d8  00 40 a0 e1                                      mov r4, r0
004cd9dc  4e eb ff eb                                      bl #0x4c871c
004cd9e0  04 00 a0 e1                                      mov r0, r4
004cd9e4  95 0a f9 eb                                      bl #0x310440
004cd9e8  04 00 a0 e1                                      mov r0, r4
004cd9ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505c70, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsEventInactive
; alias: _ZN7Structs17v2IsEventInactive4readEP11IStreamBase
; demangled: Structs::v2IsEventInactive::read(IStreamBase*)
; decoder-mode: arm
00505c70  c8 ff ff ea                                      b #0x505b98

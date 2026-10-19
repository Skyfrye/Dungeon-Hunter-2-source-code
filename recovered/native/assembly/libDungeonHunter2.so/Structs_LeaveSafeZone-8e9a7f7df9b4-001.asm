; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c71e8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::LeaveSafeZone
; alias: _ZN7Structs13LeaveSafeZoneD2Ev
; demangled: Structs::LeaveSafeZone::~LeaveSafeZone()
; decoder-mode: arm
004c71e8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c71ec  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c71f0  10 40 2d e9                                      push {r4, lr}
004c71f4  03 30 8f e0                                      add r3, pc, r3
004c71f8  02 20 93 e7                                      ldr r2, [r3, r2]
004c71fc  00 40 a0 e1                                      mov r4, r0
004c7200  08 20 82 e2                                      add r2, r2, #8
004c7204  00 20 80 e5                                      str r2, [r0]
004c7208  94 fe ff eb                                      bl #0x4c6c60
004c720c  04 00 a0 e1                                      mov r0, r4
004c7210  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7214  9c d8 4c 00 34 3b 00 00                          .byte 0x9c, 0xd8, 0x4c, 0x00, 0x34, 0x3b, 0x00, 0x00

; FUNCTION 0x004c721c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::LeaveSafeZone
; alias: _ZN7Structs13LeaveSafeZoneD1Ev
; demangled: Structs::LeaveSafeZone::~LeaveSafeZone()
; decoder-mode: arm
004c721c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7220  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7224  10 40 2d e9                                      push {r4, lr}
004c7228  03 30 8f e0                                      add r3, pc, r3
004c722c  02 20 93 e7                                      ldr r2, [r3, r2]
004c7230  00 40 a0 e1                                      mov r4, r0
004c7234  08 20 82 e2                                      add r2, r2, #8
004c7238  00 20 80 e5                                      str r2, [r0]
004c723c  87 fe ff eb                                      bl #0x4c6c60
004c7240  04 00 a0 e1                                      mov r0, r4
004c7244  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7248  68 d8 4c 00 34 3b 00 00                          .byte 0x68, 0xd8, 0x4c, 0x00, 0x34, 0x3b, 0x00, 0x00

; FUNCTION 0x004c7250, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LeaveSafeZone
; alias: _ZN7Structs13LeaveSafeZone8finalizeEv
; demangled: Structs::LeaveSafeZone::finalize()
; decoder-mode: arm
004c7250  84 fe ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdfd8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::LeaveSafeZone
; alias: _ZN7Structs13LeaveSafeZoneD0Ev
; demangled: Structs::LeaveSafeZone::~LeaveSafeZone()
; decoder-mode: arm
004cdfd8  10 40 2d e9                                      push {r4, lr}
004cdfdc  00 40 a0 e1                                      mov r4, r0
004cdfe0  8d e4 ff eb                                      bl #0x4c721c
004cdfe4  04 00 a0 e1                                      mov r0, r4
004cdfe8  14 09 f9 eb                                      bl #0x310440
004cdfec  04 00 a0 e1                                      mov r0, r4
004cdff0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8c8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LeaveSafeZone
; alias: _ZN7Structs13LeaveSafeZone4readEP11IStreamBase
; demangled: Structs::LeaveSafeZone::read(IStreamBase*)
; decoder-mode: arm
004ff8c8  d6 ff ff ea                                      b #0x4ff828

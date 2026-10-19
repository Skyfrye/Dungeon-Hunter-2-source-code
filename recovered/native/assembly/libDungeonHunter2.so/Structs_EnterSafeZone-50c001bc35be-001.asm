; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c717c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::EnterSafeZone
; alias: _ZN7Structs13EnterSafeZoneD2Ev
; demangled: Structs::EnterSafeZone::~EnterSafeZone()
; decoder-mode: arm
004c717c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7180  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7184  10 40 2d e9                                      push {r4, lr}
004c7188  03 30 8f e0                                      add r3, pc, r3
004c718c  02 20 93 e7                                      ldr r2, [r3, r2]
004c7190  00 40 a0 e1                                      mov r4, r0
004c7194  08 20 82 e2                                      add r2, r2, #8
004c7198  00 20 80 e5                                      str r2, [r0]
004c719c  af fe ff eb                                      bl #0x4c6c60
004c71a0  04 00 a0 e1                                      mov r0, r4
004c71a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c71a8  08 d9 4c 00 a0 41 00 00                          .byte 0x08, 0xd9, 0x4c, 0x00, 0xa0, 0x41, 0x00, 0x00

; FUNCTION 0x004c71b0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::EnterSafeZone
; alias: _ZN7Structs13EnterSafeZoneD1Ev
; demangled: Structs::EnterSafeZone::~EnterSafeZone()
; decoder-mode: arm
004c71b0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c71b4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c71b8  10 40 2d e9                                      push {r4, lr}
004c71bc  03 30 8f e0                                      add r3, pc, r3
004c71c0  02 20 93 e7                                      ldr r2, [r3, r2]
004c71c4  00 40 a0 e1                                      mov r4, r0
004c71c8  08 20 82 e2                                      add r2, r2, #8
004c71cc  00 20 80 e5                                      str r2, [r0]
004c71d0  a2 fe ff eb                                      bl #0x4c6c60
004c71d4  04 00 a0 e1                                      mov r0, r4
004c71d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c71dc  d4 d8 4c 00 a0 41 00 00                          .byte 0xd4, 0xd8, 0x4c, 0x00, 0xa0, 0x41, 0x00, 0x00

; FUNCTION 0x004c71e4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::EnterSafeZone
; alias: _ZN7Structs13EnterSafeZone8finalizeEv
; demangled: Structs::EnterSafeZone::finalize()
; decoder-mode: arm
004c71e4  9f fe ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdff4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::EnterSafeZone
; alias: _ZN7Structs13EnterSafeZoneD0Ev
; demangled: Structs::EnterSafeZone::~EnterSafeZone()
; decoder-mode: arm
004cdff4  10 40 2d e9                                      push {r4, lr}
004cdff8  00 40 a0 e1                                      mov r4, r0
004cdffc  6b e4 ff eb                                      bl #0x4c71b0
004ce000  04 00 a0 e1                                      mov r0, r4
004ce004  0d 09 f9 eb                                      bl #0x310440
004ce008  04 00 a0 e1                                      mov r0, r4
004ce00c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8cc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::EnterSafeZone
; alias: _ZN7Structs13EnterSafeZone4readEP11IStreamBase
; demangled: Structs::EnterSafeZone::read(IStreamBase*)
; decoder-mode: arm
004ff8cc  d5 ff ff ea                                      b #0x4ff828

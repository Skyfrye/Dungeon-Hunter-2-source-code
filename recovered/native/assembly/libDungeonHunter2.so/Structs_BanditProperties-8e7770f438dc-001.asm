; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5e74, declared_size=52, range_size=52, mode=arm
; class-group: Structs::BanditProperties
; alias: _ZN7Structs16BanditPropertiesD2Ev
; demangled: Structs::BanditProperties::~BanditProperties()
; decoder-mode: arm
004c5e74  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5e78  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5e7c  10 40 2d e9                                      push {r4, lr}
004c5e80  03 30 8f e0                                      add r3, pc, r3
004c5e84  02 20 93 e7                                      ldr r2, [r3, r2]
004c5e88  00 40 a0 e1                                      mov r4, r0
004c5e8c  08 20 82 e2                                      add r2, r2, #8
004c5e90  00 20 80 e5                                      str r2, [r0]
004c5e94  28 fe ff eb                                      bl #0x4c573c
004c5e98  04 00 a0 e1                                      mov r0, r4
004c5e9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5ea0  10 ec 4c 00 24 15 00 00                          .byte 0x10, 0xec, 0x4c, 0x00, 0x24, 0x15, 0x00, 0x00

; FUNCTION 0x004c5ea8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::BanditProperties
; alias: _ZN7Structs16BanditPropertiesD1Ev
; demangled: Structs::BanditProperties::~BanditProperties()
; decoder-mode: arm
004c5ea8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5eac  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5eb0  10 40 2d e9                                      push {r4, lr}
004c5eb4  03 30 8f e0                                      add r3, pc, r3
004c5eb8  02 20 93 e7                                      ldr r2, [r3, r2]
004c5ebc  00 40 a0 e1                                      mov r4, r0
004c5ec0  08 20 82 e2                                      add r2, r2, #8
004c5ec4  00 20 80 e5                                      str r2, [r0]
004c5ec8  1b fe ff eb                                      bl #0x4c573c
004c5ecc  04 00 a0 e1                                      mov r0, r4
004c5ed0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5ed4  dc eb 4c 00 24 15 00 00                          .byte 0xdc, 0xeb, 0x4c, 0x00, 0x24, 0x15, 0x00, 0x00

; FUNCTION 0x004c5edc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::BanditProperties
; alias: _ZN7Structs16BanditProperties8finalizeEv
; demangled: Structs::BanditProperties::finalize()
; decoder-mode: arm
004c5edc  18 fe ff ea                                      b #0x4c5744

; FUNCTION 0x004ce79c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::BanditProperties
; alias: _ZN7Structs16BanditPropertiesD0Ev
; demangled: Structs::BanditProperties::~BanditProperties()
; decoder-mode: arm
004ce79c  10 40 2d e9                                      push {r4, lr}
004ce7a0  00 40 a0 e1                                      mov r4, r0
004ce7a4  bf dd ff eb                                      bl #0x4c5ea8
004ce7a8  04 00 a0 e1                                      mov r0, r4
004ce7ac  23 07 f9 eb                                      bl #0x310440
004ce7b0  04 00 a0 e1                                      mov r0, r4
004ce7b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7ad0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::BanditProperties
; alias: _ZN7Structs16BanditProperties4readEP11IStreamBase
; demangled: Structs::BanditProperties::read(IStreamBase*)
; decoder-mode: arm
004f7ad0  1e eb ff ea                                      b #0x4f2750

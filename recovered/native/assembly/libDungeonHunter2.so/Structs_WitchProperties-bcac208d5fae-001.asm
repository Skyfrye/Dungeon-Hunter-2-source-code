; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5bec, declared_size=52, range_size=52, mode=arm
; class-group: Structs::WitchProperties
; alias: _ZN7Structs15WitchPropertiesD2Ev
; demangled: Structs::WitchProperties::~WitchProperties()
; decoder-mode: arm
004c5bec  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5bf0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5bf4  10 40 2d e9                                      push {r4, lr}
004c5bf8  03 30 8f e0                                      add r3, pc, r3
004c5bfc  02 20 93 e7                                      ldr r2, [r3, r2]
004c5c00  00 40 a0 e1                                      mov r4, r0
004c5c04  08 20 82 e2                                      add r2, r2, #8
004c5c08  00 20 80 e5                                      str r2, [r0]
004c5c0c  ca fe ff eb                                      bl #0x4c573c
004c5c10  04 00 a0 e1                                      mov r0, r4
004c5c14  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5c18  98 ee 4c 00 b8 05 00 00                          .byte 0x98, 0xee, 0x4c, 0x00, 0xb8, 0x05, 0x00, 0x00

; FUNCTION 0x004c5c20, declared_size=52, range_size=52, mode=arm
; class-group: Structs::WitchProperties
; alias: _ZN7Structs15WitchPropertiesD1Ev
; demangled: Structs::WitchProperties::~WitchProperties()
; decoder-mode: arm
004c5c20  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5c24  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5c28  10 40 2d e9                                      push {r4, lr}
004c5c2c  03 30 8f e0                                      add r3, pc, r3
004c5c30  02 20 93 e7                                      ldr r2, [r3, r2]
004c5c34  00 40 a0 e1                                      mov r4, r0
004c5c38  08 20 82 e2                                      add r2, r2, #8
004c5c3c  00 20 80 e5                                      str r2, [r0]
004c5c40  bd fe ff eb                                      bl #0x4c573c
004c5c44  04 00 a0 e1                                      mov r0, r4
004c5c48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5c4c  64 ee 4c 00 b8 05 00 00                          .byte 0x64, 0xee, 0x4c, 0x00, 0xb8, 0x05, 0x00, 0x00

; FUNCTION 0x004c5c54, declared_size=4, range_size=4, mode=arm
; class-group: Structs::WitchProperties
; alias: _ZN7Structs15WitchProperties8finalizeEv
; demangled: Structs::WitchProperties::finalize()
; decoder-mode: arm
004c5c54  ba fe ff ea                                      b #0x4c5744

; FUNCTION 0x004ce844, declared_size=28, range_size=28, mode=arm
; class-group: Structs::WitchProperties
; alias: _ZN7Structs15WitchPropertiesD0Ev
; demangled: Structs::WitchProperties::~WitchProperties()
; decoder-mode: arm
004ce844  10 40 2d e9                                      push {r4, lr}
004ce848  00 40 a0 e1                                      mov r4, r0
004ce84c  f3 dc ff eb                                      bl #0x4c5c20
004ce850  04 00 a0 e1                                      mov r0, r4
004ce854  f9 06 f9 eb                                      bl #0x310440
004ce858  04 00 a0 e1                                      mov r0, r4
004ce85c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7ae8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::WitchProperties
; alias: _ZN7Structs15WitchProperties4readEP11IStreamBase
; demangled: Structs::WitchProperties::read(IStreamBase*)
; decoder-mode: arm
004f7ae8  18 eb ff ea                                      b #0x4f2750

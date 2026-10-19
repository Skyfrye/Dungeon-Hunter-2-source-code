; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5b80, declared_size=52, range_size=52, mode=arm
; class-group: Structs::TrollKingProperties
; alias: _ZN7Structs19TrollKingPropertiesD2Ev
; demangled: Structs::TrollKingProperties::~TrollKingProperties()
; decoder-mode: arm
004c5b80  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5b84  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5b88  10 40 2d e9                                      push {r4, lr}
004c5b8c  03 30 8f e0                                      add r3, pc, r3
004c5b90  02 20 93 e7                                      ldr r2, [r3, r2]
004c5b94  00 40 a0 e1                                      mov r4, r0
004c5b98  08 20 82 e2                                      add r2, r2, #8
004c5b9c  00 20 80 e5                                      str r2, [r0]
004c5ba0  e5 fe ff eb                                      bl #0x4c573c
004c5ba4  04 00 a0 e1                                      mov r0, r4
004c5ba8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5bac  04 ef 4c 00 24 24 00 00                          .byte 0x04, 0xef, 0x4c, 0x00, 0x24, 0x24, 0x00, 0x00

; FUNCTION 0x004c5bb4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::TrollKingProperties
; alias: _ZN7Structs19TrollKingPropertiesD1Ev
; demangled: Structs::TrollKingProperties::~TrollKingProperties()
; decoder-mode: arm
004c5bb4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5bb8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5bbc  10 40 2d e9                                      push {r4, lr}
004c5bc0  03 30 8f e0                                      add r3, pc, r3
004c5bc4  02 20 93 e7                                      ldr r2, [r3, r2]
004c5bc8  00 40 a0 e1                                      mov r4, r0
004c5bcc  08 20 82 e2                                      add r2, r2, #8
004c5bd0  00 20 80 e5                                      str r2, [r0]
004c5bd4  d8 fe ff eb                                      bl #0x4c573c
004c5bd8  04 00 a0 e1                                      mov r0, r4
004c5bdc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5be0  d0 ee 4c 00 24 24 00 00                          .byte 0xd0, 0xee, 0x4c, 0x00, 0x24, 0x24, 0x00, 0x00

; FUNCTION 0x004c5be8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::TrollKingProperties
; alias: _ZN7Structs19TrollKingProperties8finalizeEv
; demangled: Structs::TrollKingProperties::finalize()
; decoder-mode: arm
004c5be8  d5 fe ff ea                                      b #0x4c5744

; FUNCTION 0x004ce860, declared_size=28, range_size=28, mode=arm
; class-group: Structs::TrollKingProperties
; alias: _ZN7Structs19TrollKingPropertiesD0Ev
; demangled: Structs::TrollKingProperties::~TrollKingProperties()
; decoder-mode: arm
004ce860  10 40 2d e9                                      push {r4, lr}
004ce864  00 40 a0 e1                                      mov r4, r0
004ce868  d1 dc ff eb                                      bl #0x4c5bb4
004ce86c  04 00 a0 e1                                      mov r0, r4
004ce870  f2 06 f9 eb                                      bl #0x310440
004ce874  04 00 a0 e1                                      mov r0, r4
004ce878  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7aec, declared_size=4, range_size=4, mode=arm
; class-group: Structs::TrollKingProperties
; alias: _ZN7Structs19TrollKingProperties4readEP11IStreamBase
; demangled: Structs::TrollKingProperties::read(IStreamBase*)
; decoder-mode: arm
004f7aec  17 eb ff ea                                      b #0x4f2750

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5c58, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SlimeProperties
; alias: _ZN7Structs15SlimePropertiesD2Ev
; demangled: Structs::SlimeProperties::~SlimeProperties()
; decoder-mode: arm
004c5c58  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5c5c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5c60  10 40 2d e9                                      push {r4, lr}
004c5c64  03 30 8f e0                                      add r3, pc, r3
004c5c68  02 20 93 e7                                      ldr r2, [r3, r2]
004c5c6c  00 40 a0 e1                                      mov r4, r0
004c5c70  08 20 82 e2                                      add r2, r2, #8
004c5c74  00 20 80 e5                                      str r2, [r0]
004c5c78  af fe ff eb                                      bl #0x4c573c
004c5c7c  04 00 a0 e1                                      mov r0, r4
004c5c80  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5c84  2c ee 4c 00 78 0c 00 00                          .byte 0x2c, 0xee, 0x4c, 0x00, 0x78, 0x0c, 0x00, 0x00

; FUNCTION 0x004c5c8c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SlimeProperties
; alias: _ZN7Structs15SlimePropertiesD1Ev
; demangled: Structs::SlimeProperties::~SlimeProperties()
; decoder-mode: arm
004c5c8c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5c90  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5c94  10 40 2d e9                                      push {r4, lr}
004c5c98  03 30 8f e0                                      add r3, pc, r3
004c5c9c  02 20 93 e7                                      ldr r2, [r3, r2]
004c5ca0  00 40 a0 e1                                      mov r4, r0
004c5ca4  08 20 82 e2                                      add r2, r2, #8
004c5ca8  00 20 80 e5                                      str r2, [r0]
004c5cac  a2 fe ff eb                                      bl #0x4c573c
004c5cb0  04 00 a0 e1                                      mov r0, r4
004c5cb4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5cb8  f8 ed 4c 00 78 0c 00 00                          .byte 0xf8, 0xed, 0x4c, 0x00, 0x78, 0x0c, 0x00, 0x00

; FUNCTION 0x004c5cc0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SlimeProperties
; alias: _ZN7Structs15SlimeProperties8finalizeEv
; demangled: Structs::SlimeProperties::finalize()
; decoder-mode: arm
004c5cc0  9f fe ff ea                                      b #0x4c5744

; FUNCTION 0x004ce828, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SlimeProperties
; alias: _ZN7Structs15SlimePropertiesD0Ev
; demangled: Structs::SlimeProperties::~SlimeProperties()
; decoder-mode: arm
004ce828  10 40 2d e9                                      push {r4, lr}
004ce82c  00 40 a0 e1                                      mov r4, r0
004ce830  15 dd ff eb                                      bl #0x4c5c8c
004ce834  04 00 a0 e1                                      mov r0, r4
004ce838  00 07 f9 eb                                      bl #0x310440
004ce83c  04 00 a0 e1                                      mov r0, r4
004ce840  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7ae4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SlimeProperties
; alias: _ZN7Structs15SlimeProperties4readEP11IStreamBase
; demangled: Structs::SlimeProperties::read(IStreamBase*)
; decoder-mode: arm
004f7ae4  19 eb ff ea                                      b #0x4f2750

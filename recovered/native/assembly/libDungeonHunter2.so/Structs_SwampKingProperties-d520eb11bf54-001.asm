; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5a3c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SwampKingProperties
; alias: _ZN7Structs19SwampKingPropertiesD2Ev
; demangled: Structs::SwampKingProperties::~SwampKingProperties()
; decoder-mode: arm
004c5a3c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5a40  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5a44  10 40 2d e9                                      push {r4, lr}
004c5a48  03 30 8f e0                                      add r3, pc, r3
004c5a4c  02 20 93 e7                                      ldr r2, [r3, r2]
004c5a50  00 40 a0 e1                                      mov r4, r0
004c5a54  08 20 82 e2                                      add r2, r2, #8
004c5a58  00 20 80 e5                                      str r2, [r0]
004c5a5c  36 ff ff eb                                      bl #0x4c573c
004c5a60  04 00 a0 e1                                      mov r0, r4
004c5a64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5a68  48 f0 4c 00 8c 18 00 00                          .byte 0x48, 0xf0, 0x4c, 0x00, 0x8c, 0x18, 0x00, 0x00

; FUNCTION 0x004c5a70, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SwampKingProperties
; alias: _ZN7Structs19SwampKingPropertiesD1Ev
; demangled: Structs::SwampKingProperties::~SwampKingProperties()
; decoder-mode: arm
004c5a70  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5a74  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5a78  10 40 2d e9                                      push {r4, lr}
004c5a7c  03 30 8f e0                                      add r3, pc, r3
004c5a80  02 20 93 e7                                      ldr r2, [r3, r2]
004c5a84  00 40 a0 e1                                      mov r4, r0
004c5a88  08 20 82 e2                                      add r2, r2, #8
004c5a8c  00 20 80 e5                                      str r2, [r0]
004c5a90  29 ff ff eb                                      bl #0x4c573c
004c5a94  04 00 a0 e1                                      mov r0, r4
004c5a98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5a9c  14 f0 4c 00 8c 18 00 00                          .byte 0x14, 0xf0, 0x4c, 0x00, 0x8c, 0x18, 0x00, 0x00

; FUNCTION 0x004c5aa4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SwampKingProperties
; alias: _ZN7Structs19SwampKingProperties8finalizeEv
; demangled: Structs::SwampKingProperties::finalize()
; decoder-mode: arm
004c5aa4  26 ff ff ea                                      b #0x4c5744

; FUNCTION 0x004ce8b4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SwampKingProperties
; alias: _ZN7Structs19SwampKingPropertiesD0Ev
; demangled: Structs::SwampKingProperties::~SwampKingProperties()
; decoder-mode: arm
004ce8b4  10 40 2d e9                                      push {r4, lr}
004ce8b8  00 40 a0 e1                                      mov r4, r0
004ce8bc  6b dc ff eb                                      bl #0x4c5a70
004ce8c0  04 00 a0 e1                                      mov r0, r4
004ce8c4  dd 06 f9 eb                                      bl #0x310440
004ce8c8  04 00 a0 e1                                      mov r0, r4
004ce8cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7af8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SwampKingProperties
; alias: _ZN7Structs19SwampKingProperties4readEP11IStreamBase
; demangled: Structs::SwampKingProperties::read(IStreamBase*)
; decoder-mode: arm
004f7af8  14 eb ff ea                                      b #0x4f2750

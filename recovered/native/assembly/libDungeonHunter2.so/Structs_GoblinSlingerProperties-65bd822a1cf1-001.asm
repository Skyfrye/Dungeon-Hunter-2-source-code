; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6168, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GoblinSlingerProperties
; alias: _ZN7Structs23GoblinSlingerPropertiesD2Ev
; demangled: Structs::GoblinSlingerProperties::~GoblinSlingerProperties()
; decoder-mode: arm
004c6168  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c616c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6170  10 40 2d e9                                      push {r4, lr}
004c6174  03 30 8f e0                                      add r3, pc, r3
004c6178  02 20 93 e7                                      ldr r2, [r3, r2]
004c617c  00 40 a0 e1                                      mov r4, r0
004c6180  08 20 82 e2                                      add r2, r2, #8
004c6184  00 20 80 e5                                      str r2, [r0]
004c6188  6b fd ff eb                                      bl #0x4c573c
004c618c  04 00 a0 e1                                      mov r0, r4
004c6190  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6194  1c e9 4c 00 e0 3b 00 00                          .byte 0x1c, 0xe9, 0x4c, 0x00, 0xe0, 0x3b, 0x00, 0x00

; FUNCTION 0x004c619c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GoblinSlingerProperties
; alias: _ZN7Structs23GoblinSlingerPropertiesD1Ev
; demangled: Structs::GoblinSlingerProperties::~GoblinSlingerProperties()
; decoder-mode: arm
004c619c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c61a0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c61a4  10 40 2d e9                                      push {r4, lr}
004c61a8  03 30 8f e0                                      add r3, pc, r3
004c61ac  02 20 93 e7                                      ldr r2, [r3, r2]
004c61b0  00 40 a0 e1                                      mov r4, r0
004c61b4  08 20 82 e2                                      add r2, r2, #8
004c61b8  00 20 80 e5                                      str r2, [r0]
004c61bc  5e fd ff eb                                      bl #0x4c573c
004c61c0  04 00 a0 e1                                      mov r0, r4
004c61c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c61c8  e8 e8 4c 00 e0 3b 00 00                          .byte 0xe8, 0xe8, 0x4c, 0x00, 0xe0, 0x3b, 0x00, 0x00

; FUNCTION 0x004c61d0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GoblinSlingerProperties
; alias: _ZN7Structs23GoblinSlingerProperties8finalizeEv
; demangled: Structs::GoblinSlingerProperties::finalize()
; decoder-mode: arm
004c61d0  5b fd ff ea                                      b #0x4c5744

; FUNCTION 0x004ce6d8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GoblinSlingerProperties
; alias: _ZN7Structs23GoblinSlingerPropertiesD0Ev
; demangled: Structs::GoblinSlingerProperties::~GoblinSlingerProperties()
; decoder-mode: arm
004ce6d8  10 40 2d e9                                      push {r4, lr}
004ce6dc  00 40 a0 e1                                      mov r4, r0
004ce6e0  ad de ff eb                                      bl #0x4c619c
004ce6e4  04 00 a0 e1                                      mov r0, r4
004ce6e8  54 07 f9 eb                                      bl #0x310440
004ce6ec  04 00 a0 e1                                      mov r0, r4
004ce6f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7ab4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GoblinSlingerProperties
; alias: _ZN7Structs23GoblinSlingerProperties4readEP11IStreamBase
; demangled: Structs::GoblinSlingerProperties::read(IStreamBase*)
; decoder-mode: arm
004f7ab4  25 eb ff ea                                      b #0x4f2750

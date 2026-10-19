; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c645c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AssassinProperties
; alias: _ZN7Structs18AssassinPropertiesD2Ev
; demangled: Structs::AssassinProperties::~AssassinProperties()
; decoder-mode: arm
004c645c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6460  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6464  10 40 2d e9                                      push {r4, lr}
004c6468  03 30 8f e0                                      add r3, pc, r3
004c646c  02 20 93 e7                                      ldr r2, [r3, r2]
004c6470  00 40 a0 e1                                      mov r4, r0
004c6474  08 20 82 e2                                      add r2, r2, #8
004c6478  00 20 80 e5                                      str r2, [r0]
004c647c  ae fc ff eb                                      bl #0x4c573c
004c6480  04 00 a0 e1                                      mov r0, r4
004c6484  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6488  28 e6 4c 00 e0 49 00 00                          .byte 0x28, 0xe6, 0x4c, 0x00, 0xe0, 0x49, 0x00, 0x00

; FUNCTION 0x004c6490, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AssassinProperties
; alias: _ZN7Structs18AssassinPropertiesD1Ev
; demangled: Structs::AssassinProperties::~AssassinProperties()
; decoder-mode: arm
004c6490  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6494  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6498  10 40 2d e9                                      push {r4, lr}
004c649c  03 30 8f e0                                      add r3, pc, r3
004c64a0  02 20 93 e7                                      ldr r2, [r3, r2]
004c64a4  00 40 a0 e1                                      mov r4, r0
004c64a8  08 20 82 e2                                      add r2, r2, #8
004c64ac  00 20 80 e5                                      str r2, [r0]
004c64b0  a1 fc ff eb                                      bl #0x4c573c
004c64b4  04 00 a0 e1                                      mov r0, r4
004c64b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c64bc  f4 e5 4c 00 e0 49 00 00                          .byte 0xf4, 0xe5, 0x4c, 0x00, 0xe0, 0x49, 0x00, 0x00

; FUNCTION 0x004c64c4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AssassinProperties
; alias: _ZN7Structs18AssassinProperties8finalizeEv
; demangled: Structs::AssassinProperties::finalize()
; decoder-mode: arm
004c64c4  9e fc ff ea                                      b #0x4c5744

; FUNCTION 0x004ce614, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AssassinProperties
; alias: _ZN7Structs18AssassinPropertiesD0Ev
; demangled: Structs::AssassinProperties::~AssassinProperties()
; decoder-mode: arm
004ce614  10 40 2d e9                                      push {r4, lr}
004ce618  00 40 a0 e1                                      mov r4, r0
004ce61c  9b df ff eb                                      bl #0x4c6490
004ce620  04 00 a0 e1                                      mov r0, r4
004ce624  85 07 f9 eb                                      bl #0x310440
004ce628  04 00 a0 e1                                      mov r0, r4
004ce62c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a98, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AssassinProperties
; alias: _ZN7Structs18AssassinProperties4readEP11IStreamBase
; demangled: Structs::AssassinProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a98  2c eb ff ea                                      b #0x4f2750

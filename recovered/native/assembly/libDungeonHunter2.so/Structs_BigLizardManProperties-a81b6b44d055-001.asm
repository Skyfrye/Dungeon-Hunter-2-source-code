; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c58f8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::BigLizardManProperties
; alias: _ZN7Structs22BigLizardManPropertiesD2Ev
; demangled: Structs::BigLizardManProperties::~BigLizardManProperties()
; decoder-mode: arm
004c58f8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c58fc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5900  10 40 2d e9                                      push {r4, lr}
004c5904  03 30 8f e0                                      add r3, pc, r3
004c5908  02 20 93 e7                                      ldr r2, [r3, r2]
004c590c  00 40 a0 e1                                      mov r4, r0
004c5910  08 20 82 e2                                      add r2, r2, #8
004c5914  00 20 80 e5                                      str r2, [r0]
004c5918  87 ff ff eb                                      bl #0x4c573c
004c591c  04 00 a0 e1                                      mov r0, r4
004c5920  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5924  8c f1 4c 00 a0 3f 00 00                          .byte 0x8c, 0xf1, 0x4c, 0x00, 0xa0, 0x3f, 0x00, 0x00

; FUNCTION 0x004c592c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::BigLizardManProperties
; alias: _ZN7Structs22BigLizardManPropertiesD1Ev
; demangled: Structs::BigLizardManProperties::~BigLizardManProperties()
; decoder-mode: arm
004c592c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5930  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5934  10 40 2d e9                                      push {r4, lr}
004c5938  03 30 8f e0                                      add r3, pc, r3
004c593c  02 20 93 e7                                      ldr r2, [r3, r2]
004c5940  00 40 a0 e1                                      mov r4, r0
004c5944  08 20 82 e2                                      add r2, r2, #8
004c5948  00 20 80 e5                                      str r2, [r0]
004c594c  7a ff ff eb                                      bl #0x4c573c
004c5950  04 00 a0 e1                                      mov r0, r4
004c5954  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5958  58 f1 4c 00 a0 3f 00 00                          .byte 0x58, 0xf1, 0x4c, 0x00, 0xa0, 0x3f, 0x00, 0x00

; FUNCTION 0x004c5960, declared_size=4, range_size=4, mode=arm
; class-group: Structs::BigLizardManProperties
; alias: _ZN7Structs22BigLizardManProperties8finalizeEv
; demangled: Structs::BigLizardManProperties::finalize()
; decoder-mode: arm
004c5960  77 ff ff ea                                      b #0x4c5744

; FUNCTION 0x004ce908, declared_size=28, range_size=28, mode=arm
; class-group: Structs::BigLizardManProperties
; alias: _ZN7Structs22BigLizardManPropertiesD0Ev
; demangled: Structs::BigLizardManProperties::~BigLizardManProperties()
; decoder-mode: arm
004ce908  10 40 2d e9                                      push {r4, lr}
004ce90c  00 40 a0 e1                                      mov r4, r0
004ce910  05 dc ff eb                                      bl #0x4c592c
004ce914  04 00 a0 e1                                      mov r0, r4
004ce918  c8 06 f9 eb                                      bl #0x310440
004ce91c  04 00 a0 e1                                      mov r0, r4
004ce920  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7b04, declared_size=4, range_size=4, mode=arm
; class-group: Structs::BigLizardManProperties
; alias: _ZN7Structs22BigLizardManProperties4readEP11IStreamBase
; demangled: Structs::BigLizardManProperties::read(IStreamBase*)
; decoder-mode: arm
004f7b04  11 eb ff ea                                      b #0x4f2750

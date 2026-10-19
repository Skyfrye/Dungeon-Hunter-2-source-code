; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6240, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SmallPlantProperties
; alias: _ZN7Structs20SmallPlantPropertiesD2Ev
; demangled: Structs::SmallPlantProperties::~SmallPlantProperties()
; decoder-mode: arm
004c6240  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6244  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6248  10 40 2d e9                                      push {r4, lr}
004c624c  03 30 8f e0                                      add r3, pc, r3
004c6250  02 20 93 e7                                      ldr r2, [r3, r2]
004c6254  00 40 a0 e1                                      mov r4, r0
004c6258  08 20 82 e2                                      add r2, r2, #8
004c625c  00 20 80 e5                                      str r2, [r0]
004c6260  35 fd ff eb                                      bl #0x4c573c
004c6264  04 00 a0 e1                                      mov r0, r4
004c6268  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c626c  44 e8 4c 00 8c 28 00 00                          .byte 0x44, 0xe8, 0x4c, 0x00, 0x8c, 0x28, 0x00, 0x00

; FUNCTION 0x004c6274, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SmallPlantProperties
; alias: _ZN7Structs20SmallPlantPropertiesD1Ev
; demangled: Structs::SmallPlantProperties::~SmallPlantProperties()
; decoder-mode: arm
004c6274  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6278  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c627c  10 40 2d e9                                      push {r4, lr}
004c6280  03 30 8f e0                                      add r3, pc, r3
004c6284  02 20 93 e7                                      ldr r2, [r3, r2]
004c6288  00 40 a0 e1                                      mov r4, r0
004c628c  08 20 82 e2                                      add r2, r2, #8
004c6290  00 20 80 e5                                      str r2, [r0]
004c6294  28 fd ff eb                                      bl #0x4c573c
004c6298  04 00 a0 e1                                      mov r0, r4
004c629c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c62a0  10 e8 4c 00 8c 28 00 00                          .byte 0x10, 0xe8, 0x4c, 0x00, 0x8c, 0x28, 0x00, 0x00

; FUNCTION 0x004c62a8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SmallPlantProperties
; alias: _ZN7Structs20SmallPlantProperties8finalizeEv
; demangled: Structs::SmallPlantProperties::finalize()
; decoder-mode: arm
004c62a8  25 fd ff ea                                      b #0x4c5744

; FUNCTION 0x004ce6a0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SmallPlantProperties
; alias: _ZN7Structs20SmallPlantPropertiesD0Ev
; demangled: Structs::SmallPlantProperties::~SmallPlantProperties()
; decoder-mode: arm
004ce6a0  10 40 2d e9                                      push {r4, lr}
004ce6a4  00 40 a0 e1                                      mov r4, r0
004ce6a8  f1 de ff eb                                      bl #0x4c6274
004ce6ac  04 00 a0 e1                                      mov r0, r4
004ce6b0  62 07 f9 eb                                      bl #0x310440
004ce6b4  04 00 a0 e1                                      mov r0, r4
004ce6b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7aac, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SmallPlantProperties
; alias: _ZN7Structs20SmallPlantProperties4readEP11IStreamBase
; demangled: Structs::SmallPlantProperties::read(IStreamBase*)
; decoder-mode: arm
004f7aac  27 eb ff ea                                      b #0x4f2750

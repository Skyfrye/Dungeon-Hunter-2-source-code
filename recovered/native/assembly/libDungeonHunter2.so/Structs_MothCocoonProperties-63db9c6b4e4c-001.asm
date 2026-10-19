; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c59d0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MothCocoonProperties
; alias: _ZN7Structs20MothCocoonPropertiesD2Ev
; demangled: Structs::MothCocoonProperties::~MothCocoonProperties()
; decoder-mode: arm
004c59d0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c59d4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c59d8  10 40 2d e9                                      push {r4, lr}
004c59dc  03 30 8f e0                                      add r3, pc, r3
004c59e0  02 20 93 e7                                      ldr r2, [r3, r2]
004c59e4  00 40 a0 e1                                      mov r4, r0
004c59e8  08 20 82 e2                                      add r2, r2, #8
004c59ec  00 20 80 e5                                      str r2, [r0]
004c59f0  51 ff ff eb                                      bl #0x4c573c
004c59f4  04 00 a0 e1                                      mov r0, r4
004c59f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c59fc  b4 f0 4c 00 2c 3e 00 00                          .byte 0xb4, 0xf0, 0x4c, 0x00, 0x2c, 0x3e, 0x00, 0x00

; FUNCTION 0x004c5a04, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MothCocoonProperties
; alias: _ZN7Structs20MothCocoonPropertiesD1Ev
; demangled: Structs::MothCocoonProperties::~MothCocoonProperties()
; decoder-mode: arm
004c5a04  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5a08  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5a0c  10 40 2d e9                                      push {r4, lr}
004c5a10  03 30 8f e0                                      add r3, pc, r3
004c5a14  02 20 93 e7                                      ldr r2, [r3, r2]
004c5a18  00 40 a0 e1                                      mov r4, r0
004c5a1c  08 20 82 e2                                      add r2, r2, #8
004c5a20  00 20 80 e5                                      str r2, [r0]
004c5a24  44 ff ff eb                                      bl #0x4c573c
004c5a28  04 00 a0 e1                                      mov r0, r4
004c5a2c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5a30  80 f0 4c 00 2c 3e 00 00                          .byte 0x80, 0xf0, 0x4c, 0x00, 0x2c, 0x3e, 0x00, 0x00

; FUNCTION 0x004c5a38, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MothCocoonProperties
; alias: _ZN7Structs20MothCocoonProperties8finalizeEv
; demangled: Structs::MothCocoonProperties::finalize()
; decoder-mode: arm
004c5a38  41 ff ff ea                                      b #0x4c5744

; FUNCTION 0x004ce8d0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::MothCocoonProperties
; alias: _ZN7Structs20MothCocoonPropertiesD0Ev
; demangled: Structs::MothCocoonProperties::~MothCocoonProperties()
; decoder-mode: arm
004ce8d0  10 40 2d e9                                      push {r4, lr}
004ce8d4  00 40 a0 e1                                      mov r4, r0
004ce8d8  49 dc ff eb                                      bl #0x4c5a04
004ce8dc  04 00 a0 e1                                      mov r0, r4
004ce8e0  d6 06 f9 eb                                      bl #0x310440
004ce8e4  04 00 a0 e1                                      mov r0, r4
004ce8e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7afc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MothCocoonProperties
; alias: _ZN7Structs20MothCocoonProperties4readEP11IStreamBase
; demangled: Structs::MothCocoonProperties::read(IStreamBase*)
; decoder-mode: arm
004f7afc  13 eb ff ea                                      b #0x4f2750

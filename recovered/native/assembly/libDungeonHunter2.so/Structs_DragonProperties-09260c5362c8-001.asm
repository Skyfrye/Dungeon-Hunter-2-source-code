; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c64c8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::DragonProperties
; alias: _ZN7Structs16DragonPropertiesD2Ev
; demangled: Structs::DragonProperties::~DragonProperties()
; decoder-mode: arm
004c64c8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c64cc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c64d0  10 40 2d e9                                      push {r4, lr}
004c64d4  03 30 8f e0                                      add r3, pc, r3
004c64d8  02 20 93 e7                                      ldr r2, [r3, r2]
004c64dc  00 40 a0 e1                                      mov r4, r0
004c64e0  08 20 82 e2                                      add r2, r2, #8
004c64e4  00 20 80 e5                                      str r2, [r0]
004c64e8  93 fc ff eb                                      bl #0x4c573c
004c64ec  04 00 a0 e1                                      mov r0, r4
004c64f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c64f4  bc e5 4c 00 58 1d 00 00                          .byte 0xbc, 0xe5, 0x4c, 0x00, 0x58, 0x1d, 0x00, 0x00

; FUNCTION 0x004c64fc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::DragonProperties
; alias: _ZN7Structs16DragonPropertiesD1Ev
; demangled: Structs::DragonProperties::~DragonProperties()
; decoder-mode: arm
004c64fc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6500  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6504  10 40 2d e9                                      push {r4, lr}
004c6508  03 30 8f e0                                      add r3, pc, r3
004c650c  02 20 93 e7                                      ldr r2, [r3, r2]
004c6510  00 40 a0 e1                                      mov r4, r0
004c6514  08 20 82 e2                                      add r2, r2, #8
004c6518  00 20 80 e5                                      str r2, [r0]
004c651c  86 fc ff eb                                      bl #0x4c573c
004c6520  04 00 a0 e1                                      mov r0, r4
004c6524  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6528  88 e5 4c 00 58 1d 00 00                          .byte 0x88, 0xe5, 0x4c, 0x00, 0x58, 0x1d, 0x00, 0x00

; FUNCTION 0x004c6530, declared_size=4, range_size=4, mode=arm
; class-group: Structs::DragonProperties
; alias: _ZN7Structs16DragonProperties8finalizeEv
; demangled: Structs::DragonProperties::finalize()
; decoder-mode: arm
004c6530  83 fc ff ea                                      b #0x4c5744

; FUNCTION 0x004ce5f8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::DragonProperties
; alias: _ZN7Structs16DragonPropertiesD0Ev
; demangled: Structs::DragonProperties::~DragonProperties()
; decoder-mode: arm
004ce5f8  10 40 2d e9                                      push {r4, lr}
004ce5fc  00 40 a0 e1                                      mov r4, r0
004ce600  bd df ff eb                                      bl #0x4c64fc
004ce604  04 00 a0 e1                                      mov r0, r4
004ce608  8c 07 f9 eb                                      bl #0x310440
004ce60c  04 00 a0 e1                                      mov r0, r4
004ce610  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a94, declared_size=4, range_size=4, mode=arm
; class-group: Structs::DragonProperties
; alias: _ZN7Structs16DragonProperties4readEP11IStreamBase
; demangled: Structs::DragonProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a94  2d eb ff ea                                      b #0x4f2750

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6024, declared_size=52, range_size=52, mode=arm
; class-group: Structs::YetiProperties
; alias: _ZN7Structs14YetiPropertiesD2Ev
; demangled: Structs::YetiProperties::~YetiProperties()
; decoder-mode: arm
004c6024  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6028  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c602c  10 40 2d e9                                      push {r4, lr}
004c6030  03 30 8f e0                                      add r3, pc, r3
004c6034  02 20 93 e7                                      ldr r2, [r3, r2]
004c6038  00 40 a0 e1                                      mov r4, r0
004c603c  08 20 82 e2                                      add r2, r2, #8
004c6040  00 20 80 e5                                      str r2, [r0]
004c6044  bc fd ff eb                                      bl #0x4c573c
004c6048  04 00 a0 e1                                      mov r0, r4
004c604c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6050  60 ea 4c 00 50 3f 00 00                          .byte 0x60, 0xea, 0x4c, 0x00, 0x50, 0x3f, 0x00, 0x00

; FUNCTION 0x004c6058, declared_size=52, range_size=52, mode=arm
; class-group: Structs::YetiProperties
; alias: _ZN7Structs14YetiPropertiesD1Ev
; demangled: Structs::YetiProperties::~YetiProperties()
; decoder-mode: arm
004c6058  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c605c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6060  10 40 2d e9                                      push {r4, lr}
004c6064  03 30 8f e0                                      add r3, pc, r3
004c6068  02 20 93 e7                                      ldr r2, [r3, r2]
004c606c  00 40 a0 e1                                      mov r4, r0
004c6070  08 20 82 e2                                      add r2, r2, #8
004c6074  00 20 80 e5                                      str r2, [r0]
004c6078  af fd ff eb                                      bl #0x4c573c
004c607c  04 00 a0 e1                                      mov r0, r4
004c6080  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6084  2c ea 4c 00 50 3f 00 00                          .byte 0x2c, 0xea, 0x4c, 0x00, 0x50, 0x3f, 0x00, 0x00

; FUNCTION 0x004c608c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::YetiProperties
; alias: _ZN7Structs14YetiProperties8finalizeEv
; demangled: Structs::YetiProperties::finalize()
; decoder-mode: arm
004c608c  ac fd ff ea                                      b #0x4c5744

; FUNCTION 0x004ce72c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::YetiProperties
; alias: _ZN7Structs14YetiPropertiesD0Ev
; demangled: Structs::YetiProperties::~YetiProperties()
; decoder-mode: arm
004ce72c  10 40 2d e9                                      push {r4, lr}
004ce730  00 40 a0 e1                                      mov r4, r0
004ce734  47 de ff eb                                      bl #0x4c6058
004ce738  04 00 a0 e1                                      mov r0, r4
004ce73c  3f 07 f9 eb                                      bl #0x310440
004ce740  04 00 a0 e1                                      mov r0, r4
004ce744  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7ac0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::YetiProperties
; alias: _ZN7Structs14YetiProperties4readEP11IStreamBase
; demangled: Structs::YetiProperties::read(IStreamBase*)
; decoder-mode: arm
004f7ac0  22 eb ff ea                                      b #0x4f2750

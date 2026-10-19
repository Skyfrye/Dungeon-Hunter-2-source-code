; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5964, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MothProperties
; alias: _ZN7Structs14MothPropertiesD2Ev
; demangled: Structs::MothProperties::~MothProperties()
; decoder-mode: arm
004c5964  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5968  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c596c  10 40 2d e9                                      push {r4, lr}
004c5970  03 30 8f e0                                      add r3, pc, r3
004c5974  02 20 93 e7                                      ldr r2, [r3, r2]
004c5978  00 40 a0 e1                                      mov r4, r0
004c597c  08 20 82 e2                                      add r2, r2, #8
004c5980  00 20 80 e5                                      str r2, [r0]
004c5984  6c ff ff eb                                      bl #0x4c573c
004c5988  04 00 a0 e1                                      mov r0, r4
004c598c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5990  20 f1 4c 00 b0 17 00 00                          .byte 0x20, 0xf1, 0x4c, 0x00, 0xb0, 0x17, 0x00, 0x00

; FUNCTION 0x004c5998, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MothProperties
; alias: _ZN7Structs14MothPropertiesD1Ev
; demangled: Structs::MothProperties::~MothProperties()
; decoder-mode: arm
004c5998  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c599c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c59a0  10 40 2d e9                                      push {r4, lr}
004c59a4  03 30 8f e0                                      add r3, pc, r3
004c59a8  02 20 93 e7                                      ldr r2, [r3, r2]
004c59ac  00 40 a0 e1                                      mov r4, r0
004c59b0  08 20 82 e2                                      add r2, r2, #8
004c59b4  00 20 80 e5                                      str r2, [r0]
004c59b8  5f ff ff eb                                      bl #0x4c573c
004c59bc  04 00 a0 e1                                      mov r0, r4
004c59c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c59c4  ec f0 4c 00 b0 17 00 00                          .byte 0xec, 0xf0, 0x4c, 0x00, 0xb0, 0x17, 0x00, 0x00

; FUNCTION 0x004c59cc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MothProperties
; alias: _ZN7Structs14MothProperties8finalizeEv
; demangled: Structs::MothProperties::finalize()
; decoder-mode: arm
004c59cc  5c ff ff ea                                      b #0x4c5744

; FUNCTION 0x004ce8ec, declared_size=28, range_size=28, mode=arm
; class-group: Structs::MothProperties
; alias: _ZN7Structs14MothPropertiesD0Ev
; demangled: Structs::MothProperties::~MothProperties()
; decoder-mode: arm
004ce8ec  10 40 2d e9                                      push {r4, lr}
004ce8f0  00 40 a0 e1                                      mov r4, r0
004ce8f4  27 dc ff eb                                      bl #0x4c5998
004ce8f8  04 00 a0 e1                                      mov r0, r4
004ce8fc  cf 06 f9 eb                                      bl #0x310440
004ce900  04 00 a0 e1                                      mov r0, r4
004ce904  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7b00, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MothProperties
; alias: _ZN7Structs14MothProperties4readEP11IStreamBase
; demangled: Structs::MothProperties::read(IStreamBase*)
; decoder-mode: arm
004f7b00  12 eb ff ea                                      b #0x4f2750

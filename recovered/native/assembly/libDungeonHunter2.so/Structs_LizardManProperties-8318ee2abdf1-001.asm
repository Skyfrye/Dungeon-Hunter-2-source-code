; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c588c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::LizardManProperties
; alias: _ZN7Structs19LizardManPropertiesD2Ev
; demangled: Structs::LizardManProperties::~LizardManProperties()
; decoder-mode: arm
004c588c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5890  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5894  10 40 2d e9                                      push {r4, lr}
004c5898  03 30 8f e0                                      add r3, pc, r3
004c589c  02 20 93 e7                                      ldr r2, [r3, r2]
004c58a0  00 40 a0 e1                                      mov r4, r0
004c58a4  08 20 82 e2                                      add r2, r2, #8
004c58a8  00 20 80 e5                                      str r2, [r0]
004c58ac  a2 ff ff eb                                      bl #0x4c573c
004c58b0  04 00 a0 e1                                      mov r0, r4
004c58b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c58b8  f8 f1 4c 00 20 46 00 00                          .byte 0xf8, 0xf1, 0x4c, 0x00, 0x20, 0x46, 0x00, 0x00

; FUNCTION 0x004c58c0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::LizardManProperties
; alias: _ZN7Structs19LizardManPropertiesD1Ev
; demangled: Structs::LizardManProperties::~LizardManProperties()
; decoder-mode: arm
004c58c0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c58c4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c58c8  10 40 2d e9                                      push {r4, lr}
004c58cc  03 30 8f e0                                      add r3, pc, r3
004c58d0  02 20 93 e7                                      ldr r2, [r3, r2]
004c58d4  00 40 a0 e1                                      mov r4, r0
004c58d8  08 20 82 e2                                      add r2, r2, #8
004c58dc  00 20 80 e5                                      str r2, [r0]
004c58e0  95 ff ff eb                                      bl #0x4c573c
004c58e4  04 00 a0 e1                                      mov r0, r4
004c58e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c58ec  c4 f1 4c 00 20 46 00 00                          .byte 0xc4, 0xf1, 0x4c, 0x00, 0x20, 0x46, 0x00, 0x00

; FUNCTION 0x004c58f4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LizardManProperties
; alias: _ZN7Structs19LizardManProperties8finalizeEv
; demangled: Structs::LizardManProperties::finalize()
; decoder-mode: arm
004c58f4  92 ff ff ea                                      b #0x4c5744

; FUNCTION 0x004ce924, declared_size=28, range_size=28, mode=arm
; class-group: Structs::LizardManProperties
; alias: _ZN7Structs19LizardManPropertiesD0Ev
; demangled: Structs::LizardManProperties::~LizardManProperties()
; decoder-mode: arm
004ce924  10 40 2d e9                                      push {r4, lr}
004ce928  00 40 a0 e1                                      mov r4, r0
004ce92c  e3 db ff eb                                      bl #0x4c58c0
004ce930  04 00 a0 e1                                      mov r0, r4
004ce934  c1 06 f9 eb                                      bl #0x310440
004ce938  04 00 a0 e1                                      mov r0, r4
004ce93c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7b08, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LizardManProperties
; alias: _ZN7Structs19LizardManProperties4readEP11IStreamBase
; demangled: Structs::LizardManProperties::read(IStreamBase*)
; decoder-mode: arm
004f7b08  10 eb ff ea                                      b #0x4f2750

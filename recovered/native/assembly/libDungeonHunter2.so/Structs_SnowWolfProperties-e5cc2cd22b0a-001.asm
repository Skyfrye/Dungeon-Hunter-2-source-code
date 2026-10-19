; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6090, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SnowWolfProperties
; alias: _ZN7Structs18SnowWolfPropertiesD2Ev
; demangled: Structs::SnowWolfProperties::~SnowWolfProperties()
; decoder-mode: arm
004c6090  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6094  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6098  10 40 2d e9                                      push {r4, lr}
004c609c  03 30 8f e0                                      add r3, pc, r3
004c60a0  02 20 93 e7                                      ldr r2, [r3, r2]
004c60a4  00 40 a0 e1                                      mov r4, r0
004c60a8  08 20 82 e2                                      add r2, r2, #8
004c60ac  00 20 80 e5                                      str r2, [r0]
004c60b0  a1 fd ff eb                                      bl #0x4c573c
004c60b4  04 00 a0 e1                                      mov r0, r4
004c60b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c60bc  f4 e9 4c 00 a4 28 00 00                          .byte 0xf4, 0xe9, 0x4c, 0x00, 0xa4, 0x28, 0x00, 0x00

; FUNCTION 0x004c60c4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SnowWolfProperties
; alias: _ZN7Structs18SnowWolfPropertiesD1Ev
; demangled: Structs::SnowWolfProperties::~SnowWolfProperties()
; decoder-mode: arm
004c60c4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c60c8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c60cc  10 40 2d e9                                      push {r4, lr}
004c60d0  03 30 8f e0                                      add r3, pc, r3
004c60d4  02 20 93 e7                                      ldr r2, [r3, r2]
004c60d8  00 40 a0 e1                                      mov r4, r0
004c60dc  08 20 82 e2                                      add r2, r2, #8
004c60e0  00 20 80 e5                                      str r2, [r0]
004c60e4  94 fd ff eb                                      bl #0x4c573c
004c60e8  04 00 a0 e1                                      mov r0, r4
004c60ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c60f0  c0 e9 4c 00 a4 28 00 00                          .byte 0xc0, 0xe9, 0x4c, 0x00, 0xa4, 0x28, 0x00, 0x00

; FUNCTION 0x004c60f8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SnowWolfProperties
; alias: _ZN7Structs18SnowWolfProperties8finalizeEv
; demangled: Structs::SnowWolfProperties::finalize()
; decoder-mode: arm
004c60f8  91 fd ff ea                                      b #0x4c5744

; FUNCTION 0x004ce710, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SnowWolfProperties
; alias: _ZN7Structs18SnowWolfPropertiesD0Ev
; demangled: Structs::SnowWolfProperties::~SnowWolfProperties()
; decoder-mode: arm
004ce710  10 40 2d e9                                      push {r4, lr}
004ce714  00 40 a0 e1                                      mov r4, r0
004ce718  69 de ff eb                                      bl #0x4c60c4
004ce71c  04 00 a0 e1                                      mov r0, r4
004ce720  46 07 f9 eb                                      bl #0x310440
004ce724  04 00 a0 e1                                      mov r0, r4
004ce728  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7abc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SnowWolfProperties
; alias: _ZN7Structs18SnowWolfProperties4readEP11IStreamBase
; demangled: Structs::SnowWolfProperties::read(IStreamBase*)
; decoder-mode: arm
004f7abc  23 eb ff ea                                      b #0x4f2750

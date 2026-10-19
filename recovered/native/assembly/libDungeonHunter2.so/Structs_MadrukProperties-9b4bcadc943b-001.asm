; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c65a0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MadrukProperties
; alias: _ZN7Structs16MadrukPropertiesD2Ev
; demangled: Structs::MadrukProperties::~MadrukProperties()
; decoder-mode: arm
004c65a0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c65a4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c65a8  10 40 2d e9                                      push {r4, lr}
004c65ac  03 30 8f e0                                      add r3, pc, r3
004c65b0  02 20 93 e7                                      ldr r2, [r3, r2]
004c65b4  00 40 a0 e1                                      mov r4, r0
004c65b8  08 20 82 e2                                      add r2, r2, #8
004c65bc  00 20 80 e5                                      str r2, [r0]
004c65c0  5d fc ff eb                                      bl #0x4c573c
004c65c4  04 00 a0 e1                                      mov r0, r4
004c65c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c65cc  e4 e4 4c 00 90 1a 00 00                          .byte 0xe4, 0xe4, 0x4c, 0x00, 0x90, 0x1a, 0x00, 0x00

; FUNCTION 0x004c65d4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MadrukProperties
; alias: _ZN7Structs16MadrukPropertiesD1Ev
; demangled: Structs::MadrukProperties::~MadrukProperties()
; decoder-mode: arm
004c65d4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c65d8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c65dc  10 40 2d e9                                      push {r4, lr}
004c65e0  03 30 8f e0                                      add r3, pc, r3
004c65e4  02 20 93 e7                                      ldr r2, [r3, r2]
004c65e8  00 40 a0 e1                                      mov r4, r0
004c65ec  08 20 82 e2                                      add r2, r2, #8
004c65f0  00 20 80 e5                                      str r2, [r0]
004c65f4  50 fc ff eb                                      bl #0x4c573c
004c65f8  04 00 a0 e1                                      mov r0, r4
004c65fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6600  b0 e4 4c 00 90 1a 00 00                          .byte 0xb0, 0xe4, 0x4c, 0x00, 0x90, 0x1a, 0x00, 0x00

; FUNCTION 0x004c6608, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MadrukProperties
; alias: _ZN7Structs16MadrukProperties8finalizeEv
; demangled: Structs::MadrukProperties::finalize()
; decoder-mode: arm
004c6608  4d fc ff ea                                      b #0x4c5744

; FUNCTION 0x004ce5c0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::MadrukProperties
; alias: _ZN7Structs16MadrukPropertiesD0Ev
; demangled: Structs::MadrukProperties::~MadrukProperties()
; decoder-mode: arm
004ce5c0  10 40 2d e9                                      push {r4, lr}
004ce5c4  00 40 a0 e1                                      mov r4, r0
004ce5c8  01 e0 ff eb                                      bl #0x4c65d4
004ce5cc  04 00 a0 e1                                      mov r0, r4
004ce5d0  9a 07 f9 eb                                      bl #0x310440
004ce5d4  04 00 a0 e1                                      mov r0, r4
004ce5d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a8c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MadrukProperties
; alias: _ZN7Structs16MadrukProperties4readEP11IStreamBase
; demangled: Structs::MadrukProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a8c  2f eb ff ea                                      b #0x4f2750

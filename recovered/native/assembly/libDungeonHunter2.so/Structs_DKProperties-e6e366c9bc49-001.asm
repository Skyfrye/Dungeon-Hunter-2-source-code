; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5fb8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::DKProperties
; alias: _ZN7Structs12DKPropertiesD2Ev
; demangled: Structs::DKProperties::~DKProperties()
; decoder-mode: arm
004c5fb8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5fbc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5fc0  10 40 2d e9                                      push {r4, lr}
004c5fc4  03 30 8f e0                                      add r3, pc, r3
004c5fc8  02 20 93 e7                                      ldr r2, [r3, r2]
004c5fcc  00 40 a0 e1                                      mov r4, r0
004c5fd0  08 20 82 e2                                      add r2, r2, #8
004c5fd4  00 20 80 e5                                      str r2, [r0]
004c5fd8  d7 fd ff eb                                      bl #0x4c573c
004c5fdc  04 00 a0 e1                                      mov r0, r4
004c5fe0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5fe4  cc ea 4c 00 9c 2a 00 00                          .byte 0xcc, 0xea, 0x4c, 0x00, 0x9c, 0x2a, 0x00, 0x00

; FUNCTION 0x004c5fec, declared_size=52, range_size=52, mode=arm
; class-group: Structs::DKProperties
; alias: _ZN7Structs12DKPropertiesD1Ev
; demangled: Structs::DKProperties::~DKProperties()
; decoder-mode: arm
004c5fec  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5ff0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5ff4  10 40 2d e9                                      push {r4, lr}
004c5ff8  03 30 8f e0                                      add r3, pc, r3
004c5ffc  02 20 93 e7                                      ldr r2, [r3, r2]
004c6000  00 40 a0 e1                                      mov r4, r0
004c6004  08 20 82 e2                                      add r2, r2, #8
004c6008  00 20 80 e5                                      str r2, [r0]
004c600c  ca fd ff eb                                      bl #0x4c573c
004c6010  04 00 a0 e1                                      mov r0, r4
004c6014  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6018  98 ea 4c 00 9c 2a 00 00                          .byte 0x98, 0xea, 0x4c, 0x00, 0x9c, 0x2a, 0x00, 0x00

; FUNCTION 0x004c6020, declared_size=4, range_size=4, mode=arm
; class-group: Structs::DKProperties
; alias: _ZN7Structs12DKProperties8finalizeEv
; demangled: Structs::DKProperties::finalize()
; decoder-mode: arm
004c6020  c7 fd ff ea                                      b #0x4c5744

; FUNCTION 0x004ce748, declared_size=28, range_size=28, mode=arm
; class-group: Structs::DKProperties
; alias: _ZN7Structs12DKPropertiesD0Ev
; demangled: Structs::DKProperties::~DKProperties()
; decoder-mode: arm
004ce748  10 40 2d e9                                      push {r4, lr}
004ce74c  00 40 a0 e1                                      mov r4, r0
004ce750  25 de ff eb                                      bl #0x4c5fec
004ce754  04 00 a0 e1                                      mov r0, r4
004ce758  38 07 f9 eb                                      bl #0x310440
004ce75c  04 00 a0 e1                                      mov r0, r4
004ce760  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7ac4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::DKProperties
; alias: _ZN7Structs12DKProperties4readEP11IStreamBase
; demangled: Structs::DKProperties::read(IStreamBase*)
; decoder-mode: arm
004f7ac4  21 eb ff ea                                      b #0x4f2750

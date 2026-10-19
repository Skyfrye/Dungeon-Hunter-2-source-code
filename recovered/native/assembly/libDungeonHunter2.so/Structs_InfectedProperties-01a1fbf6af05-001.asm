; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5820, declared_size=52, range_size=52, mode=arm
; class-group: Structs::InfectedProperties
; alias: _ZN7Structs18InfectedPropertiesD2Ev
; demangled: Structs::InfectedProperties::~InfectedProperties()
; decoder-mode: arm
004c5820  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5824  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5828  10 40 2d e9                                      push {r4, lr}
004c582c  03 30 8f e0                                      add r3, pc, r3
004c5830  02 20 93 e7                                      ldr r2, [r3, r2]
004c5834  00 40 a0 e1                                      mov r4, r0
004c5838  08 20 82 e2                                      add r2, r2, #8
004c583c  00 20 80 e5                                      str r2, [r0]
004c5840  bd ff ff eb                                      bl #0x4c573c
004c5844  04 00 a0 e1                                      mov r0, r4
004c5848  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c584c  64 f2 4c 00 78 0f 00 00                          .byte 0x64, 0xf2, 0x4c, 0x00, 0x78, 0x0f, 0x00, 0x00

; FUNCTION 0x004c5854, declared_size=52, range_size=52, mode=arm
; class-group: Structs::InfectedProperties
; alias: _ZN7Structs18InfectedPropertiesD1Ev
; demangled: Structs::InfectedProperties::~InfectedProperties()
; decoder-mode: arm
004c5854  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5858  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c585c  10 40 2d e9                                      push {r4, lr}
004c5860  03 30 8f e0                                      add r3, pc, r3
004c5864  02 20 93 e7                                      ldr r2, [r3, r2]
004c5868  00 40 a0 e1                                      mov r4, r0
004c586c  08 20 82 e2                                      add r2, r2, #8
004c5870  00 20 80 e5                                      str r2, [r0]
004c5874  b0 ff ff eb                                      bl #0x4c573c
004c5878  04 00 a0 e1                                      mov r0, r4
004c587c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5880  30 f2 4c 00 78 0f 00 00                          .byte 0x30, 0xf2, 0x4c, 0x00, 0x78, 0x0f, 0x00, 0x00

; FUNCTION 0x004c5888, declared_size=4, range_size=4, mode=arm
; class-group: Structs::InfectedProperties
; alias: _ZN7Structs18InfectedProperties8finalizeEv
; demangled: Structs::InfectedProperties::finalize()
; decoder-mode: arm
004c5888  ad ff ff ea                                      b #0x4c5744

; FUNCTION 0x004ce940, declared_size=28, range_size=28, mode=arm
; class-group: Structs::InfectedProperties
; alias: _ZN7Structs18InfectedPropertiesD0Ev
; demangled: Structs::InfectedProperties::~InfectedProperties()
; decoder-mode: arm
004ce940  10 40 2d e9                                      push {r4, lr}
004ce944  00 40 a0 e1                                      mov r4, r0
004ce948  c1 db ff eb                                      bl #0x4c5854
004ce94c  04 00 a0 e1                                      mov r0, r4
004ce950  ba 06 f9 eb                                      bl #0x310440
004ce954  04 00 a0 e1                                      mov r0, r4
004ce958  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7b0c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::InfectedProperties
; alias: _ZN7Structs18InfectedProperties4readEP11IStreamBase
; demangled: Structs::InfectedProperties::read(IStreamBase*)
; decoder-mode: arm
004f7b0c  0f eb ff ea                                      b #0x4f2750

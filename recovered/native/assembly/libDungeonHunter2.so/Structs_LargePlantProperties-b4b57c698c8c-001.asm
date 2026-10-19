; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c62ac, declared_size=52, range_size=52, mode=arm
; class-group: Structs::LargePlantProperties
; alias: _ZN7Structs20LargePlantPropertiesD2Ev
; demangled: Structs::LargePlantProperties::~LargePlantProperties()
; decoder-mode: arm
004c62ac  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c62b0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c62b4  10 40 2d e9                                      push {r4, lr}
004c62b8  03 30 8f e0                                      add r3, pc, r3
004c62bc  02 20 93 e7                                      ldr r2, [r3, r2]
004c62c0  00 40 a0 e1                                      mov r4, r0
004c62c4  08 20 82 e2                                      add r2, r2, #8
004c62c8  00 20 80 e5                                      str r2, [r0]
004c62cc  1a fd ff eb                                      bl #0x4c573c
004c62d0  04 00 a0 e1                                      mov r0, r4
004c62d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c62d8  d8 e7 4c 00 a8 06 00 00                          .byte 0xd8, 0xe7, 0x4c, 0x00, 0xa8, 0x06, 0x00, 0x00

; FUNCTION 0x004c62e0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::LargePlantProperties
; alias: _ZN7Structs20LargePlantPropertiesD1Ev
; demangled: Structs::LargePlantProperties::~LargePlantProperties()
; decoder-mode: arm
004c62e0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c62e4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c62e8  10 40 2d e9                                      push {r4, lr}
004c62ec  03 30 8f e0                                      add r3, pc, r3
004c62f0  02 20 93 e7                                      ldr r2, [r3, r2]
004c62f4  00 40 a0 e1                                      mov r4, r0
004c62f8  08 20 82 e2                                      add r2, r2, #8
004c62fc  00 20 80 e5                                      str r2, [r0]
004c6300  0d fd ff eb                                      bl #0x4c573c
004c6304  04 00 a0 e1                                      mov r0, r4
004c6308  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c630c  a4 e7 4c 00 a8 06 00 00                          .byte 0xa4, 0xe7, 0x4c, 0x00, 0xa8, 0x06, 0x00, 0x00

; FUNCTION 0x004c6314, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LargePlantProperties
; alias: _ZN7Structs20LargePlantProperties8finalizeEv
; demangled: Structs::LargePlantProperties::finalize()
; decoder-mode: arm
004c6314  0a fd ff ea                                      b #0x4c5744

; FUNCTION 0x004ce684, declared_size=28, range_size=28, mode=arm
; class-group: Structs::LargePlantProperties
; alias: _ZN7Structs20LargePlantPropertiesD0Ev
; demangled: Structs::LargePlantProperties::~LargePlantProperties()
; decoder-mode: arm
004ce684  10 40 2d e9                                      push {r4, lr}
004ce688  00 40 a0 e1                                      mov r4, r0
004ce68c  13 df ff eb                                      bl #0x4c62e0
004ce690  04 00 a0 e1                                      mov r0, r4
004ce694  69 07 f9 eb                                      bl #0x310440
004ce698  04 00 a0 e1                                      mov r0, r4
004ce69c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7aa8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LargePlantProperties
; alias: _ZN7Structs20LargePlantProperties4readEP11IStreamBase
; demangled: Structs::LargePlantProperties::read(IStreamBase*)
; decoder-mode: arm
004f7aa8  28 eb ff ea                                      b #0x4f2750

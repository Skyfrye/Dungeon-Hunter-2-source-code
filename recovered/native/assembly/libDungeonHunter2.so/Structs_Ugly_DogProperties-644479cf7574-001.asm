; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5cc4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::Ugly_DogProperties
; alias: _ZN7Structs18Ugly_DogPropertiesD2Ev
; demangled: Structs::Ugly_DogProperties::~Ugly_DogProperties()
; decoder-mode: arm
004c5cc4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5cc8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5ccc  10 40 2d e9                                      push {r4, lr}
004c5cd0  03 30 8f e0                                      add r3, pc, r3
004c5cd4  02 20 93 e7                                      ldr r2, [r3, r2]
004c5cd8  00 40 a0 e1                                      mov r4, r0
004c5cdc  08 20 82 e2                                      add r2, r2, #8
004c5ce0  00 20 80 e5                                      str r2, [r0]
004c5ce4  94 fe ff eb                                      bl #0x4c573c
004c5ce8  04 00 a0 e1                                      mov r0, r4
004c5cec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5cf0  c0 ed 4c 00 94 35 00 00                          .byte 0xc0, 0xed, 0x4c, 0x00, 0x94, 0x35, 0x00, 0x00

; FUNCTION 0x004c5cf8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::Ugly_DogProperties
; alias: _ZN7Structs18Ugly_DogPropertiesD1Ev
; demangled: Structs::Ugly_DogProperties::~Ugly_DogProperties()
; decoder-mode: arm
004c5cf8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5cfc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5d00  10 40 2d e9                                      push {r4, lr}
004c5d04  03 30 8f e0                                      add r3, pc, r3
004c5d08  02 20 93 e7                                      ldr r2, [r3, r2]
004c5d0c  00 40 a0 e1                                      mov r4, r0
004c5d10  08 20 82 e2                                      add r2, r2, #8
004c5d14  00 20 80 e5                                      str r2, [r0]
004c5d18  87 fe ff eb                                      bl #0x4c573c
004c5d1c  04 00 a0 e1                                      mov r0, r4
004c5d20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5d24  8c ed 4c 00 94 35 00 00                          .byte 0x8c, 0xed, 0x4c, 0x00, 0x94, 0x35, 0x00, 0x00

; FUNCTION 0x004c5d2c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Ugly_DogProperties
; alias: _ZN7Structs18Ugly_DogProperties8finalizeEv
; demangled: Structs::Ugly_DogProperties::finalize()
; decoder-mode: arm
004c5d2c  84 fe ff ea                                      b #0x4c5744

; FUNCTION 0x004ce80c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Ugly_DogProperties
; alias: _ZN7Structs18Ugly_DogPropertiesD0Ev
; demangled: Structs::Ugly_DogProperties::~Ugly_DogProperties()
; decoder-mode: arm
004ce80c  10 40 2d e9                                      push {r4, lr}
004ce810  00 40 a0 e1                                      mov r4, r0
004ce814  37 dd ff eb                                      bl #0x4c5cf8
004ce818  04 00 a0 e1                                      mov r0, r4
004ce81c  07 07 f9 eb                                      bl #0x310440
004ce820  04 00 a0 e1                                      mov r0, r4
004ce824  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7ae0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Ugly_DogProperties
; alias: _ZN7Structs18Ugly_DogProperties4readEP11IStreamBase
; demangled: Structs::Ugly_DogProperties::read(IStreamBase*)
; decoder-mode: arm
004f7ae0  1a eb ff ea                                      b #0x4f2750

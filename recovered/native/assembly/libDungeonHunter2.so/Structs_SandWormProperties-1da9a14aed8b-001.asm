; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5aa8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SandWormProperties
; alias: _ZN7Structs18SandWormPropertiesD2Ev
; demangled: Structs::SandWormProperties::~SandWormProperties()
; decoder-mode: arm
004c5aa8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5aac  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5ab0  10 40 2d e9                                      push {r4, lr}
004c5ab4  03 30 8f e0                                      add r3, pc, r3
004c5ab8  02 20 93 e7                                      ldr r2, [r3, r2]
004c5abc  00 40 a0 e1                                      mov r4, r0
004c5ac0  08 20 82 e2                                      add r2, r2, #8
004c5ac4  00 20 80 e5                                      str r2, [r0]
004c5ac8  1b ff ff eb                                      bl #0x4c573c
004c5acc  04 00 a0 e1                                      mov r0, r4
004c5ad0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5ad4  dc ef 4c 00 20 45 00 00                          .byte 0xdc, 0xef, 0x4c, 0x00, 0x20, 0x45, 0x00, 0x00

; FUNCTION 0x004c5adc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SandWormProperties
; alias: _ZN7Structs18SandWormPropertiesD1Ev
; demangled: Structs::SandWormProperties::~SandWormProperties()
; decoder-mode: arm
004c5adc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5ae0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5ae4  10 40 2d e9                                      push {r4, lr}
004c5ae8  03 30 8f e0                                      add r3, pc, r3
004c5aec  02 20 93 e7                                      ldr r2, [r3, r2]
004c5af0  00 40 a0 e1                                      mov r4, r0
004c5af4  08 20 82 e2                                      add r2, r2, #8
004c5af8  00 20 80 e5                                      str r2, [r0]
004c5afc  0e ff ff eb                                      bl #0x4c573c
004c5b00  04 00 a0 e1                                      mov r0, r4
004c5b04  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5b08  a8 ef 4c 00 20 45 00 00                          .byte 0xa8, 0xef, 0x4c, 0x00, 0x20, 0x45, 0x00, 0x00

; FUNCTION 0x004c5b10, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SandWormProperties
; alias: _ZN7Structs18SandWormProperties8finalizeEv
; demangled: Structs::SandWormProperties::finalize()
; decoder-mode: arm
004c5b10  0b ff ff ea                                      b #0x4c5744

; FUNCTION 0x004ce898, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SandWormProperties
; alias: _ZN7Structs18SandWormPropertiesD0Ev
; demangled: Structs::SandWormProperties::~SandWormProperties()
; decoder-mode: arm
004ce898  10 40 2d e9                                      push {r4, lr}
004ce89c  00 40 a0 e1                                      mov r4, r0
004ce8a0  8d dc ff eb                                      bl #0x4c5adc
004ce8a4  04 00 a0 e1                                      mov r0, r4
004ce8a8  e4 06 f9 eb                                      bl #0x310440
004ce8ac  04 00 a0 e1                                      mov r0, r4
004ce8b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7af4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SandWormProperties
; alias: _ZN7Structs18SandWormProperties4readEP11IStreamBase
; demangled: Structs::SandWormProperties::read(IStreamBase*)
; decoder-mode: arm
004f7af4  15 eb ff ea                                      b #0x4f2750

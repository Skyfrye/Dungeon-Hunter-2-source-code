; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6534, declared_size=52, range_size=52, mode=arm
; class-group: Structs::ResurrectingGodProperties
; alias: _ZN7Structs25ResurrectingGodPropertiesD2Ev
; demangled: Structs::ResurrectingGodProperties::~ResurrectingGodProperties()
; decoder-mode: arm
004c6534  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6538  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c653c  10 40 2d e9                                      push {r4, lr}
004c6540  03 30 8f e0                                      add r3, pc, r3
004c6544  02 20 93 e7                                      ldr r2, [r3, r2]
004c6548  00 40 a0 e1                                      mov r4, r0
004c654c  08 20 82 e2                                      add r2, r2, #8
004c6550  00 20 80 e5                                      str r2, [r0]
004c6554  78 fc ff eb                                      bl #0x4c573c
004c6558  04 00 a0 e1                                      mov r0, r4
004c655c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6560  50 e5 4c 00 1c 06 00 00                          .byte 0x50, 0xe5, 0x4c, 0x00, 0x1c, 0x06, 0x00, 0x00

; FUNCTION 0x004c6568, declared_size=52, range_size=52, mode=arm
; class-group: Structs::ResurrectingGodProperties
; alias: _ZN7Structs25ResurrectingGodPropertiesD1Ev
; demangled: Structs::ResurrectingGodProperties::~ResurrectingGodProperties()
; decoder-mode: arm
004c6568  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c656c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6570  10 40 2d e9                                      push {r4, lr}
004c6574  03 30 8f e0                                      add r3, pc, r3
004c6578  02 20 93 e7                                      ldr r2, [r3, r2]
004c657c  00 40 a0 e1                                      mov r4, r0
004c6580  08 20 82 e2                                      add r2, r2, #8
004c6584  00 20 80 e5                                      str r2, [r0]
004c6588  6b fc ff eb                                      bl #0x4c573c
004c658c  04 00 a0 e1                                      mov r0, r4
004c6590  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6594  1c e5 4c 00 1c 06 00 00                          .byte 0x1c, 0xe5, 0x4c, 0x00, 0x1c, 0x06, 0x00, 0x00

; FUNCTION 0x004c659c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ResurrectingGodProperties
; alias: _ZN7Structs25ResurrectingGodProperties8finalizeEv
; demangled: Structs::ResurrectingGodProperties::finalize()
; decoder-mode: arm
004c659c  68 fc ff ea                                      b #0x4c5744

; FUNCTION 0x004ce5dc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ResurrectingGodProperties
; alias: _ZN7Structs25ResurrectingGodPropertiesD0Ev
; demangled: Structs::ResurrectingGodProperties::~ResurrectingGodProperties()
; decoder-mode: arm
004ce5dc  10 40 2d e9                                      push {r4, lr}
004ce5e0  00 40 a0 e1                                      mov r4, r0
004ce5e4  df df ff eb                                      bl #0x4c6568
004ce5e8  04 00 a0 e1                                      mov r0, r4
004ce5ec  93 07 f9 eb                                      bl #0x310440
004ce5f0  04 00 a0 e1                                      mov r0, r4
004ce5f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a90, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ResurrectingGodProperties
; alias: _ZN7Structs25ResurrectingGodProperties4readEP11IStreamBase
; demangled: Structs::ResurrectingGodProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a90  2e eb ff ea                                      b #0x4f2750

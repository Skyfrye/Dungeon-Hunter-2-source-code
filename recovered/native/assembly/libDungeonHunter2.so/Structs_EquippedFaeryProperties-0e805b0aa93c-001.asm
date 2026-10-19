; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6894, declared_size=52, range_size=52, mode=arm
; class-group: Structs::EquippedFaeryProperties
; alias: _ZN7Structs23EquippedFaeryPropertiesD2Ev
; demangled: Structs::EquippedFaeryProperties::~EquippedFaeryProperties()
; decoder-mode: arm
004c6894  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6898  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c689c  10 40 2d e9                                      push {r4, lr}
004c68a0  03 30 8f e0                                      add r3, pc, r3
004c68a4  02 20 93 e7                                      ldr r2, [r3, r2]
004c68a8  00 40 a0 e1                                      mov r4, r0
004c68ac  08 20 82 e2                                      add r2, r2, #8
004c68b0  00 20 80 e5                                      str r2, [r0]
004c68b4  a0 fb ff eb                                      bl #0x4c573c
004c68b8  04 00 a0 e1                                      mov r0, r4
004c68bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c68c0  f0 e1 4c 00 38 37 00 00                          .byte 0xf0, 0xe1, 0x4c, 0x00, 0x38, 0x37, 0x00, 0x00

; FUNCTION 0x004c68c8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::EquippedFaeryProperties
; alias: _ZN7Structs23EquippedFaeryPropertiesD1Ev
; demangled: Structs::EquippedFaeryProperties::~EquippedFaeryProperties()
; decoder-mode: arm
004c68c8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c68cc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c68d0  10 40 2d e9                                      push {r4, lr}
004c68d4  03 30 8f e0                                      add r3, pc, r3
004c68d8  02 20 93 e7                                      ldr r2, [r3, r2]
004c68dc  00 40 a0 e1                                      mov r4, r0
004c68e0  08 20 82 e2                                      add r2, r2, #8
004c68e4  00 20 80 e5                                      str r2, [r0]
004c68e8  93 fb ff eb                                      bl #0x4c573c
004c68ec  04 00 a0 e1                                      mov r0, r4
004c68f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c68f4  bc e1 4c 00 38 37 00 00                          .byte 0xbc, 0xe1, 0x4c, 0x00, 0x38, 0x37, 0x00, 0x00

; FUNCTION 0x004c68fc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::EquippedFaeryProperties
; alias: _ZN7Structs23EquippedFaeryProperties8finalizeEv
; demangled: Structs::EquippedFaeryProperties::finalize()
; decoder-mode: arm
004c68fc  90 fb ff ea                                      b #0x4c5744

; FUNCTION 0x004ce4fc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::EquippedFaeryProperties
; alias: _ZN7Structs23EquippedFaeryPropertiesD0Ev
; demangled: Structs::EquippedFaeryProperties::~EquippedFaeryProperties()
; decoder-mode: arm
004ce4fc  10 40 2d e9                                      push {r4, lr}
004ce500  00 40 a0 e1                                      mov r4, r0
004ce504  ef e0 ff eb                                      bl #0x4c68c8
004ce508  04 00 a0 e1                                      mov r0, r4
004ce50c  cb 07 f9 eb                                      bl #0x310440
004ce510  04 00 a0 e1                                      mov r0, r4
004ce514  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a70, declared_size=4, range_size=4, mode=arm
; class-group: Structs::EquippedFaeryProperties
; alias: _ZN7Structs23EquippedFaeryProperties4readEP11IStreamBase
; demangled: Structs::EquippedFaeryProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a70  36 eb ff ea                                      b #0x4f2750

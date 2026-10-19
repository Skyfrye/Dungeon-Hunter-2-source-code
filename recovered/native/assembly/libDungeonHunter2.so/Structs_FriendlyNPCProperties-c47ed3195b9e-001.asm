; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6900, declared_size=52, range_size=52, mode=arm
; class-group: Structs::FriendlyNPCProperties
; alias: _ZN7Structs21FriendlyNPCPropertiesD2Ev
; demangled: Structs::FriendlyNPCProperties::~FriendlyNPCProperties()
; decoder-mode: arm
004c6900  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6904  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6908  10 40 2d e9                                      push {r4, lr}
004c690c  03 30 8f e0                                      add r3, pc, r3
004c6910  02 20 93 e7                                      ldr r2, [r3, r2]
004c6914  00 40 a0 e1                                      mov r4, r0
004c6918  08 20 82 e2                                      add r2, r2, #8
004c691c  00 20 80 e5                                      str r2, [r0]
004c6920  85 fb ff eb                                      bl #0x4c573c
004c6924  04 00 a0 e1                                      mov r0, r4
004c6928  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c692c  84 e1 4c 00 20 24 00 00                          .byte 0x84, 0xe1, 0x4c, 0x00, 0x20, 0x24, 0x00, 0x00

; FUNCTION 0x004c6934, declared_size=52, range_size=52, mode=arm
; class-group: Structs::FriendlyNPCProperties
; alias: _ZN7Structs21FriendlyNPCPropertiesD1Ev
; demangled: Structs::FriendlyNPCProperties::~FriendlyNPCProperties()
; decoder-mode: arm
004c6934  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6938  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c693c  10 40 2d e9                                      push {r4, lr}
004c6940  03 30 8f e0                                      add r3, pc, r3
004c6944  02 20 93 e7                                      ldr r2, [r3, r2]
004c6948  00 40 a0 e1                                      mov r4, r0
004c694c  08 20 82 e2                                      add r2, r2, #8
004c6950  00 20 80 e5                                      str r2, [r0]
004c6954  78 fb ff eb                                      bl #0x4c573c
004c6958  04 00 a0 e1                                      mov r0, r4
004c695c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6960  50 e1 4c 00 20 24 00 00                          .byte 0x50, 0xe1, 0x4c, 0x00, 0x20, 0x24, 0x00, 0x00

; FUNCTION 0x004c6968, declared_size=4, range_size=4, mode=arm
; class-group: Structs::FriendlyNPCProperties
; alias: _ZN7Structs21FriendlyNPCProperties8finalizeEv
; demangled: Structs::FriendlyNPCProperties::finalize()
; decoder-mode: arm
004c6968  75 fb ff ea                                      b #0x4c5744

; FUNCTION 0x004ce4e0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::FriendlyNPCProperties
; alias: _ZN7Structs21FriendlyNPCPropertiesD0Ev
; demangled: Structs::FriendlyNPCProperties::~FriendlyNPCProperties()
; decoder-mode: arm
004ce4e0  10 40 2d e9                                      push {r4, lr}
004ce4e4  00 40 a0 e1                                      mov r4, r0
004ce4e8  11 e1 ff eb                                      bl #0x4c6934
004ce4ec  04 00 a0 e1                                      mov r0, r4
004ce4f0  d2 07 f9 eb                                      bl #0x310440
004ce4f4  04 00 a0 e1                                      mov r0, r4
004ce4f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a6c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::FriendlyNPCProperties
; alias: _ZN7Structs21FriendlyNPCProperties4readEP11IStreamBase
; demangled: Structs::FriendlyNPCProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a6c  37 eb ff ea                                      b #0x4f2750

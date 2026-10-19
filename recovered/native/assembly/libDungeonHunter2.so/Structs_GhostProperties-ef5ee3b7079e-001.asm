; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5e08, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GhostProperties
; alias: _ZN7Structs15GhostPropertiesD2Ev
; demangled: Structs::GhostProperties::~GhostProperties()
; decoder-mode: arm
004c5e08  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5e0c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5e10  10 40 2d e9                                      push {r4, lr}
004c5e14  03 30 8f e0                                      add r3, pc, r3
004c5e18  02 20 93 e7                                      ldr r2, [r3, r2]
004c5e1c  00 40 a0 e1                                      mov r4, r0
004c5e20  08 20 82 e2                                      add r2, r2, #8
004c5e24  00 20 80 e5                                      str r2, [r0]
004c5e28  43 fe ff eb                                      bl #0x4c573c
004c5e2c  04 00 a0 e1                                      mov r0, r4
004c5e30  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5e34  7c ec 4c 00 64 15 00 00                          .byte 0x7c, 0xec, 0x4c, 0x00, 0x64, 0x15, 0x00, 0x00

; FUNCTION 0x004c5e3c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GhostProperties
; alias: _ZN7Structs15GhostPropertiesD1Ev
; demangled: Structs::GhostProperties::~GhostProperties()
; decoder-mode: arm
004c5e3c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5e40  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5e44  10 40 2d e9                                      push {r4, lr}
004c5e48  03 30 8f e0                                      add r3, pc, r3
004c5e4c  02 20 93 e7                                      ldr r2, [r3, r2]
004c5e50  00 40 a0 e1                                      mov r4, r0
004c5e54  08 20 82 e2                                      add r2, r2, #8
004c5e58  00 20 80 e5                                      str r2, [r0]
004c5e5c  36 fe ff eb                                      bl #0x4c573c
004c5e60  04 00 a0 e1                                      mov r0, r4
004c5e64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5e68  48 ec 4c 00 64 15 00 00                          .byte 0x48, 0xec, 0x4c, 0x00, 0x64, 0x15, 0x00, 0x00

; FUNCTION 0x004c5e70, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GhostProperties
; alias: _ZN7Structs15GhostProperties8finalizeEv
; demangled: Structs::GhostProperties::finalize()
; decoder-mode: arm
004c5e70  33 fe ff ea                                      b #0x4c5744

; FUNCTION 0x004ce7b8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GhostProperties
; alias: _ZN7Structs15GhostPropertiesD0Ev
; demangled: Structs::GhostProperties::~GhostProperties()
; decoder-mode: arm
004ce7b8  10 40 2d e9                                      push {r4, lr}
004ce7bc  00 40 a0 e1                                      mov r4, r0
004ce7c0  9d dd ff eb                                      bl #0x4c5e3c
004ce7c4  04 00 a0 e1                                      mov r0, r4
004ce7c8  1c 07 f9 eb                                      bl #0x310440
004ce7cc  04 00 a0 e1                                      mov r0, r4
004ce7d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7ad4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GhostProperties
; alias: _ZN7Structs15GhostProperties4readEP11IStreamBase
; demangled: Structs::GhostProperties::read(IStreamBase*)
; decoder-mode: arm
004f7ad4  1d eb ff ea                                      b #0x4f2750

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c660c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MadrukTorsoProperties
; alias: _ZN7Structs21MadrukTorsoPropertiesD2Ev
; demangled: Structs::MadrukTorsoProperties::~MadrukTorsoProperties()
; decoder-mode: arm
004c660c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6610  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6614  10 40 2d e9                                      push {r4, lr}
004c6618  03 30 8f e0                                      add r3, pc, r3
004c661c  02 20 93 e7                                      ldr r2, [r3, r2]
004c6620  00 40 a0 e1                                      mov r4, r0
004c6624  08 20 82 e2                                      add r2, r2, #8
004c6628  00 20 80 e5                                      str r2, [r0]
004c662c  42 fc ff eb                                      bl #0x4c573c
004c6630  04 00 a0 e1                                      mov r0, r4
004c6634  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6638  78 e4 4c 00 80 20 00 00                          .byte 0x78, 0xe4, 0x4c, 0x00, 0x80, 0x20, 0x00, 0x00

; FUNCTION 0x004c6640, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MadrukTorsoProperties
; alias: _ZN7Structs21MadrukTorsoPropertiesD1Ev
; demangled: Structs::MadrukTorsoProperties::~MadrukTorsoProperties()
; decoder-mode: arm
004c6640  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6644  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6648  10 40 2d e9                                      push {r4, lr}
004c664c  03 30 8f e0                                      add r3, pc, r3
004c6650  02 20 93 e7                                      ldr r2, [r3, r2]
004c6654  00 40 a0 e1                                      mov r4, r0
004c6658  08 20 82 e2                                      add r2, r2, #8
004c665c  00 20 80 e5                                      str r2, [r0]
004c6660  35 fc ff eb                                      bl #0x4c573c
004c6664  04 00 a0 e1                                      mov r0, r4
004c6668  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c666c  44 e4 4c 00 80 20 00 00                          .byte 0x44, 0xe4, 0x4c, 0x00, 0x80, 0x20, 0x00, 0x00

; FUNCTION 0x004c6674, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MadrukTorsoProperties
; alias: _ZN7Structs21MadrukTorsoProperties8finalizeEv
; demangled: Structs::MadrukTorsoProperties::finalize()
; decoder-mode: arm
004c6674  32 fc ff ea                                      b #0x4c5744

; FUNCTION 0x004ce5a4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::MadrukTorsoProperties
; alias: _ZN7Structs21MadrukTorsoPropertiesD0Ev
; demangled: Structs::MadrukTorsoProperties::~MadrukTorsoProperties()
; decoder-mode: arm
004ce5a4  10 40 2d e9                                      push {r4, lr}
004ce5a8  00 40 a0 e1                                      mov r4, r0
004ce5ac  23 e0 ff eb                                      bl #0x4c6640
004ce5b0  04 00 a0 e1                                      mov r0, r4
004ce5b4  a1 07 f9 eb                                      bl #0x310440
004ce5b8  04 00 a0 e1                                      mov r0, r4
004ce5bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a88, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MadrukTorsoProperties
; alias: _ZN7Structs21MadrukTorsoProperties4readEP11IStreamBase
; demangled: Structs::MadrukTorsoProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a88  30 eb ff ea                                      b #0x4f2750

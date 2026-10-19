; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c66e4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MadrukEnergySpawnerProperties
; alias: _ZN7Structs29MadrukEnergySpawnerPropertiesD2Ev
; demangled: Structs::MadrukEnergySpawnerProperties::~MadrukEnergySpawnerProperties()
; decoder-mode: arm
004c66e4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c66e8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c66ec  10 40 2d e9                                      push {r4, lr}
004c66f0  03 30 8f e0                                      add r3, pc, r3
004c66f4  02 20 93 e7                                      ldr r2, [r3, r2]
004c66f8  00 40 a0 e1                                      mov r4, r0
004c66fc  08 20 82 e2                                      add r2, r2, #8
004c6700  00 20 80 e5                                      str r2, [r0]
004c6704  0c fc ff eb                                      bl #0x4c573c
004c6708  04 00 a0 e1                                      mov r0, r4
004c670c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6710  a0 e3 4c 00 d8 05 00 00                          .byte 0xa0, 0xe3, 0x4c, 0x00, 0xd8, 0x05, 0x00, 0x00

; FUNCTION 0x004c6718, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MadrukEnergySpawnerProperties
; alias: _ZN7Structs29MadrukEnergySpawnerPropertiesD1Ev
; demangled: Structs::MadrukEnergySpawnerProperties::~MadrukEnergySpawnerProperties()
; decoder-mode: arm
004c6718  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c671c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6720  10 40 2d e9                                      push {r4, lr}
004c6724  03 30 8f e0                                      add r3, pc, r3
004c6728  02 20 93 e7                                      ldr r2, [r3, r2]
004c672c  00 40 a0 e1                                      mov r4, r0
004c6730  08 20 82 e2                                      add r2, r2, #8
004c6734  00 20 80 e5                                      str r2, [r0]
004c6738  ff fb ff eb                                      bl #0x4c573c
004c673c  04 00 a0 e1                                      mov r0, r4
004c6740  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6744  6c e3 4c 00 d8 05 00 00                          .byte 0x6c, 0xe3, 0x4c, 0x00, 0xd8, 0x05, 0x00, 0x00

; FUNCTION 0x004c674c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MadrukEnergySpawnerProperties
; alias: _ZN7Structs29MadrukEnergySpawnerProperties8finalizeEv
; demangled: Structs::MadrukEnergySpawnerProperties::finalize()
; decoder-mode: arm
004c674c  fc fb ff ea                                      b #0x4c5744

; FUNCTION 0x004ce56c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::MadrukEnergySpawnerProperties
; alias: _ZN7Structs29MadrukEnergySpawnerPropertiesD0Ev
; demangled: Structs::MadrukEnergySpawnerProperties::~MadrukEnergySpawnerProperties()
; decoder-mode: arm
004ce56c  10 40 2d e9                                      push {r4, lr}
004ce570  00 40 a0 e1                                      mov r4, r0
004ce574  67 e0 ff eb                                      bl #0x4c6718
004ce578  04 00 a0 e1                                      mov r0, r4
004ce57c  af 07 f9 eb                                      bl #0x310440
004ce580  04 00 a0 e1                                      mov r0, r4
004ce584  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a80, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MadrukEnergySpawnerProperties
; alias: _ZN7Structs29MadrukEnergySpawnerProperties4readEP11IStreamBase
; demangled: Structs::MadrukEnergySpawnerProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a80  32 eb ff ea                                      b #0x4f2750

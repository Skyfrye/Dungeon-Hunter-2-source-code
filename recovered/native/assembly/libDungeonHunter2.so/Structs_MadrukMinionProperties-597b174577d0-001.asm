; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6678, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MadrukMinionProperties
; alias: _ZN7Structs22MadrukMinionPropertiesD2Ev
; demangled: Structs::MadrukMinionProperties::~MadrukMinionProperties()
; decoder-mode: arm
004c6678  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c667c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6680  10 40 2d e9                                      push {r4, lr}
004c6684  03 30 8f e0                                      add r3, pc, r3
004c6688  02 20 93 e7                                      ldr r2, [r3, r2]
004c668c  00 40 a0 e1                                      mov r4, r0
004c6690  08 20 82 e2                                      add r2, r2, #8
004c6694  00 20 80 e5                                      str r2, [r0]
004c6698  27 fc ff eb                                      bl #0x4c573c
004c669c  04 00 a0 e1                                      mov r0, r4
004c66a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c66a4  0c e4 4c 00 50 1e 00 00                          .byte 0x0c, 0xe4, 0x4c, 0x00, 0x50, 0x1e, 0x00, 0x00

; FUNCTION 0x004c66ac, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MadrukMinionProperties
; alias: _ZN7Structs22MadrukMinionPropertiesD1Ev
; demangled: Structs::MadrukMinionProperties::~MadrukMinionProperties()
; decoder-mode: arm
004c66ac  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c66b0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c66b4  10 40 2d e9                                      push {r4, lr}
004c66b8  03 30 8f e0                                      add r3, pc, r3
004c66bc  02 20 93 e7                                      ldr r2, [r3, r2]
004c66c0  00 40 a0 e1                                      mov r4, r0
004c66c4  08 20 82 e2                                      add r2, r2, #8
004c66c8  00 20 80 e5                                      str r2, [r0]
004c66cc  1a fc ff eb                                      bl #0x4c573c
004c66d0  04 00 a0 e1                                      mov r0, r4
004c66d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c66d8  d8 e3 4c 00 50 1e 00 00                          .byte 0xd8, 0xe3, 0x4c, 0x00, 0x50, 0x1e, 0x00, 0x00

; FUNCTION 0x004c66e0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MadrukMinionProperties
; alias: _ZN7Structs22MadrukMinionProperties8finalizeEv
; demangled: Structs::MadrukMinionProperties::finalize()
; decoder-mode: arm
004c66e0  17 fc ff ea                                      b #0x4c5744

; FUNCTION 0x004ce588, declared_size=28, range_size=28, mode=arm
; class-group: Structs::MadrukMinionProperties
; alias: _ZN7Structs22MadrukMinionPropertiesD0Ev
; demangled: Structs::MadrukMinionProperties::~MadrukMinionProperties()
; decoder-mode: arm
004ce588  10 40 2d e9                                      push {r4, lr}
004ce58c  00 40 a0 e1                                      mov r4, r0
004ce590  45 e0 ff eb                                      bl #0x4c66ac
004ce594  04 00 a0 e1                                      mov r0, r4
004ce598  a8 07 f9 eb                                      bl #0x310440
004ce59c  04 00 a0 e1                                      mov r0, r4
004ce5a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a84, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MadrukMinionProperties
; alias: _ZN7Structs22MadrukMinionProperties4readEP11IStreamBase
; demangled: Structs::MadrukMinionProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a84  31 eb ff ea                                      b #0x4f2750

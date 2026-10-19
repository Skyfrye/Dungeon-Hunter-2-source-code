; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5f4c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::BigSpiderProperties
; alias: _ZN7Structs19BigSpiderPropertiesD2Ev
; demangled: Structs::BigSpiderProperties::~BigSpiderProperties()
; decoder-mode: arm
004c5f4c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5f50  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5f54  10 40 2d e9                                      push {r4, lr}
004c5f58  03 30 8f e0                                      add r3, pc, r3
004c5f5c  02 20 93 e7                                      ldr r2, [r3, r2]
004c5f60  00 40 a0 e1                                      mov r4, r0
004c5f64  08 20 82 e2                                      add r2, r2, #8
004c5f68  00 20 80 e5                                      str r2, [r0]
004c5f6c  f2 fd ff eb                                      bl #0x4c573c
004c5f70  04 00 a0 e1                                      mov r0, r4
004c5f74  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5f78  38 eb 4c 00 b0 20 00 00                          .byte 0x38, 0xeb, 0x4c, 0x00, 0xb0, 0x20, 0x00, 0x00

; FUNCTION 0x004c5f80, declared_size=52, range_size=52, mode=arm
; class-group: Structs::BigSpiderProperties
; alias: _ZN7Structs19BigSpiderPropertiesD1Ev
; demangled: Structs::BigSpiderProperties::~BigSpiderProperties()
; decoder-mode: arm
004c5f80  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5f84  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5f88  10 40 2d e9                                      push {r4, lr}
004c5f8c  03 30 8f e0                                      add r3, pc, r3
004c5f90  02 20 93 e7                                      ldr r2, [r3, r2]
004c5f94  00 40 a0 e1                                      mov r4, r0
004c5f98  08 20 82 e2                                      add r2, r2, #8
004c5f9c  00 20 80 e5                                      str r2, [r0]
004c5fa0  e5 fd ff eb                                      bl #0x4c573c
004c5fa4  04 00 a0 e1                                      mov r0, r4
004c5fa8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5fac  04 eb 4c 00 b0 20 00 00                          .byte 0x04, 0xeb, 0x4c, 0x00, 0xb0, 0x20, 0x00, 0x00

; FUNCTION 0x004c5fb4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::BigSpiderProperties
; alias: _ZN7Structs19BigSpiderProperties8finalizeEv
; demangled: Structs::BigSpiderProperties::finalize()
; decoder-mode: arm
004c5fb4  e2 fd ff ea                                      b #0x4c5744

; FUNCTION 0x004ce764, declared_size=28, range_size=28, mode=arm
; class-group: Structs::BigSpiderProperties
; alias: _ZN7Structs19BigSpiderPropertiesD0Ev
; demangled: Structs::BigSpiderProperties::~BigSpiderProperties()
; decoder-mode: arm
004ce764  10 40 2d e9                                      push {r4, lr}
004ce768  00 40 a0 e1                                      mov r4, r0
004ce76c  03 de ff eb                                      bl #0x4c5f80
004ce770  04 00 a0 e1                                      mov r0, r4
004ce774  31 07 f9 eb                                      bl #0x310440
004ce778  04 00 a0 e1                                      mov r0, r4
004ce77c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7ac8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::BigSpiderProperties
; alias: _ZN7Structs19BigSpiderProperties4readEP11IStreamBase
; demangled: Structs::BigSpiderProperties::read(IStreamBase*)
; decoder-mode: arm
004f7ac8  20 eb ff ea                                      b #0x4f2750

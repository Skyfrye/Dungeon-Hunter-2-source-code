; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c61d4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GoblinShamanProperties
; alias: _ZN7Structs22GoblinShamanPropertiesD2Ev
; demangled: Structs::GoblinShamanProperties::~GoblinShamanProperties()
; decoder-mode: arm
004c61d4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c61d8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c61dc  10 40 2d e9                                      push {r4, lr}
004c61e0  03 30 8f e0                                      add r3, pc, r3
004c61e4  02 20 93 e7                                      ldr r2, [r3, r2]
004c61e8  00 40 a0 e1                                      mov r4, r0
004c61ec  08 20 82 e2                                      add r2, r2, #8
004c61f0  00 20 80 e5                                      str r2, [r0]
004c61f4  50 fd ff eb                                      bl #0x4c573c
004c61f8  04 00 a0 e1                                      mov r0, r4
004c61fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6200  b0 e8 4c 00 8c 46 00 00                          .byte 0xb0, 0xe8, 0x4c, 0x00, 0x8c, 0x46, 0x00, 0x00

; FUNCTION 0x004c6208, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GoblinShamanProperties
; alias: _ZN7Structs22GoblinShamanPropertiesD1Ev
; demangled: Structs::GoblinShamanProperties::~GoblinShamanProperties()
; decoder-mode: arm
004c6208  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c620c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6210  10 40 2d e9                                      push {r4, lr}
004c6214  03 30 8f e0                                      add r3, pc, r3
004c6218  02 20 93 e7                                      ldr r2, [r3, r2]
004c621c  00 40 a0 e1                                      mov r4, r0
004c6220  08 20 82 e2                                      add r2, r2, #8
004c6224  00 20 80 e5                                      str r2, [r0]
004c6228  43 fd ff eb                                      bl #0x4c573c
004c622c  04 00 a0 e1                                      mov r0, r4
004c6230  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6234  7c e8 4c 00 8c 46 00 00                          .byte 0x7c, 0xe8, 0x4c, 0x00, 0x8c, 0x46, 0x00, 0x00

; FUNCTION 0x004c623c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GoblinShamanProperties
; alias: _ZN7Structs22GoblinShamanProperties8finalizeEv
; demangled: Structs::GoblinShamanProperties::finalize()
; decoder-mode: arm
004c623c  40 fd ff ea                                      b #0x4c5744

; FUNCTION 0x004ce6bc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GoblinShamanProperties
; alias: _ZN7Structs22GoblinShamanPropertiesD0Ev
; demangled: Structs::GoblinShamanProperties::~GoblinShamanProperties()
; decoder-mode: arm
004ce6bc  10 40 2d e9                                      push {r4, lr}
004ce6c0  00 40 a0 e1                                      mov r4, r0
004ce6c4  cf de ff eb                                      bl #0x4c6208
004ce6c8  04 00 a0 e1                                      mov r0, r4
004ce6cc  5b 07 f9 eb                                      bl #0x310440
004ce6d0  04 00 a0 e1                                      mov r0, r4
004ce6d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7ab0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GoblinShamanProperties
; alias: _ZN7Structs22GoblinShamanProperties4readEP11IStreamBase
; demangled: Structs::GoblinShamanProperties::read(IStreamBase*)
; decoder-mode: arm
004f7ab0  26 eb ff ea                                      b #0x4f2750

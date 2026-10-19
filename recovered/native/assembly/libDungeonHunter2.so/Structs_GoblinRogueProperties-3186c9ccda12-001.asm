; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c60fc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GoblinRogueProperties
; alias: _ZN7Structs21GoblinRoguePropertiesD2Ev
; demangled: Structs::GoblinRogueProperties::~GoblinRogueProperties()
; decoder-mode: arm
004c60fc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6100  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6104  10 40 2d e9                                      push {r4, lr}
004c6108  03 30 8f e0                                      add r3, pc, r3
004c610c  02 20 93 e7                                      ldr r2, [r3, r2]
004c6110  00 40 a0 e1                                      mov r4, r0
004c6114  08 20 82 e2                                      add r2, r2, #8
004c6118  00 20 80 e5                                      str r2, [r0]
004c611c  86 fd ff eb                                      bl #0x4c573c
004c6120  04 00 a0 e1                                      mov r0, r4
004c6124  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6128  88 e9 4c 00 bc 12 00 00                          .byte 0x88, 0xe9, 0x4c, 0x00, 0xbc, 0x12, 0x00, 0x00

; FUNCTION 0x004c6130, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GoblinRogueProperties
; alias: _ZN7Structs21GoblinRoguePropertiesD1Ev
; demangled: Structs::GoblinRogueProperties::~GoblinRogueProperties()
; decoder-mode: arm
004c6130  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6134  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6138  10 40 2d e9                                      push {r4, lr}
004c613c  03 30 8f e0                                      add r3, pc, r3
004c6140  02 20 93 e7                                      ldr r2, [r3, r2]
004c6144  00 40 a0 e1                                      mov r4, r0
004c6148  08 20 82 e2                                      add r2, r2, #8
004c614c  00 20 80 e5                                      str r2, [r0]
004c6150  79 fd ff eb                                      bl #0x4c573c
004c6154  04 00 a0 e1                                      mov r0, r4
004c6158  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c615c  54 e9 4c 00 bc 12 00 00                          .byte 0x54, 0xe9, 0x4c, 0x00, 0xbc, 0x12, 0x00, 0x00

; FUNCTION 0x004c6164, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GoblinRogueProperties
; alias: _ZN7Structs21GoblinRogueProperties8finalizeEv
; demangled: Structs::GoblinRogueProperties::finalize()
; decoder-mode: arm
004c6164  76 fd ff ea                                      b #0x4c5744

; FUNCTION 0x004ce6f4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GoblinRogueProperties
; alias: _ZN7Structs21GoblinRoguePropertiesD0Ev
; demangled: Structs::GoblinRogueProperties::~GoblinRogueProperties()
; decoder-mode: arm
004ce6f4  10 40 2d e9                                      push {r4, lr}
004ce6f8  00 40 a0 e1                                      mov r4, r0
004ce6fc  8b de ff eb                                      bl #0x4c6130
004ce700  04 00 a0 e1                                      mov r0, r4
004ce704  4d 07 f9 eb                                      bl #0x310440
004ce708  04 00 a0 e1                                      mov r0, r4
004ce70c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7ab8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GoblinRogueProperties
; alias: _ZN7Structs21GoblinRogueProperties4readEP11IStreamBase
; demangled: Structs::GoblinRogueProperties::read(IStreamBase*)
; decoder-mode: arm
004f7ab8  24 eb ff ea                                      b #0x4f2750

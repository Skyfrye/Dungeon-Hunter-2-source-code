; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c67bc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::FollowerProperties
; alias: _ZN7Structs18FollowerPropertiesD2Ev
; demangled: Structs::FollowerProperties::~FollowerProperties()
; decoder-mode: arm
004c67bc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c67c0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c67c4  10 40 2d e9                                      push {r4, lr}
004c67c8  03 30 8f e0                                      add r3, pc, r3
004c67cc  02 20 93 e7                                      ldr r2, [r3, r2]
004c67d0  00 40 a0 e1                                      mov r4, r0
004c67d4  08 20 82 e2                                      add r2, r2, #8
004c67d8  00 20 80 e5                                      str r2, [r0]
004c67dc  d6 fb ff eb                                      bl #0x4c573c
004c67e0  04 00 a0 e1                                      mov r0, r4
004c67e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c67e8  c8 e2 4c 00 b8 2e 00 00                          .byte 0xc8, 0xe2, 0x4c, 0x00, 0xb8, 0x2e, 0x00, 0x00

; FUNCTION 0x004c67f0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::FollowerProperties
; alias: _ZN7Structs18FollowerPropertiesD1Ev
; demangled: Structs::FollowerProperties::~FollowerProperties()
; decoder-mode: arm
004c67f0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c67f4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c67f8  10 40 2d e9                                      push {r4, lr}
004c67fc  03 30 8f e0                                      add r3, pc, r3
004c6800  02 20 93 e7                                      ldr r2, [r3, r2]
004c6804  00 40 a0 e1                                      mov r4, r0
004c6808  08 20 82 e2                                      add r2, r2, #8
004c680c  00 20 80 e5                                      str r2, [r0]
004c6810  c9 fb ff eb                                      bl #0x4c573c
004c6814  04 00 a0 e1                                      mov r0, r4
004c6818  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c681c  94 e2 4c 00 b8 2e 00 00                          .byte 0x94, 0xe2, 0x4c, 0x00, 0xb8, 0x2e, 0x00, 0x00

; FUNCTION 0x004c6824, declared_size=4, range_size=4, mode=arm
; class-group: Structs::FollowerProperties
; alias: _ZN7Structs18FollowerProperties8finalizeEv
; demangled: Structs::FollowerProperties::finalize()
; decoder-mode: arm
004c6824  c6 fb ff ea                                      b #0x4c5744

; FUNCTION 0x004ce534, declared_size=28, range_size=28, mode=arm
; class-group: Structs::FollowerProperties
; alias: _ZN7Structs18FollowerPropertiesD0Ev
; demangled: Structs::FollowerProperties::~FollowerProperties()
; decoder-mode: arm
004ce534  10 40 2d e9                                      push {r4, lr}
004ce538  00 40 a0 e1                                      mov r4, r0
004ce53c  ab e0 ff eb                                      bl #0x4c67f0
004ce540  04 00 a0 e1                                      mov r0, r4
004ce544  bd 07 f9 eb                                      bl #0x310440
004ce548  04 00 a0 e1                                      mov r0, r4
004ce54c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a78, declared_size=4, range_size=4, mode=arm
; class-group: Structs::FollowerProperties
; alias: _ZN7Structs18FollowerProperties4readEP11IStreamBase
; demangled: Structs::FollowerProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a78  34 eb ff ea                                      b #0x4f2750

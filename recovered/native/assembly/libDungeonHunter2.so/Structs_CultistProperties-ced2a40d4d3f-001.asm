; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6384, declared_size=52, range_size=52, mode=arm
; class-group: Structs::CultistProperties
; alias: _ZN7Structs17CultistPropertiesD2Ev
; demangled: Structs::CultistProperties::~CultistProperties()
; decoder-mode: arm
004c6384  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6388  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c638c  10 40 2d e9                                      push {r4, lr}
004c6390  03 30 8f e0                                      add r3, pc, r3
004c6394  02 20 93 e7                                      ldr r2, [r3, r2]
004c6398  00 40 a0 e1                                      mov r4, r0
004c639c  08 20 82 e2                                      add r2, r2, #8
004c63a0  00 20 80 e5                                      str r2, [r0]
004c63a4  e4 fc ff eb                                      bl #0x4c573c
004c63a8  04 00 a0 e1                                      mov r0, r4
004c63ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c63b0  00 e7 4c 00 48 0f 00 00                          .byte 0x00, 0xe7, 0x4c, 0x00, 0x48, 0x0f, 0x00, 0x00

; FUNCTION 0x004c63b8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::CultistProperties
; alias: _ZN7Structs17CultistPropertiesD1Ev
; demangled: Structs::CultistProperties::~CultistProperties()
; decoder-mode: arm
004c63b8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c63bc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c63c0  10 40 2d e9                                      push {r4, lr}
004c63c4  03 30 8f e0                                      add r3, pc, r3
004c63c8  02 20 93 e7                                      ldr r2, [r3, r2]
004c63cc  00 40 a0 e1                                      mov r4, r0
004c63d0  08 20 82 e2                                      add r2, r2, #8
004c63d4  00 20 80 e5                                      str r2, [r0]
004c63d8  d7 fc ff eb                                      bl #0x4c573c
004c63dc  04 00 a0 e1                                      mov r0, r4
004c63e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c63e4  cc e6 4c 00 48 0f 00 00                          .byte 0xcc, 0xe6, 0x4c, 0x00, 0x48, 0x0f, 0x00, 0x00

; FUNCTION 0x004c63ec, declared_size=4, range_size=4, mode=arm
; class-group: Structs::CultistProperties
; alias: _ZN7Structs17CultistProperties8finalizeEv
; demangled: Structs::CultistProperties::finalize()
; decoder-mode: arm
004c63ec  d4 fc ff ea                                      b #0x4c5744

; FUNCTION 0x004ce64c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::CultistProperties
; alias: _ZN7Structs17CultistPropertiesD0Ev
; demangled: Structs::CultistProperties::~CultistProperties()
; decoder-mode: arm
004ce64c  10 40 2d e9                                      push {r4, lr}
004ce650  00 40 a0 e1                                      mov r4, r0
004ce654  57 df ff eb                                      bl #0x4c63b8
004ce658  04 00 a0 e1                                      mov r0, r4
004ce65c  77 07 f9 eb                                      bl #0x310440
004ce660  04 00 a0 e1                                      mov r0, r4
004ce664  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7aa0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::CultistProperties
; alias: _ZN7Structs17CultistProperties4readEP11IStreamBase
; demangled: Structs::CultistProperties::read(IStreamBase*)
; decoder-mode: arm
004f7aa0  2a eb ff ea                                      b #0x4f2750

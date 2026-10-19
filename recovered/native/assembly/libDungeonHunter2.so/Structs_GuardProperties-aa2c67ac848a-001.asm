; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6318, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GuardProperties
; alias: _ZN7Structs15GuardPropertiesD2Ev
; demangled: Structs::GuardProperties::~GuardProperties()
; decoder-mode: arm
004c6318  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c631c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6320  10 40 2d e9                                      push {r4, lr}
004c6324  03 30 8f e0                                      add r3, pc, r3
004c6328  02 20 93 e7                                      ldr r2, [r3, r2]
004c632c  00 40 a0 e1                                      mov r4, r0
004c6330  08 20 82 e2                                      add r2, r2, #8
004c6334  00 20 80 e5                                      str r2, [r0]
004c6338  ff fc ff eb                                      bl #0x4c573c
004c633c  04 00 a0 e1                                      mov r0, r4
004c6340  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6344  6c e7 4c 00 0c 49 00 00                          .byte 0x6c, 0xe7, 0x4c, 0x00, 0x0c, 0x49, 0x00, 0x00

; FUNCTION 0x004c634c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GuardProperties
; alias: _ZN7Structs15GuardPropertiesD1Ev
; demangled: Structs::GuardProperties::~GuardProperties()
; decoder-mode: arm
004c634c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6350  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6354  10 40 2d e9                                      push {r4, lr}
004c6358  03 30 8f e0                                      add r3, pc, r3
004c635c  02 20 93 e7                                      ldr r2, [r3, r2]
004c6360  00 40 a0 e1                                      mov r4, r0
004c6364  08 20 82 e2                                      add r2, r2, #8
004c6368  00 20 80 e5                                      str r2, [r0]
004c636c  f2 fc ff eb                                      bl #0x4c573c
004c6370  04 00 a0 e1                                      mov r0, r4
004c6374  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6378  38 e7 4c 00 0c 49 00 00                          .byte 0x38, 0xe7, 0x4c, 0x00, 0x0c, 0x49, 0x00, 0x00

; FUNCTION 0x004c6380, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GuardProperties
; alias: _ZN7Structs15GuardProperties8finalizeEv
; demangled: Structs::GuardProperties::finalize()
; decoder-mode: arm
004c6380  ef fc ff ea                                      b #0x4c5744

; FUNCTION 0x004ce668, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GuardProperties
; alias: _ZN7Structs15GuardPropertiesD0Ev
; demangled: Structs::GuardProperties::~GuardProperties()
; decoder-mode: arm
004ce668  10 40 2d e9                                      push {r4, lr}
004ce66c  00 40 a0 e1                                      mov r4, r0
004ce670  35 df ff eb                                      bl #0x4c634c
004ce674  04 00 a0 e1                                      mov r0, r4
004ce678  70 07 f9 eb                                      bl #0x310440
004ce67c  04 00 a0 e1                                      mov r0, r4
004ce680  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7aa4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GuardProperties
; alias: _ZN7Structs15GuardProperties4readEP11IStreamBase
; demangled: Structs::GuardProperties::read(IStreamBase*)
; decoder-mode: arm
004f7aa4  29 eb ff ea                                      b #0x4f2750

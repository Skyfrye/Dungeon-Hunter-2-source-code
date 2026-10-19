; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d58e4, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerDaggerDamageBonus
; alias: _ZN7Structs26ItemPowerDaggerDamageBonus8finalizeEv
; demangled: Structs::ItemPowerDaggerDamageBonus::finalize()
; decoder-mode: arm
004d58e4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d58e8  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d58ec  00 50 a0 e1                                      mov r5, r0
004d58f0  00 00 53 e3                                      cmp r3, #0
004d58f4  12 00 00 0a                                      beq #0x4d5944
004d58f8  04 00 13 e5                                      ldr r0, [r3, #-4]
004d58fc  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5900  00 00 53 e1                                      cmp r3, r0
004d5904  01 00 00 1a                                      bne #0x4d5910
004d5908  08 00 00 ea                                      b #0x4d5930
004d590c  04 00 a0 e1                                      mov r0, r4
004d5910  10 40 40 e2                                      sub r4, r0, #0x10
004d5914  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5918  04 00 a0 e1                                      mov r0, r4
004d591c  0f e0 a0 e1                                      mov lr, pc
004d5920  00 f0 93 e5                                      ldr pc, [r3]
004d5924  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5928  04 00 50 e1                                      cmp r0, r4
004d592c  f6 ff ff 1a                                      bne #0x4d590c
004d5930  08 00 40 e2                                      sub r0, r0, #8
004d5934  c1 ea f8 eb                                      bl #0x310440
004d5938  00 30 a0 e3                                      mov r3, #0
004d593c  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5940  10 30 85 e5                                      str r3, [r5, #0x10]
004d5944  05 00 a0 e1                                      mov r0, r5
004d5948  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d594c  7a ff ff ea                                      b #0x4d573c

; FUNCTION 0x004d6dd8, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerDaggerDamageBonus
; alias: _ZN7Structs26ItemPowerDaggerDamageBonusD1Ev
; demangled: Structs::ItemPowerDaggerDamageBonus::~ItemPowerDaggerDamageBonus()
; decoder-mode: arm
004d6dd8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6ddc  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d6de0  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d6de4  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d6de8  03 30 8f e0                                      add r3, pc, r3
004d6dec  02 20 93 e7                                      ldr r2, [r3, r2]
004d6df0  00 00 51 e3                                      cmp r1, #0
004d6df4  00 50 a0 e1                                      mov r5, r0
004d6df8  08 20 82 e2                                      add r2, r2, #8
004d6dfc  00 20 80 e5                                      str r2, [r0]
004d6e00  0f 00 00 0a                                      beq #0x4d6e44
004d6e04  04 00 11 e5                                      ldr r0, [r1, #-4]
004d6e08  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d6e0c  00 00 51 e1                                      cmp r1, r0
004d6e10  01 00 00 1a                                      bne #0x4d6e1c
004d6e14  08 00 00 ea                                      b #0x4d6e3c
004d6e18  04 00 a0 e1                                      mov r0, r4
004d6e1c  10 40 40 e2                                      sub r4, r0, #0x10
004d6e20  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6e24  04 00 a0 e1                                      mov r0, r4
004d6e28  0f e0 a0 e1                                      mov lr, pc
004d6e2c  00 f0 93 e5                                      ldr pc, [r3]
004d6e30  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6e34  04 00 50 e1                                      cmp r0, r4
004d6e38  f6 ff ff 1a                                      bne #0x4d6e18
004d6e3c  08 00 40 e2                                      sub r0, r0, #8
004d6e40  7e e5 f8 eb                                      bl #0x310440
004d6e44  05 00 a0 e1                                      mov r0, r5
004d6e48  e8 fe ff eb                                      bl #0x4d69f0
004d6e4c  05 00 a0 e1                                      mov r0, r5
004d6e50  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d6e54  a8 dc 4b 00 50 25 00 00                          .byte 0xa8, 0xdc, 0x4b, 0x00, 0x50, 0x25, 0x00, 0x00

; FUNCTION 0x004d6e5c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerDaggerDamageBonus
; alias: _ZN7Structs26ItemPowerDaggerDamageBonusD0Ev
; demangled: Structs::ItemPowerDaggerDamageBonus::~ItemPowerDaggerDamageBonus()
; decoder-mode: arm
004d6e5c  10 40 2d e9                                      push {r4, lr}
004d6e60  00 40 a0 e1                                      mov r4, r0
004d6e64  db ff ff eb                                      bl #0x4d6dd8
004d6e68  04 00 a0 e1                                      mov r0, r4
004d6e6c  73 e5 f8 eb                                      bl #0x310440
004d6e70  04 00 a0 e1                                      mov r0, r4
004d6e74  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d6e78, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerDaggerDamageBonus
; alias: _ZN7Structs26ItemPowerDaggerDamageBonusD2Ev
; demangled: Structs::ItemPowerDaggerDamageBonus::~ItemPowerDaggerDamageBonus()
; decoder-mode: arm
004d6e78  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6e7c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d6e80  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d6e84  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d6e88  03 30 8f e0                                      add r3, pc, r3
004d6e8c  02 20 93 e7                                      ldr r2, [r3, r2]
004d6e90  00 00 51 e3                                      cmp r1, #0
004d6e94  00 50 a0 e1                                      mov r5, r0
004d6e98  08 20 82 e2                                      add r2, r2, #8
004d6e9c  00 20 80 e5                                      str r2, [r0]
004d6ea0  0f 00 00 0a                                      beq #0x4d6ee4
004d6ea4  04 00 11 e5                                      ldr r0, [r1, #-4]
004d6ea8  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d6eac  00 00 51 e1                                      cmp r1, r0
004d6eb0  01 00 00 1a                                      bne #0x4d6ebc
004d6eb4  08 00 00 ea                                      b #0x4d6edc
004d6eb8  04 00 a0 e1                                      mov r0, r4
004d6ebc  10 40 40 e2                                      sub r4, r0, #0x10
004d6ec0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6ec4  04 00 a0 e1                                      mov r0, r4
004d6ec8  0f e0 a0 e1                                      mov lr, pc
004d6ecc  00 f0 93 e5                                      ldr pc, [r3]
004d6ed0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6ed4  04 00 50 e1                                      cmp r0, r4
004d6ed8  f6 ff ff 1a                                      bne #0x4d6eb8
004d6edc  08 00 40 e2                                      sub r0, r0, #8
004d6ee0  56 e5 f8 eb                                      bl #0x310440
004d6ee4  05 00 a0 e1                                      mov r0, r5
004d6ee8  c0 fe ff eb                                      bl #0x4d69f0
004d6eec  05 00 a0 e1                                      mov r0, r5
004d6ef0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d6ef4  08 dc 4b 00 50 25 00 00                          .byte 0x08, 0xdc, 0x4b, 0x00, 0x50, 0x25, 0x00, 0x00

; FUNCTION 0x004ed164, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerDaggerDamageBonus
; alias: _ZN7Structs26ItemPowerDaggerDamageBonus4readEP11IStreamBase
; demangled: Structs::ItemPowerDaggerDamageBonus::read(IStreamBase*)
; decoder-mode: arm
004ed164  17 ff ff ea                                      b #0x4ecdc8

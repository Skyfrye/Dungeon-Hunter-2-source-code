; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5878, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerRangeDamageBonus
; alias: _ZN7Structs25ItemPowerRangeDamageBonus8finalizeEv
; demangled: Structs::ItemPowerRangeDamageBonus::finalize()
; decoder-mode: arm
004d5878  70 40 2d e9                                      push {r4, r5, r6, lr}
004d587c  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5880  00 50 a0 e1                                      mov r5, r0
004d5884  00 00 53 e3                                      cmp r3, #0
004d5888  12 00 00 0a                                      beq #0x4d58d8
004d588c  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5890  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5894  00 00 53 e1                                      cmp r3, r0
004d5898  01 00 00 1a                                      bne #0x4d58a4
004d589c  08 00 00 ea                                      b #0x4d58c4
004d58a0  04 00 a0 e1                                      mov r0, r4
004d58a4  10 40 40 e2                                      sub r4, r0, #0x10
004d58a8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d58ac  04 00 a0 e1                                      mov r0, r4
004d58b0  0f e0 a0 e1                                      mov lr, pc
004d58b4  00 f0 93 e5                                      ldr pc, [r3]
004d58b8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d58bc  04 00 50 e1                                      cmp r0, r4
004d58c0  f6 ff ff 1a                                      bne #0x4d58a0
004d58c4  08 00 40 e2                                      sub r0, r0, #8
004d58c8  dc ea f8 eb                                      bl #0x310440
004d58cc  00 30 a0 e3                                      mov r3, #0
004d58d0  0c 30 85 e5                                      str r3, [r5, #0xc]
004d58d4  10 30 85 e5                                      str r3, [r5, #0x10]
004d58d8  05 00 a0 e1                                      mov r0, r5
004d58dc  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d58e0  95 ff ff ea                                      b #0x4d573c

; FUNCTION 0x004d6cb4, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerRangeDamageBonus
; alias: _ZN7Structs25ItemPowerRangeDamageBonusD1Ev
; demangled: Structs::ItemPowerRangeDamageBonus::~ItemPowerRangeDamageBonus()
; decoder-mode: arm
004d6cb4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6cb8  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d6cbc  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d6cc0  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d6cc4  03 30 8f e0                                      add r3, pc, r3
004d6cc8  02 20 93 e7                                      ldr r2, [r3, r2]
004d6ccc  00 00 51 e3                                      cmp r1, #0
004d6cd0  00 50 a0 e1                                      mov r5, r0
004d6cd4  08 20 82 e2                                      add r2, r2, #8
004d6cd8  00 20 80 e5                                      str r2, [r0]
004d6cdc  0f 00 00 0a                                      beq #0x4d6d20
004d6ce0  04 00 11 e5                                      ldr r0, [r1, #-4]
004d6ce4  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d6ce8  00 00 51 e1                                      cmp r1, r0
004d6cec  01 00 00 1a                                      bne #0x4d6cf8
004d6cf0  08 00 00 ea                                      b #0x4d6d18
004d6cf4  04 00 a0 e1                                      mov r0, r4
004d6cf8  10 40 40 e2                                      sub r4, r0, #0x10
004d6cfc  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6d00  04 00 a0 e1                                      mov r0, r4
004d6d04  0f e0 a0 e1                                      mov lr, pc
004d6d08  00 f0 93 e5                                      ldr pc, [r3]
004d6d0c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6d10  04 00 50 e1                                      cmp r0, r4
004d6d14  f6 ff ff 1a                                      bne #0x4d6cf4
004d6d18  08 00 40 e2                                      sub r0, r0, #8
004d6d1c  c7 e5 f8 eb                                      bl #0x310440
004d6d20  05 00 a0 e1                                      mov r0, r5
004d6d24  31 ff ff eb                                      bl #0x4d69f0
004d6d28  05 00 a0 e1                                      mov r0, r5
004d6d2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d6d30  cc dd 4b 00 80 2d 00 00                          .byte 0xcc, 0xdd, 0x4b, 0x00, 0x80, 0x2d, 0x00, 0x00

; FUNCTION 0x004d6d38, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerRangeDamageBonus
; alias: _ZN7Structs25ItemPowerRangeDamageBonusD0Ev
; demangled: Structs::ItemPowerRangeDamageBonus::~ItemPowerRangeDamageBonus()
; decoder-mode: arm
004d6d38  10 40 2d e9                                      push {r4, lr}
004d6d3c  00 40 a0 e1                                      mov r4, r0
004d6d40  db ff ff eb                                      bl #0x4d6cb4
004d6d44  04 00 a0 e1                                      mov r0, r4
004d6d48  bc e5 f8 eb                                      bl #0x310440
004d6d4c  04 00 a0 e1                                      mov r0, r4
004d6d50  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d6d54, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerRangeDamageBonus
; alias: _ZN7Structs25ItemPowerRangeDamageBonusD2Ev
; demangled: Structs::ItemPowerRangeDamageBonus::~ItemPowerRangeDamageBonus()
; decoder-mode: arm
004d6d54  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6d58  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d6d5c  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d6d60  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d6d64  03 30 8f e0                                      add r3, pc, r3
004d6d68  02 20 93 e7                                      ldr r2, [r3, r2]
004d6d6c  00 00 51 e3                                      cmp r1, #0
004d6d70  00 50 a0 e1                                      mov r5, r0
004d6d74  08 20 82 e2                                      add r2, r2, #8
004d6d78  00 20 80 e5                                      str r2, [r0]
004d6d7c  0f 00 00 0a                                      beq #0x4d6dc0
004d6d80  04 00 11 e5                                      ldr r0, [r1, #-4]
004d6d84  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d6d88  00 00 51 e1                                      cmp r1, r0
004d6d8c  01 00 00 1a                                      bne #0x4d6d98
004d6d90  08 00 00 ea                                      b #0x4d6db8
004d6d94  04 00 a0 e1                                      mov r0, r4
004d6d98  10 40 40 e2                                      sub r4, r0, #0x10
004d6d9c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6da0  04 00 a0 e1                                      mov r0, r4
004d6da4  0f e0 a0 e1                                      mov lr, pc
004d6da8  00 f0 93 e5                                      ldr pc, [r3]
004d6dac  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6db0  04 00 50 e1                                      cmp r0, r4
004d6db4  f6 ff ff 1a                                      bne #0x4d6d94
004d6db8  08 00 40 e2                                      sub r0, r0, #8
004d6dbc  9f e5 f8 eb                                      bl #0x310440
004d6dc0  05 00 a0 e1                                      mov r0, r5
004d6dc4  09 ff ff eb                                      bl #0x4d69f0
004d6dc8  05 00 a0 e1                                      mov r0, r5
004d6dcc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d6dd0  2c dd 4b 00 80 2d 00 00                          .byte 0x2c, 0xdd, 0x4b, 0x00, 0x80, 0x2d, 0x00, 0x00

; FUNCTION 0x004ed160, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerRangeDamageBonus
; alias: _ZN7Structs25ItemPowerRangeDamageBonus4readEP11IStreamBase
; demangled: Structs::ItemPowerRangeDamageBonus::read(IStreamBase*)
; decoder-mode: arm
004ed160  18 ff ff ea                                      b #0x4ecdc8

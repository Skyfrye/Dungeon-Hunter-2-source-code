; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5a28, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerSwordDamageBonus
; alias: _ZN7Structs25ItemPowerSwordDamageBonus8finalizeEv
; demangled: Structs::ItemPowerSwordDamageBonus::finalize()
; decoder-mode: arm
004d5a28  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5a2c  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5a30  00 50 a0 e1                                      mov r5, r0
004d5a34  00 00 53 e3                                      cmp r3, #0
004d5a38  12 00 00 0a                                      beq #0x4d5a88
004d5a3c  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5a40  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5a44  00 00 53 e1                                      cmp r3, r0
004d5a48  01 00 00 1a                                      bne #0x4d5a54
004d5a4c  08 00 00 ea                                      b #0x4d5a74
004d5a50  04 00 a0 e1                                      mov r0, r4
004d5a54  10 40 40 e2                                      sub r4, r0, #0x10
004d5a58  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5a5c  04 00 a0 e1                                      mov r0, r4
004d5a60  0f e0 a0 e1                                      mov lr, pc
004d5a64  00 f0 93 e5                                      ldr pc, [r3]
004d5a68  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5a6c  04 00 50 e1                                      cmp r0, r4
004d5a70  f6 ff ff 1a                                      bne #0x4d5a50
004d5a74  08 00 40 e2                                      sub r0, r0, #8
004d5a78  70 ea f8 eb                                      bl #0x310440
004d5a7c  00 30 a0 e3                                      mov r3, #0
004d5a80  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5a84  10 30 85 e5                                      str r3, [r5, #0x10]
004d5a88  05 00 a0 e1                                      mov r0, r5
004d5a8c  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5a90  29 ff ff ea                                      b #0x4d573c

; FUNCTION 0x004d7144, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerSwordDamageBonus
; alias: _ZN7Structs25ItemPowerSwordDamageBonusD1Ev
; demangled: Structs::ItemPowerSwordDamageBonus::~ItemPowerSwordDamageBonus()
; decoder-mode: arm
004d7144  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7148  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d714c  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7150  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7154  03 30 8f e0                                      add r3, pc, r3
004d7158  02 20 93 e7                                      ldr r2, [r3, r2]
004d715c  00 00 51 e3                                      cmp r1, #0
004d7160  00 50 a0 e1                                      mov r5, r0
004d7164  08 20 82 e2                                      add r2, r2, #8
004d7168  00 20 80 e5                                      str r2, [r0]
004d716c  0f 00 00 0a                                      beq #0x4d71b0
004d7170  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7174  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7178  00 00 51 e1                                      cmp r1, r0
004d717c  01 00 00 1a                                      bne #0x4d7188
004d7180  08 00 00 ea                                      b #0x4d71a8
004d7184  04 00 a0 e1                                      mov r0, r4
004d7188  10 40 40 e2                                      sub r4, r0, #0x10
004d718c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7190  04 00 a0 e1                                      mov r0, r4
004d7194  0f e0 a0 e1                                      mov lr, pc
004d7198  00 f0 93 e5                                      ldr pc, [r3]
004d719c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d71a0  04 00 50 e1                                      cmp r0, r4
004d71a4  f6 ff ff 1a                                      bne #0x4d7184
004d71a8  08 00 40 e2                                      sub r0, r0, #8
004d71ac  a3 e4 f8 eb                                      bl #0x310440
004d71b0  05 00 a0 e1                                      mov r0, r5
004d71b4  0d fe ff eb                                      bl #0x4d69f0
004d71b8  05 00 a0 e1                                      mov r0, r5
004d71bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d71c0  3c d9 4b 00 0c 20 00 00                          .byte 0x3c, 0xd9, 0x4b, 0x00, 0x0c, 0x20, 0x00, 0x00

; FUNCTION 0x004d71c8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerSwordDamageBonus
; alias: _ZN7Structs25ItemPowerSwordDamageBonusD0Ev
; demangled: Structs::ItemPowerSwordDamageBonus::~ItemPowerSwordDamageBonus()
; decoder-mode: arm
004d71c8  10 40 2d e9                                      push {r4, lr}
004d71cc  00 40 a0 e1                                      mov r4, r0
004d71d0  db ff ff eb                                      bl #0x4d7144
004d71d4  04 00 a0 e1                                      mov r0, r4
004d71d8  98 e4 f8 eb                                      bl #0x310440
004d71dc  04 00 a0 e1                                      mov r0, r4
004d71e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d71e4, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerSwordDamageBonus
; alias: _ZN7Structs25ItemPowerSwordDamageBonusD2Ev
; demangled: Structs::ItemPowerSwordDamageBonus::~ItemPowerSwordDamageBonus()
; decoder-mode: arm
004d71e4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d71e8  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d71ec  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d71f0  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d71f4  03 30 8f e0                                      add r3, pc, r3
004d71f8  02 20 93 e7                                      ldr r2, [r3, r2]
004d71fc  00 00 51 e3                                      cmp r1, #0
004d7200  00 50 a0 e1                                      mov r5, r0
004d7204  08 20 82 e2                                      add r2, r2, #8
004d7208  00 20 80 e5                                      str r2, [r0]
004d720c  0f 00 00 0a                                      beq #0x4d7250
004d7210  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7214  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7218  00 00 51 e1                                      cmp r1, r0
004d721c  01 00 00 1a                                      bne #0x4d7228
004d7220  08 00 00 ea                                      b #0x4d7248
004d7224  04 00 a0 e1                                      mov r0, r4
004d7228  10 40 40 e2                                      sub r4, r0, #0x10
004d722c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7230  04 00 a0 e1                                      mov r0, r4
004d7234  0f e0 a0 e1                                      mov lr, pc
004d7238  00 f0 93 e5                                      ldr pc, [r3]
004d723c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7240  04 00 50 e1                                      cmp r0, r4
004d7244  f6 ff ff 1a                                      bne #0x4d7224
004d7248  08 00 40 e2                                      sub r0, r0, #8
004d724c  7b e4 f8 eb                                      bl #0x310440
004d7250  05 00 a0 e1                                      mov r0, r5
004d7254  e5 fd ff eb                                      bl #0x4d69f0
004d7258  05 00 a0 e1                                      mov r0, r5
004d725c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7260  9c d8 4b 00 0c 20 00 00                          .byte 0x9c, 0xd8, 0x4b, 0x00, 0x0c, 0x20, 0x00, 0x00

; FUNCTION 0x004ed170, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerSwordDamageBonus
; alias: _ZN7Structs25ItemPowerSwordDamageBonus4readEP11IStreamBase
; demangled: Structs::ItemPowerSwordDamageBonus::read(IStreamBase*)
; decoder-mode: arm
004ed170  14 ff ff ea                                      b #0x4ecdc8

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d59bc, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerAxeDamageBonus
; alias: _ZN7Structs23ItemPowerAxeDamageBonus8finalizeEv
; demangled: Structs::ItemPowerAxeDamageBonus::finalize()
; decoder-mode: arm
004d59bc  70 40 2d e9                                      push {r4, r5, r6, lr}
004d59c0  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d59c4  00 50 a0 e1                                      mov r5, r0
004d59c8  00 00 53 e3                                      cmp r3, #0
004d59cc  12 00 00 0a                                      beq #0x4d5a1c
004d59d0  04 00 13 e5                                      ldr r0, [r3, #-4]
004d59d4  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d59d8  00 00 53 e1                                      cmp r3, r0
004d59dc  01 00 00 1a                                      bne #0x4d59e8
004d59e0  08 00 00 ea                                      b #0x4d5a08
004d59e4  04 00 a0 e1                                      mov r0, r4
004d59e8  10 40 40 e2                                      sub r4, r0, #0x10
004d59ec  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d59f0  04 00 a0 e1                                      mov r0, r4
004d59f4  0f e0 a0 e1                                      mov lr, pc
004d59f8  00 f0 93 e5                                      ldr pc, [r3]
004d59fc  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5a00  04 00 50 e1                                      cmp r0, r4
004d5a04  f6 ff ff 1a                                      bne #0x4d59e4
004d5a08  08 00 40 e2                                      sub r0, r0, #8
004d5a0c  8b ea f8 eb                                      bl #0x310440
004d5a10  00 30 a0 e3                                      mov r3, #0
004d5a14  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5a18  10 30 85 e5                                      str r3, [r5, #0x10]
004d5a1c  05 00 a0 e1                                      mov r0, r5
004d5a20  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5a24  44 ff ff ea                                      b #0x4d573c

; FUNCTION 0x004d7020, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerAxeDamageBonus
; alias: _ZN7Structs23ItemPowerAxeDamageBonusD1Ev
; demangled: Structs::ItemPowerAxeDamageBonus::~ItemPowerAxeDamageBonus()
; decoder-mode: arm
004d7020  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7024  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7028  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d702c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7030  03 30 8f e0                                      add r3, pc, r3
004d7034  02 20 93 e7                                      ldr r2, [r3, r2]
004d7038  00 00 51 e3                                      cmp r1, #0
004d703c  00 50 a0 e1                                      mov r5, r0
004d7040  08 20 82 e2                                      add r2, r2, #8
004d7044  00 20 80 e5                                      str r2, [r0]
004d7048  0f 00 00 0a                                      beq #0x4d708c
004d704c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7050  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7054  00 00 51 e1                                      cmp r1, r0
004d7058  01 00 00 1a                                      bne #0x4d7064
004d705c  08 00 00 ea                                      b #0x4d7084
004d7060  04 00 a0 e1                                      mov r0, r4
004d7064  10 40 40 e2                                      sub r4, r0, #0x10
004d7068  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d706c  04 00 a0 e1                                      mov r0, r4
004d7070  0f e0 a0 e1                                      mov lr, pc
004d7074  00 f0 93 e5                                      ldr pc, [r3]
004d7078  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d707c  04 00 50 e1                                      cmp r0, r4
004d7080  f6 ff ff 1a                                      bne #0x4d7060
004d7084  08 00 40 e2                                      sub r0, r0, #8
004d7088  ec e4 f8 eb                                      bl #0x310440
004d708c  05 00 a0 e1                                      mov r0, r5
004d7090  56 fe ff eb                                      bl #0x4d69f0
004d7094  05 00 a0 e1                                      mov r0, r5
004d7098  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d709c  60 da 4b 00 d8 08 00 00                          .byte 0x60, 0xda, 0x4b, 0x00, 0xd8, 0x08, 0x00, 0x00

; FUNCTION 0x004d70a4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerAxeDamageBonus
; alias: _ZN7Structs23ItemPowerAxeDamageBonusD0Ev
; demangled: Structs::ItemPowerAxeDamageBonus::~ItemPowerAxeDamageBonus()
; decoder-mode: arm
004d70a4  10 40 2d e9                                      push {r4, lr}
004d70a8  00 40 a0 e1                                      mov r4, r0
004d70ac  db ff ff eb                                      bl #0x4d7020
004d70b0  04 00 a0 e1                                      mov r0, r4
004d70b4  e1 e4 f8 eb                                      bl #0x310440
004d70b8  04 00 a0 e1                                      mov r0, r4
004d70bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d70c0, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerAxeDamageBonus
; alias: _ZN7Structs23ItemPowerAxeDamageBonusD2Ev
; demangled: Structs::ItemPowerAxeDamageBonus::~ItemPowerAxeDamageBonus()
; decoder-mode: arm
004d70c0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d70c4  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d70c8  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d70cc  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d70d0  03 30 8f e0                                      add r3, pc, r3
004d70d4  02 20 93 e7                                      ldr r2, [r3, r2]
004d70d8  00 00 51 e3                                      cmp r1, #0
004d70dc  00 50 a0 e1                                      mov r5, r0
004d70e0  08 20 82 e2                                      add r2, r2, #8
004d70e4  00 20 80 e5                                      str r2, [r0]
004d70e8  0f 00 00 0a                                      beq #0x4d712c
004d70ec  04 00 11 e5                                      ldr r0, [r1, #-4]
004d70f0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d70f4  00 00 51 e1                                      cmp r1, r0
004d70f8  01 00 00 1a                                      bne #0x4d7104
004d70fc  08 00 00 ea                                      b #0x4d7124
004d7100  04 00 a0 e1                                      mov r0, r4
004d7104  10 40 40 e2                                      sub r4, r0, #0x10
004d7108  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d710c  04 00 a0 e1                                      mov r0, r4
004d7110  0f e0 a0 e1                                      mov lr, pc
004d7114  00 f0 93 e5                                      ldr pc, [r3]
004d7118  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d711c  04 00 50 e1                                      cmp r0, r4
004d7120  f6 ff ff 1a                                      bne #0x4d7100
004d7124  08 00 40 e2                                      sub r0, r0, #8
004d7128  c4 e4 f8 eb                                      bl #0x310440
004d712c  05 00 a0 e1                                      mov r0, r5
004d7130  2e fe ff eb                                      bl #0x4d69f0
004d7134  05 00 a0 e1                                      mov r0, r5
004d7138  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d713c  c0 d9 4b 00 d8 08 00 00                          .byte 0xc0, 0xd9, 0x4b, 0x00, 0xd8, 0x08, 0x00, 0x00

; FUNCTION 0x004ed16c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerAxeDamageBonus
; alias: _ZN7Structs23ItemPowerAxeDamageBonus4readEP11IStreamBase
; demangled: Structs::ItemPowerAxeDamageBonus::read(IStreamBase*)
; decoder-mode: arm
004ed16c  15 ff ff ea                                      b #0x4ecdc8

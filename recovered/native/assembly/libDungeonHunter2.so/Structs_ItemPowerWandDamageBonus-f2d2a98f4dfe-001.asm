; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d57a0, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerWandDamageBonus
; alias: _ZN7Structs24ItemPowerWandDamageBonus8finalizeEv
; demangled: Structs::ItemPowerWandDamageBonus::finalize()
; decoder-mode: arm
004d57a0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d57a4  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d57a8  00 50 a0 e1                                      mov r5, r0
004d57ac  00 00 53 e3                                      cmp r3, #0
004d57b0  12 00 00 0a                                      beq #0x4d5800
004d57b4  04 00 13 e5                                      ldr r0, [r3, #-4]
004d57b8  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d57bc  00 00 53 e1                                      cmp r3, r0
004d57c0  01 00 00 1a                                      bne #0x4d57cc
004d57c4  08 00 00 ea                                      b #0x4d57ec
004d57c8  04 00 a0 e1                                      mov r0, r4
004d57cc  10 40 40 e2                                      sub r4, r0, #0x10
004d57d0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d57d4  04 00 a0 e1                                      mov r0, r4
004d57d8  0f e0 a0 e1                                      mov lr, pc
004d57dc  00 f0 93 e5                                      ldr pc, [r3]
004d57e0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d57e4  04 00 50 e1                                      cmp r0, r4
004d57e8  f6 ff ff 1a                                      bne #0x4d57c8
004d57ec  08 00 40 e2                                      sub r0, r0, #8
004d57f0  12 eb f8 eb                                      bl #0x310440
004d57f4  00 30 a0 e3                                      mov r3, #0
004d57f8  0c 30 85 e5                                      str r3, [r5, #0xc]
004d57fc  10 30 85 e5                                      str r3, [r5, #0x10]
004d5800  05 00 a0 e1                                      mov r0, r5
004d5804  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5808  cb ff ff ea                                      b #0x4d573c

; FUNCTION 0x004d6a6c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerWandDamageBonus
; alias: _ZN7Structs24ItemPowerWandDamageBonusD1Ev
; demangled: Structs::ItemPowerWandDamageBonus::~ItemPowerWandDamageBonus()
; decoder-mode: arm
004d6a6c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6a70  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d6a74  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d6a78  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d6a7c  03 30 8f e0                                      add r3, pc, r3
004d6a80  02 20 93 e7                                      ldr r2, [r3, r2]
004d6a84  00 00 51 e3                                      cmp r1, #0
004d6a88  00 50 a0 e1                                      mov r5, r0
004d6a8c  08 20 82 e2                                      add r2, r2, #8
004d6a90  00 20 80 e5                                      str r2, [r0]
004d6a94  0f 00 00 0a                                      beq #0x4d6ad8
004d6a98  04 00 11 e5                                      ldr r0, [r1, #-4]
004d6a9c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d6aa0  00 00 51 e1                                      cmp r1, r0
004d6aa4  01 00 00 1a                                      bne #0x4d6ab0
004d6aa8  08 00 00 ea                                      b #0x4d6ad0
004d6aac  04 00 a0 e1                                      mov r0, r4
004d6ab0  10 40 40 e2                                      sub r4, r0, #0x10
004d6ab4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6ab8  04 00 a0 e1                                      mov r0, r4
004d6abc  0f e0 a0 e1                                      mov lr, pc
004d6ac0  00 f0 93 e5                                      ldr pc, [r3]
004d6ac4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6ac8  04 00 50 e1                                      cmp r0, r4
004d6acc  f6 ff ff 1a                                      bne #0x4d6aac
004d6ad0  08 00 40 e2                                      sub r0, r0, #8
004d6ad4  59 e6 f8 eb                                      bl #0x310440
004d6ad8  05 00 a0 e1                                      mov r0, r5
004d6adc  c3 ff ff eb                                      bl #0x4d69f0
004d6ae0  05 00 a0 e1                                      mov r0, r5
004d6ae4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d6ae8  14 e0 4b 00 14 15 00 00                          .byte 0x14, 0xe0, 0x4b, 0x00, 0x14, 0x15, 0x00, 0x00

; FUNCTION 0x004d6af0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerWandDamageBonus
; alias: _ZN7Structs24ItemPowerWandDamageBonusD0Ev
; demangled: Structs::ItemPowerWandDamageBonus::~ItemPowerWandDamageBonus()
; decoder-mode: arm
004d6af0  10 40 2d e9                                      push {r4, lr}
004d6af4  00 40 a0 e1                                      mov r4, r0
004d6af8  db ff ff eb                                      bl #0x4d6a6c
004d6afc  04 00 a0 e1                                      mov r0, r4
004d6b00  4e e6 f8 eb                                      bl #0x310440
004d6b04  04 00 a0 e1                                      mov r0, r4
004d6b08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d6b0c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerWandDamageBonus
; alias: _ZN7Structs24ItemPowerWandDamageBonusD2Ev
; demangled: Structs::ItemPowerWandDamageBonus::~ItemPowerWandDamageBonus()
; decoder-mode: arm
004d6b0c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6b10  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d6b14  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d6b18  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d6b1c  03 30 8f e0                                      add r3, pc, r3
004d6b20  02 20 93 e7                                      ldr r2, [r3, r2]
004d6b24  00 00 51 e3                                      cmp r1, #0
004d6b28  00 50 a0 e1                                      mov r5, r0
004d6b2c  08 20 82 e2                                      add r2, r2, #8
004d6b30  00 20 80 e5                                      str r2, [r0]
004d6b34  0f 00 00 0a                                      beq #0x4d6b78
004d6b38  04 00 11 e5                                      ldr r0, [r1, #-4]
004d6b3c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d6b40  00 00 51 e1                                      cmp r1, r0
004d6b44  01 00 00 1a                                      bne #0x4d6b50
004d6b48  08 00 00 ea                                      b #0x4d6b70
004d6b4c  04 00 a0 e1                                      mov r0, r4
004d6b50  10 40 40 e2                                      sub r4, r0, #0x10
004d6b54  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6b58  04 00 a0 e1                                      mov r0, r4
004d6b5c  0f e0 a0 e1                                      mov lr, pc
004d6b60  00 f0 93 e5                                      ldr pc, [r3]
004d6b64  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6b68  04 00 50 e1                                      cmp r0, r4
004d6b6c  f6 ff ff 1a                                      bne #0x4d6b4c
004d6b70  08 00 40 e2                                      sub r0, r0, #8
004d6b74  31 e6 f8 eb                                      bl #0x310440
004d6b78  05 00 a0 e1                                      mov r0, r5
004d6b7c  9b ff ff eb                                      bl #0x4d69f0
004d6b80  05 00 a0 e1                                      mov r0, r5
004d6b84  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d6b88  74 df 4b 00 14 15 00 00                          .byte 0x74, 0xdf, 0x4b, 0x00, 0x14, 0x15, 0x00, 0x00

; FUNCTION 0x004ed158, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerWandDamageBonus
; alias: _ZN7Structs24ItemPowerWandDamageBonus4readEP11IStreamBase
; demangled: Structs::ItemPowerWandDamageBonus::read(IStreamBase*)
; decoder-mode: arm
004ed158  1a ff ff ea                                      b #0x4ecdc8

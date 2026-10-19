; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d580c, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerStaffDamageBonus
; alias: _ZN7Structs25ItemPowerStaffDamageBonus8finalizeEv
; demangled: Structs::ItemPowerStaffDamageBonus::finalize()
; decoder-mode: arm
004d580c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5810  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5814  00 50 a0 e1                                      mov r5, r0
004d5818  00 00 53 e3                                      cmp r3, #0
004d581c  12 00 00 0a                                      beq #0x4d586c
004d5820  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5824  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5828  00 00 53 e1                                      cmp r3, r0
004d582c  01 00 00 1a                                      bne #0x4d5838
004d5830  08 00 00 ea                                      b #0x4d5858
004d5834  04 00 a0 e1                                      mov r0, r4
004d5838  10 40 40 e2                                      sub r4, r0, #0x10
004d583c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5840  04 00 a0 e1                                      mov r0, r4
004d5844  0f e0 a0 e1                                      mov lr, pc
004d5848  00 f0 93 e5                                      ldr pc, [r3]
004d584c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5850  04 00 50 e1                                      cmp r0, r4
004d5854  f6 ff ff 1a                                      bne #0x4d5834
004d5858  08 00 40 e2                                      sub r0, r0, #8
004d585c  f7 ea f8 eb                                      bl #0x310440
004d5860  00 30 a0 e3                                      mov r3, #0
004d5864  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5868  10 30 85 e5                                      str r3, [r5, #0x10]
004d586c  05 00 a0 e1                                      mov r0, r5
004d5870  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5874  b0 ff ff ea                                      b #0x4d573c

; FUNCTION 0x004d6b90, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerStaffDamageBonus
; alias: _ZN7Structs25ItemPowerStaffDamageBonusD1Ev
; demangled: Structs::ItemPowerStaffDamageBonus::~ItemPowerStaffDamageBonus()
; decoder-mode: arm
004d6b90  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6b94  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d6b98  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d6b9c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d6ba0  03 30 8f e0                                      add r3, pc, r3
004d6ba4  02 20 93 e7                                      ldr r2, [r3, r2]
004d6ba8  00 00 51 e3                                      cmp r1, #0
004d6bac  00 50 a0 e1                                      mov r5, r0
004d6bb0  08 20 82 e2                                      add r2, r2, #8
004d6bb4  00 20 80 e5                                      str r2, [r0]
004d6bb8  0f 00 00 0a                                      beq #0x4d6bfc
004d6bbc  04 00 11 e5                                      ldr r0, [r1, #-4]
004d6bc0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d6bc4  00 00 51 e1                                      cmp r1, r0
004d6bc8  01 00 00 1a                                      bne #0x4d6bd4
004d6bcc  08 00 00 ea                                      b #0x4d6bf4
004d6bd0  04 00 a0 e1                                      mov r0, r4
004d6bd4  10 40 40 e2                                      sub r4, r0, #0x10
004d6bd8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6bdc  04 00 a0 e1                                      mov r0, r4
004d6be0  0f e0 a0 e1                                      mov lr, pc
004d6be4  00 f0 93 e5                                      ldr pc, [r3]
004d6be8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6bec  04 00 50 e1                                      cmp r0, r4
004d6bf0  f6 ff ff 1a                                      bne #0x4d6bd0
004d6bf4  08 00 40 e2                                      sub r0, r0, #8
004d6bf8  10 e6 f8 eb                                      bl #0x310440
004d6bfc  05 00 a0 e1                                      mov r0, r5
004d6c00  7a ff ff eb                                      bl #0x4d69f0
004d6c04  05 00 a0 e1                                      mov r0, r5
004d6c08  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d6c0c  f0 de 4b 00 80 35 00 00                          .byte 0xf0, 0xde, 0x4b, 0x00, 0x80, 0x35, 0x00, 0x00

; FUNCTION 0x004d6c14, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerStaffDamageBonus
; alias: _ZN7Structs25ItemPowerStaffDamageBonusD0Ev
; demangled: Structs::ItemPowerStaffDamageBonus::~ItemPowerStaffDamageBonus()
; decoder-mode: arm
004d6c14  10 40 2d e9                                      push {r4, lr}
004d6c18  00 40 a0 e1                                      mov r4, r0
004d6c1c  db ff ff eb                                      bl #0x4d6b90
004d6c20  04 00 a0 e1                                      mov r0, r4
004d6c24  05 e6 f8 eb                                      bl #0x310440
004d6c28  04 00 a0 e1                                      mov r0, r4
004d6c2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d6c30, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerStaffDamageBonus
; alias: _ZN7Structs25ItemPowerStaffDamageBonusD2Ev
; demangled: Structs::ItemPowerStaffDamageBonus::~ItemPowerStaffDamageBonus()
; decoder-mode: arm
004d6c30  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6c34  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d6c38  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d6c3c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d6c40  03 30 8f e0                                      add r3, pc, r3
004d6c44  02 20 93 e7                                      ldr r2, [r3, r2]
004d6c48  00 00 51 e3                                      cmp r1, #0
004d6c4c  00 50 a0 e1                                      mov r5, r0
004d6c50  08 20 82 e2                                      add r2, r2, #8
004d6c54  00 20 80 e5                                      str r2, [r0]
004d6c58  0f 00 00 0a                                      beq #0x4d6c9c
004d6c5c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d6c60  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d6c64  00 00 51 e1                                      cmp r1, r0
004d6c68  01 00 00 1a                                      bne #0x4d6c74
004d6c6c  08 00 00 ea                                      b #0x4d6c94
004d6c70  04 00 a0 e1                                      mov r0, r4
004d6c74  10 40 40 e2                                      sub r4, r0, #0x10
004d6c78  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6c7c  04 00 a0 e1                                      mov r0, r4
004d6c80  0f e0 a0 e1                                      mov lr, pc
004d6c84  00 f0 93 e5                                      ldr pc, [r3]
004d6c88  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6c8c  04 00 50 e1                                      cmp r0, r4
004d6c90  f6 ff ff 1a                                      bne #0x4d6c70
004d6c94  08 00 40 e2                                      sub r0, r0, #8
004d6c98  e8 e5 f8 eb                                      bl #0x310440
004d6c9c  05 00 a0 e1                                      mov r0, r5
004d6ca0  52 ff ff eb                                      bl #0x4d69f0
004d6ca4  05 00 a0 e1                                      mov r0, r5
004d6ca8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d6cac  50 de 4b 00 80 35 00 00                          .byte 0x50, 0xde, 0x4b, 0x00, 0x80, 0x35, 0x00, 0x00

; FUNCTION 0x004ed15c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerStaffDamageBonus
; alias: _ZN7Structs25ItemPowerStaffDamageBonus4readEP11IStreamBase
; demangled: Structs::ItemPowerStaffDamageBonus::read(IStreamBase*)
; decoder-mode: arm
004ed15c  19 ff ff ea                                      b #0x4ecdc8

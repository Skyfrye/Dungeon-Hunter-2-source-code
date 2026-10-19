; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5950, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerMaceDamageBonus
; alias: _ZN7Structs24ItemPowerMaceDamageBonus8finalizeEv
; demangled: Structs::ItemPowerMaceDamageBonus::finalize()
; decoder-mode: arm
004d5950  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5954  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5958  00 50 a0 e1                                      mov r5, r0
004d595c  00 00 53 e3                                      cmp r3, #0
004d5960  12 00 00 0a                                      beq #0x4d59b0
004d5964  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5968  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d596c  00 00 53 e1                                      cmp r3, r0
004d5970  01 00 00 1a                                      bne #0x4d597c
004d5974  08 00 00 ea                                      b #0x4d599c
004d5978  04 00 a0 e1                                      mov r0, r4
004d597c  10 40 40 e2                                      sub r4, r0, #0x10
004d5980  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5984  04 00 a0 e1                                      mov r0, r4
004d5988  0f e0 a0 e1                                      mov lr, pc
004d598c  00 f0 93 e5                                      ldr pc, [r3]
004d5990  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5994  04 00 50 e1                                      cmp r0, r4
004d5998  f6 ff ff 1a                                      bne #0x4d5978
004d599c  08 00 40 e2                                      sub r0, r0, #8
004d59a0  a6 ea f8 eb                                      bl #0x310440
004d59a4  00 30 a0 e3                                      mov r3, #0
004d59a8  0c 30 85 e5                                      str r3, [r5, #0xc]
004d59ac  10 30 85 e5                                      str r3, [r5, #0x10]
004d59b0  05 00 a0 e1                                      mov r0, r5
004d59b4  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d59b8  5f ff ff ea                                      b #0x4d573c

; FUNCTION 0x004d6efc, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerMaceDamageBonus
; alias: _ZN7Structs24ItemPowerMaceDamageBonusD1Ev
; demangled: Structs::ItemPowerMaceDamageBonus::~ItemPowerMaceDamageBonus()
; decoder-mode: arm
004d6efc  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6f00  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d6f04  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d6f08  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d6f0c  03 30 8f e0                                      add r3, pc, r3
004d6f10  02 20 93 e7                                      ldr r2, [r3, r2]
004d6f14  00 00 51 e3                                      cmp r1, #0
004d6f18  00 50 a0 e1                                      mov r5, r0
004d6f1c  08 20 82 e2                                      add r2, r2, #8
004d6f20  00 20 80 e5                                      str r2, [r0]
004d6f24  0f 00 00 0a                                      beq #0x4d6f68
004d6f28  04 00 11 e5                                      ldr r0, [r1, #-4]
004d6f2c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d6f30  00 00 51 e1                                      cmp r1, r0
004d6f34  01 00 00 1a                                      bne #0x4d6f40
004d6f38  08 00 00 ea                                      b #0x4d6f60
004d6f3c  04 00 a0 e1                                      mov r0, r4
004d6f40  10 40 40 e2                                      sub r4, r0, #0x10
004d6f44  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6f48  04 00 a0 e1                                      mov r0, r4
004d6f4c  0f e0 a0 e1                                      mov lr, pc
004d6f50  00 f0 93 e5                                      ldr pc, [r3]
004d6f54  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6f58  04 00 50 e1                                      cmp r0, r4
004d6f5c  f6 ff ff 1a                                      bne #0x4d6f3c
004d6f60  08 00 40 e2                                      sub r0, r0, #8
004d6f64  35 e5 f8 eb                                      bl #0x310440
004d6f68  05 00 a0 e1                                      mov r0, r5
004d6f6c  9f fe ff eb                                      bl #0x4d69f0
004d6f70  05 00 a0 e1                                      mov r0, r5
004d6f74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d6f78  84 db 4b 00 64 27 00 00                          .byte 0x84, 0xdb, 0x4b, 0x00, 0x64, 0x27, 0x00, 0x00

; FUNCTION 0x004d6f80, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerMaceDamageBonus
; alias: _ZN7Structs24ItemPowerMaceDamageBonusD0Ev
; demangled: Structs::ItemPowerMaceDamageBonus::~ItemPowerMaceDamageBonus()
; decoder-mode: arm
004d6f80  10 40 2d e9                                      push {r4, lr}
004d6f84  00 40 a0 e1                                      mov r4, r0
004d6f88  db ff ff eb                                      bl #0x4d6efc
004d6f8c  04 00 a0 e1                                      mov r0, r4
004d6f90  2a e5 f8 eb                                      bl #0x310440
004d6f94  04 00 a0 e1                                      mov r0, r4
004d6f98  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d6f9c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerMaceDamageBonus
; alias: _ZN7Structs24ItemPowerMaceDamageBonusD2Ev
; demangled: Structs::ItemPowerMaceDamageBonus::~ItemPowerMaceDamageBonus()
; decoder-mode: arm
004d6f9c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6fa0  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d6fa4  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d6fa8  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d6fac  03 30 8f e0                                      add r3, pc, r3
004d6fb0  02 20 93 e7                                      ldr r2, [r3, r2]
004d6fb4  00 00 51 e3                                      cmp r1, #0
004d6fb8  00 50 a0 e1                                      mov r5, r0
004d6fbc  08 20 82 e2                                      add r2, r2, #8
004d6fc0  00 20 80 e5                                      str r2, [r0]
004d6fc4  0f 00 00 0a                                      beq #0x4d7008
004d6fc8  04 00 11 e5                                      ldr r0, [r1, #-4]
004d6fcc  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d6fd0  00 00 51 e1                                      cmp r1, r0
004d6fd4  01 00 00 1a                                      bne #0x4d6fe0
004d6fd8  08 00 00 ea                                      b #0x4d7000
004d6fdc  04 00 a0 e1                                      mov r0, r4
004d6fe0  10 40 40 e2                                      sub r4, r0, #0x10
004d6fe4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6fe8  04 00 a0 e1                                      mov r0, r4
004d6fec  0f e0 a0 e1                                      mov lr, pc
004d6ff0  00 f0 93 e5                                      ldr pc, [r3]
004d6ff4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6ff8  04 00 50 e1                                      cmp r0, r4
004d6ffc  f6 ff ff 1a                                      bne #0x4d6fdc
004d7000  08 00 40 e2                                      sub r0, r0, #8
004d7004  0d e5 f8 eb                                      bl #0x310440
004d7008  05 00 a0 e1                                      mov r0, r5
004d700c  77 fe ff eb                                      bl #0x4d69f0
004d7010  05 00 a0 e1                                      mov r0, r5
004d7014  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7018  e4 da 4b 00 64 27 00 00                          .byte 0xe4, 0xda, 0x4b, 0x00, 0x64, 0x27, 0x00, 0x00

; FUNCTION 0x004ed168, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerMaceDamageBonus
; alias: _ZN7Structs24ItemPowerMaceDamageBonus4readEP11IStreamBase
; demangled: Structs::ItemPowerMaceDamageBonus::read(IStreamBase*)
; decoder-mode: arm
004ed168  16 ff ff ea                                      b #0x4ecdc8

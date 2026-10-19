; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d64b4, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerEarthDotDamage
; alias: _ZN7Structs23ItemPowerEarthDotDamage8finalizeEv
; demangled: Structs::ItemPowerEarthDotDamage::finalize()
; decoder-mode: arm
004d64b4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d64b8  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d64bc  00 50 a0 e1                                      mov r5, r0
004d64c0  00 00 53 e3                                      cmp r3, #0
004d64c4  12 00 00 0a                                      beq #0x4d6514
004d64c8  04 00 13 e5                                      ldr r0, [r3, #-4]
004d64cc  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d64d0  00 00 53 e1                                      cmp r3, r0
004d64d4  01 00 00 1a                                      bne #0x4d64e0
004d64d8  08 00 00 ea                                      b #0x4d6500
004d64dc  04 00 a0 e1                                      mov r0, r4
004d64e0  10 40 40 e2                                      sub r4, r0, #0x10
004d64e4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d64e8  04 00 a0 e1                                      mov r0, r4
004d64ec  0f e0 a0 e1                                      mov lr, pc
004d64f0  00 f0 93 e5                                      ldr pc, [r3]
004d64f4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d64f8  04 00 50 e1                                      cmp r0, r4
004d64fc  f6 ff ff 1a                                      bne #0x4d64dc
004d6500  08 00 40 e2                                      sub r0, r0, #8
004d6504  cd e7 f8 eb                                      bl #0x310440
004d6508  00 30 a0 e3                                      mov r3, #0
004d650c  0c 30 85 e5                                      str r3, [r5, #0xc]
004d6510  10 30 85 e5                                      str r3, [r5, #0x10]
004d6514  05 00 a0 e1                                      mov r0, r5
004d6518  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d651c  86 fc ff ea                                      b #0x4d573c

; FUNCTION 0x004d8dc8, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerEarthDotDamage
; alias: _ZN7Structs23ItemPowerEarthDotDamageD1Ev
; demangled: Structs::ItemPowerEarthDotDamage::~ItemPowerEarthDotDamage()
; decoder-mode: arm
004d8dc8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8dcc  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8dd0  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8dd4  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8dd8  03 30 8f e0                                      add r3, pc, r3
004d8ddc  02 20 93 e7                                      ldr r2, [r3, r2]
004d8de0  00 00 51 e3                                      cmp r1, #0
004d8de4  00 50 a0 e1                                      mov r5, r0
004d8de8  08 20 82 e2                                      add r2, r2, #8
004d8dec  00 20 80 e5                                      str r2, [r0]
004d8df0  0f 00 00 0a                                      beq #0x4d8e34
004d8df4  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8df8  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8dfc  00 00 51 e1                                      cmp r1, r0
004d8e00  01 00 00 1a                                      bne #0x4d8e0c
004d8e04  08 00 00 ea                                      b #0x4d8e2c
004d8e08  04 00 a0 e1                                      mov r0, r4
004d8e0c  10 40 40 e2                                      sub r4, r0, #0x10
004d8e10  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8e14  04 00 a0 e1                                      mov r0, r4
004d8e18  0f e0 a0 e1                                      mov lr, pc
004d8e1c  00 f0 93 e5                                      ldr pc, [r3]
004d8e20  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8e24  04 00 50 e1                                      cmp r0, r4
004d8e28  f6 ff ff 1a                                      bne #0x4d8e08
004d8e2c  08 00 40 e2                                      sub r0, r0, #8
004d8e30  82 dd f8 eb                                      bl #0x310440
004d8e34  05 00 a0 e1                                      mov r0, r5
004d8e38  ec f6 ff eb                                      bl #0x4d69f0
004d8e3c  05 00 a0 e1                                      mov r0, r5
004d8e40  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8e44  b8 bc 4b 00 b4 40 00 00                          .byte 0xb8, 0xbc, 0x4b, 0x00, 0xb4, 0x40, 0x00, 0x00

; FUNCTION 0x004d8e4c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerEarthDotDamage
; alias: _ZN7Structs23ItemPowerEarthDotDamageD0Ev
; demangled: Structs::ItemPowerEarthDotDamage::~ItemPowerEarthDotDamage()
; decoder-mode: arm
004d8e4c  10 40 2d e9                                      push {r4, lr}
004d8e50  00 40 a0 e1                                      mov r4, r0
004d8e54  db ff ff eb                                      bl #0x4d8dc8
004d8e58  04 00 a0 e1                                      mov r0, r4
004d8e5c  77 dd f8 eb                                      bl #0x310440
004d8e60  04 00 a0 e1                                      mov r0, r4
004d8e64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d8e68, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerEarthDotDamage
; alias: _ZN7Structs23ItemPowerEarthDotDamageD2Ev
; demangled: Structs::ItemPowerEarthDotDamage::~ItemPowerEarthDotDamage()
; decoder-mode: arm
004d8e68  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8e6c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8e70  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8e74  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8e78  03 30 8f e0                                      add r3, pc, r3
004d8e7c  02 20 93 e7                                      ldr r2, [r3, r2]
004d8e80  00 00 51 e3                                      cmp r1, #0
004d8e84  00 50 a0 e1                                      mov r5, r0
004d8e88  08 20 82 e2                                      add r2, r2, #8
004d8e8c  00 20 80 e5                                      str r2, [r0]
004d8e90  0f 00 00 0a                                      beq #0x4d8ed4
004d8e94  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8e98  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8e9c  00 00 51 e1                                      cmp r1, r0
004d8ea0  01 00 00 1a                                      bne #0x4d8eac
004d8ea4  08 00 00 ea                                      b #0x4d8ecc
004d8ea8  04 00 a0 e1                                      mov r0, r4
004d8eac  10 40 40 e2                                      sub r4, r0, #0x10
004d8eb0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8eb4  04 00 a0 e1                                      mov r0, r4
004d8eb8  0f e0 a0 e1                                      mov lr, pc
004d8ebc  00 f0 93 e5                                      ldr pc, [r3]
004d8ec0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8ec4  04 00 50 e1                                      cmp r0, r4
004d8ec8  f6 ff ff 1a                                      bne #0x4d8ea8
004d8ecc  08 00 40 e2                                      sub r0, r0, #8
004d8ed0  5a dd f8 eb                                      bl #0x310440
004d8ed4  05 00 a0 e1                                      mov r0, r5
004d8ed8  c4 f6 ff eb                                      bl #0x4d69f0
004d8edc  05 00 a0 e1                                      mov r0, r5
004d8ee0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8ee4  18 bc 4b 00 b4 40 00 00                          .byte 0x18, 0xbc, 0x4b, 0x00, 0xb4, 0x40, 0x00, 0x00

; FUNCTION 0x004ed1d4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerEarthDotDamage
; alias: _ZN7Structs23ItemPowerEarthDotDamage4readEP11IStreamBase
; demangled: Structs::ItemPowerEarthDotDamage::read(IStreamBase*)
; decoder-mode: arm
004ed1d4  fb fe ff ea                                      b #0x4ecdc8

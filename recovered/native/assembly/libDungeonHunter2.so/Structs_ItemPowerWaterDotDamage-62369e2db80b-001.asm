; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d6448, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerWaterDotDamage
; alias: _ZN7Structs23ItemPowerWaterDotDamage8finalizeEv
; demangled: Structs::ItemPowerWaterDotDamage::finalize()
; decoder-mode: arm
004d6448  70 40 2d e9                                      push {r4, r5, r6, lr}
004d644c  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d6450  00 50 a0 e1                                      mov r5, r0
004d6454  00 00 53 e3                                      cmp r3, #0
004d6458  12 00 00 0a                                      beq #0x4d64a8
004d645c  04 00 13 e5                                      ldr r0, [r3, #-4]
004d6460  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d6464  00 00 53 e1                                      cmp r3, r0
004d6468  01 00 00 1a                                      bne #0x4d6474
004d646c  08 00 00 ea                                      b #0x4d6494
004d6470  04 00 a0 e1                                      mov r0, r4
004d6474  10 40 40 e2                                      sub r4, r0, #0x10
004d6478  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d647c  04 00 a0 e1                                      mov r0, r4
004d6480  0f e0 a0 e1                                      mov lr, pc
004d6484  00 f0 93 e5                                      ldr pc, [r3]
004d6488  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d648c  04 00 50 e1                                      cmp r0, r4
004d6490  f6 ff ff 1a                                      bne #0x4d6470
004d6494  08 00 40 e2                                      sub r0, r0, #8
004d6498  e8 e7 f8 eb                                      bl #0x310440
004d649c  00 30 a0 e3                                      mov r3, #0
004d64a0  0c 30 85 e5                                      str r3, [r5, #0xc]
004d64a4  10 30 85 e5                                      str r3, [r5, #0x10]
004d64a8  05 00 a0 e1                                      mov r0, r5
004d64ac  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d64b0  a1 fc ff ea                                      b #0x4d573c

; FUNCTION 0x004d8ca4, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerWaterDotDamage
; alias: _ZN7Structs23ItemPowerWaterDotDamageD1Ev
; demangled: Structs::ItemPowerWaterDotDamage::~ItemPowerWaterDotDamage()
; decoder-mode: arm
004d8ca4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8ca8  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8cac  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8cb0  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8cb4  03 30 8f e0                                      add r3, pc, r3
004d8cb8  02 20 93 e7                                      ldr r2, [r3, r2]
004d8cbc  00 00 51 e3                                      cmp r1, #0
004d8cc0  00 50 a0 e1                                      mov r5, r0
004d8cc4  08 20 82 e2                                      add r2, r2, #8
004d8cc8  00 20 80 e5                                      str r2, [r0]
004d8ccc  0f 00 00 0a                                      beq #0x4d8d10
004d8cd0  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8cd4  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8cd8  00 00 51 e1                                      cmp r1, r0
004d8cdc  01 00 00 1a                                      bne #0x4d8ce8
004d8ce0  08 00 00 ea                                      b #0x4d8d08
004d8ce4  04 00 a0 e1                                      mov r0, r4
004d8ce8  10 40 40 e2                                      sub r4, r0, #0x10
004d8cec  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8cf0  04 00 a0 e1                                      mov r0, r4
004d8cf4  0f e0 a0 e1                                      mov lr, pc
004d8cf8  00 f0 93 e5                                      ldr pc, [r3]
004d8cfc  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8d00  04 00 50 e1                                      cmp r0, r4
004d8d04  f6 ff ff 1a                                      bne #0x4d8ce4
004d8d08  08 00 40 e2                                      sub r0, r0, #8
004d8d0c  cb dd f8 eb                                      bl #0x310440
004d8d10  05 00 a0 e1                                      mov r0, r5
004d8d14  35 f7 ff eb                                      bl #0x4d69f0
004d8d18  05 00 a0 e1                                      mov r0, r5
004d8d1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8d20  dc bd 4b 00 2c 49 00 00                          .byte 0xdc, 0xbd, 0x4b, 0x00, 0x2c, 0x49, 0x00, 0x00

; FUNCTION 0x004d8d28, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerWaterDotDamage
; alias: _ZN7Structs23ItemPowerWaterDotDamageD0Ev
; demangled: Structs::ItemPowerWaterDotDamage::~ItemPowerWaterDotDamage()
; decoder-mode: arm
004d8d28  10 40 2d e9                                      push {r4, lr}
004d8d2c  00 40 a0 e1                                      mov r4, r0
004d8d30  db ff ff eb                                      bl #0x4d8ca4
004d8d34  04 00 a0 e1                                      mov r0, r4
004d8d38  c0 dd f8 eb                                      bl #0x310440
004d8d3c  04 00 a0 e1                                      mov r0, r4
004d8d40  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d8d44, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerWaterDotDamage
; alias: _ZN7Structs23ItemPowerWaterDotDamageD2Ev
; demangled: Structs::ItemPowerWaterDotDamage::~ItemPowerWaterDotDamage()
; decoder-mode: arm
004d8d44  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8d48  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8d4c  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8d50  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8d54  03 30 8f e0                                      add r3, pc, r3
004d8d58  02 20 93 e7                                      ldr r2, [r3, r2]
004d8d5c  00 00 51 e3                                      cmp r1, #0
004d8d60  00 50 a0 e1                                      mov r5, r0
004d8d64  08 20 82 e2                                      add r2, r2, #8
004d8d68  00 20 80 e5                                      str r2, [r0]
004d8d6c  0f 00 00 0a                                      beq #0x4d8db0
004d8d70  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8d74  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8d78  00 00 51 e1                                      cmp r1, r0
004d8d7c  01 00 00 1a                                      bne #0x4d8d88
004d8d80  08 00 00 ea                                      b #0x4d8da8
004d8d84  04 00 a0 e1                                      mov r0, r4
004d8d88  10 40 40 e2                                      sub r4, r0, #0x10
004d8d8c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8d90  04 00 a0 e1                                      mov r0, r4
004d8d94  0f e0 a0 e1                                      mov lr, pc
004d8d98  00 f0 93 e5                                      ldr pc, [r3]
004d8d9c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8da0  04 00 50 e1                                      cmp r0, r4
004d8da4  f6 ff ff 1a                                      bne #0x4d8d84
004d8da8  08 00 40 e2                                      sub r0, r0, #8
004d8dac  a3 dd f8 eb                                      bl #0x310440
004d8db0  05 00 a0 e1                                      mov r0, r5
004d8db4  0d f7 ff eb                                      bl #0x4d69f0
004d8db8  05 00 a0 e1                                      mov r0, r5
004d8dbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8dc0  3c bd 4b 00 2c 49 00 00                          .byte 0x3c, 0xbd, 0x4b, 0x00, 0x2c, 0x49, 0x00, 0x00

; FUNCTION 0x004ed1d0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerWaterDotDamage
; alias: _ZN7Structs23ItemPowerWaterDotDamage4readEP11IStreamBase
; demangled: Structs::ItemPowerWaterDotDamage::read(IStreamBase*)
; decoder-mode: arm
004ed1d0  fc fe ff ea                                      b #0x4ecdc8

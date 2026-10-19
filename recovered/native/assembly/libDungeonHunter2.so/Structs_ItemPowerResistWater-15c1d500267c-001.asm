; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5d88, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerResistWater
; alias: _ZN7Structs20ItemPowerResistWater8finalizeEv
; demangled: Structs::ItemPowerResistWater::finalize()
; decoder-mode: arm
004d5d88  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5d8c  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5d90  00 50 a0 e1                                      mov r5, r0
004d5d94  00 00 53 e3                                      cmp r3, #0
004d5d98  12 00 00 0a                                      beq #0x4d5de8
004d5d9c  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5da0  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5da4  00 00 53 e1                                      cmp r3, r0
004d5da8  01 00 00 1a                                      bne #0x4d5db4
004d5dac  08 00 00 ea                                      b #0x4d5dd4
004d5db0  04 00 a0 e1                                      mov r0, r4
004d5db4  10 40 40 e2                                      sub r4, r0, #0x10
004d5db8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5dbc  04 00 a0 e1                                      mov r0, r4
004d5dc0  0f e0 a0 e1                                      mov lr, pc
004d5dc4  00 f0 93 e5                                      ldr pc, [r3]
004d5dc8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5dcc  04 00 50 e1                                      cmp r0, r4
004d5dd0  f6 ff ff 1a                                      bne #0x4d5db0
004d5dd4  08 00 40 e2                                      sub r0, r0, #8
004d5dd8  98 e9 f8 eb                                      bl #0x310440
004d5ddc  00 30 a0 e3                                      mov r3, #0
004d5de0  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5de4  10 30 85 e5                                      str r3, [r5, #0x10]
004d5de8  05 00 a0 e1                                      mov r0, r5
004d5dec  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5df0  51 fe ff ea                                      b #0x4d573c

; FUNCTION 0x004d7a64, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerResistWater
; alias: _ZN7Structs20ItemPowerResistWaterD1Ev
; demangled: Structs::ItemPowerResistWater::~ItemPowerResistWater()
; decoder-mode: arm
004d7a64  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7a68  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7a6c  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7a70  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7a74  03 30 8f e0                                      add r3, pc, r3
004d7a78  02 20 93 e7                                      ldr r2, [r3, r2]
004d7a7c  00 00 51 e3                                      cmp r1, #0
004d7a80  00 50 a0 e1                                      mov r5, r0
004d7a84  08 20 82 e2                                      add r2, r2, #8
004d7a88  00 20 80 e5                                      str r2, [r0]
004d7a8c  0f 00 00 0a                                      beq #0x4d7ad0
004d7a90  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7a94  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7a98  00 00 51 e1                                      cmp r1, r0
004d7a9c  01 00 00 1a                                      bne #0x4d7aa8
004d7aa0  08 00 00 ea                                      b #0x4d7ac8
004d7aa4  04 00 a0 e1                                      mov r0, r4
004d7aa8  10 40 40 e2                                      sub r4, r0, #0x10
004d7aac  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7ab0  04 00 a0 e1                                      mov r0, r4
004d7ab4  0f e0 a0 e1                                      mov lr, pc
004d7ab8  00 f0 93 e5                                      ldr pc, [r3]
004d7abc  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7ac0  04 00 50 e1                                      cmp r0, r4
004d7ac4  f6 ff ff 1a                                      bne #0x4d7aa4
004d7ac8  08 00 40 e2                                      sub r0, r0, #8
004d7acc  5b e2 f8 eb                                      bl #0x310440
004d7ad0  05 00 a0 e1                                      mov r0, r5
004d7ad4  c5 fb ff eb                                      bl #0x4d69f0
004d7ad8  05 00 a0 e1                                      mov r0, r5
004d7adc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7ae0  1c d0 4b 00 88 0d 00 00                          .byte 0x1c, 0xd0, 0x4b, 0x00, 0x88, 0x0d, 0x00, 0x00

; FUNCTION 0x004d7ae8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerResistWater
; alias: _ZN7Structs20ItemPowerResistWaterD0Ev
; demangled: Structs::ItemPowerResistWater::~ItemPowerResistWater()
; decoder-mode: arm
004d7ae8  10 40 2d e9                                      push {r4, lr}
004d7aec  00 40 a0 e1                                      mov r4, r0
004d7af0  db ff ff eb                                      bl #0x4d7a64
004d7af4  04 00 a0 e1                                      mov r0, r4
004d7af8  50 e2 f8 eb                                      bl #0x310440
004d7afc  04 00 a0 e1                                      mov r0, r4
004d7b00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d7b04, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerResistWater
; alias: _ZN7Structs20ItemPowerResistWaterD2Ev
; demangled: Structs::ItemPowerResistWater::~ItemPowerResistWater()
; decoder-mode: arm
004d7b04  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7b08  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7b0c  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7b10  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7b14  03 30 8f e0                                      add r3, pc, r3
004d7b18  02 20 93 e7                                      ldr r2, [r3, r2]
004d7b1c  00 00 51 e3                                      cmp r1, #0
004d7b20  00 50 a0 e1                                      mov r5, r0
004d7b24  08 20 82 e2                                      add r2, r2, #8
004d7b28  00 20 80 e5                                      str r2, [r0]
004d7b2c  0f 00 00 0a                                      beq #0x4d7b70
004d7b30  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7b34  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7b38  00 00 51 e1                                      cmp r1, r0
004d7b3c  01 00 00 1a                                      bne #0x4d7b48
004d7b40  08 00 00 ea                                      b #0x4d7b68
004d7b44  04 00 a0 e1                                      mov r0, r4
004d7b48  10 40 40 e2                                      sub r4, r0, #0x10
004d7b4c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7b50  04 00 a0 e1                                      mov r0, r4
004d7b54  0f e0 a0 e1                                      mov lr, pc
004d7b58  00 f0 93 e5                                      ldr pc, [r3]
004d7b5c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7b60  04 00 50 e1                                      cmp r0, r4
004d7b64  f6 ff ff 1a                                      bne #0x4d7b44
004d7b68  08 00 40 e2                                      sub r0, r0, #8
004d7b6c  33 e2 f8 eb                                      bl #0x310440
004d7b70  05 00 a0 e1                                      mov r0, r5
004d7b74  9d fb ff eb                                      bl #0x4d69f0
004d7b78  05 00 a0 e1                                      mov r0, r5
004d7b7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7b80  7c cf 4b 00 88 0d 00 00                          .byte 0x7c, 0xcf, 0x4b, 0x00, 0x88, 0x0d, 0x00, 0x00

; FUNCTION 0x004ed190, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerResistWater
; alias: _ZN7Structs20ItemPowerResistWater4readEP11IStreamBase
; demangled: Structs::ItemPowerResistWater::read(IStreamBase*)
; decoder-mode: arm
004ed190  0c ff ff ea                                      b #0x4ecdc8

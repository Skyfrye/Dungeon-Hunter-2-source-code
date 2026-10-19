; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5e60, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerResistFire
; alias: _ZN7Structs19ItemPowerResistFire8finalizeEv
; demangled: Structs::ItemPowerResistFire::finalize()
; decoder-mode: arm
004d5e60  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5e64  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5e68  00 50 a0 e1                                      mov r5, r0
004d5e6c  00 00 53 e3                                      cmp r3, #0
004d5e70  12 00 00 0a                                      beq #0x4d5ec0
004d5e74  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5e78  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5e7c  00 00 53 e1                                      cmp r3, r0
004d5e80  01 00 00 1a                                      bne #0x4d5e8c
004d5e84  08 00 00 ea                                      b #0x4d5eac
004d5e88  04 00 a0 e1                                      mov r0, r4
004d5e8c  10 40 40 e2                                      sub r4, r0, #0x10
004d5e90  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5e94  04 00 a0 e1                                      mov r0, r4
004d5e98  0f e0 a0 e1                                      mov lr, pc
004d5e9c  00 f0 93 e5                                      ldr pc, [r3]
004d5ea0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5ea4  04 00 50 e1                                      cmp r0, r4
004d5ea8  f6 ff ff 1a                                      bne #0x4d5e88
004d5eac  08 00 40 e2                                      sub r0, r0, #8
004d5eb0  62 e9 f8 eb                                      bl #0x310440
004d5eb4  00 30 a0 e3                                      mov r3, #0
004d5eb8  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5ebc  10 30 85 e5                                      str r3, [r5, #0x10]
004d5ec0  05 00 a0 e1                                      mov r0, r5
004d5ec4  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5ec8  1b fe ff ea                                      b #0x4d573c

; FUNCTION 0x004d7cac, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerResistFire
; alias: _ZN7Structs19ItemPowerResistFireD1Ev
; demangled: Structs::ItemPowerResistFire::~ItemPowerResistFire()
; decoder-mode: arm
004d7cac  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7cb0  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7cb4  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7cb8  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7cbc  03 30 8f e0                                      add r3, pc, r3
004d7cc0  02 20 93 e7                                      ldr r2, [r3, r2]
004d7cc4  00 00 51 e3                                      cmp r1, #0
004d7cc8  00 50 a0 e1                                      mov r5, r0
004d7ccc  08 20 82 e2                                      add r2, r2, #8
004d7cd0  00 20 80 e5                                      str r2, [r0]
004d7cd4  0f 00 00 0a                                      beq #0x4d7d18
004d7cd8  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7cdc  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7ce0  00 00 51 e1                                      cmp r1, r0
004d7ce4  01 00 00 1a                                      bne #0x4d7cf0
004d7ce8  08 00 00 ea                                      b #0x4d7d10
004d7cec  04 00 a0 e1                                      mov r0, r4
004d7cf0  10 40 40 e2                                      sub r4, r0, #0x10
004d7cf4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7cf8  04 00 a0 e1                                      mov r0, r4
004d7cfc  0f e0 a0 e1                                      mov lr, pc
004d7d00  00 f0 93 e5                                      ldr pc, [r3]
004d7d04  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7d08  04 00 50 e1                                      cmp r0, r4
004d7d0c  f6 ff ff 1a                                      bne #0x4d7cec
004d7d10  08 00 40 e2                                      sub r0, r0, #8
004d7d14  c9 e1 f8 eb                                      bl #0x310440
004d7d18  05 00 a0 e1                                      mov r0, r5
004d7d1c  33 fb ff eb                                      bl #0x4d69f0
004d7d20  05 00 a0 e1                                      mov r0, r5
004d7d24  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7d28  d4 cd 4b 00 30 16 00 00                          .byte 0xd4, 0xcd, 0x4b, 0x00, 0x30, 0x16, 0x00, 0x00

; FUNCTION 0x004d7d30, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerResistFire
; alias: _ZN7Structs19ItemPowerResistFireD0Ev
; demangled: Structs::ItemPowerResistFire::~ItemPowerResistFire()
; decoder-mode: arm
004d7d30  10 40 2d e9                                      push {r4, lr}
004d7d34  00 40 a0 e1                                      mov r4, r0
004d7d38  db ff ff eb                                      bl #0x4d7cac
004d7d3c  04 00 a0 e1                                      mov r0, r4
004d7d40  be e1 f8 eb                                      bl #0x310440
004d7d44  04 00 a0 e1                                      mov r0, r4
004d7d48  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d7d4c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerResistFire
; alias: _ZN7Structs19ItemPowerResistFireD2Ev
; demangled: Structs::ItemPowerResistFire::~ItemPowerResistFire()
; decoder-mode: arm
004d7d4c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7d50  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7d54  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7d58  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7d5c  03 30 8f e0                                      add r3, pc, r3
004d7d60  02 20 93 e7                                      ldr r2, [r3, r2]
004d7d64  00 00 51 e3                                      cmp r1, #0
004d7d68  00 50 a0 e1                                      mov r5, r0
004d7d6c  08 20 82 e2                                      add r2, r2, #8
004d7d70  00 20 80 e5                                      str r2, [r0]
004d7d74  0f 00 00 0a                                      beq #0x4d7db8
004d7d78  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7d7c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7d80  00 00 51 e1                                      cmp r1, r0
004d7d84  01 00 00 1a                                      bne #0x4d7d90
004d7d88  08 00 00 ea                                      b #0x4d7db0
004d7d8c  04 00 a0 e1                                      mov r0, r4
004d7d90  10 40 40 e2                                      sub r4, r0, #0x10
004d7d94  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7d98  04 00 a0 e1                                      mov r0, r4
004d7d9c  0f e0 a0 e1                                      mov lr, pc
004d7da0  00 f0 93 e5                                      ldr pc, [r3]
004d7da4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7da8  04 00 50 e1                                      cmp r0, r4
004d7dac  f6 ff ff 1a                                      bne #0x4d7d8c
004d7db0  08 00 40 e2                                      sub r0, r0, #8
004d7db4  a1 e1 f8 eb                                      bl #0x310440
004d7db8  05 00 a0 e1                                      mov r0, r5
004d7dbc  0b fb ff eb                                      bl #0x4d69f0
004d7dc0  05 00 a0 e1                                      mov r0, r5
004d7dc4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7dc8  34 cd 4b 00 30 16 00 00                          .byte 0x34, 0xcd, 0x4b, 0x00, 0x30, 0x16, 0x00, 0x00

; FUNCTION 0x004ed198, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerResistFire
; alias: _ZN7Structs19ItemPowerResistFire4readEP11IStreamBase
; demangled: Structs::ItemPowerResistFire::read(IStreamBase*)
; decoder-mode: arm
004ed198  0a ff ff ea                                      b #0x4ecdc8

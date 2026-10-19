; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5df4, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerResistEarth
; alias: _ZN7Structs20ItemPowerResistEarth8finalizeEv
; demangled: Structs::ItemPowerResistEarth::finalize()
; decoder-mode: arm
004d5df4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5df8  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5dfc  00 50 a0 e1                                      mov r5, r0
004d5e00  00 00 53 e3                                      cmp r3, #0
004d5e04  12 00 00 0a                                      beq #0x4d5e54
004d5e08  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5e0c  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5e10  00 00 53 e1                                      cmp r3, r0
004d5e14  01 00 00 1a                                      bne #0x4d5e20
004d5e18  08 00 00 ea                                      b #0x4d5e40
004d5e1c  04 00 a0 e1                                      mov r0, r4
004d5e20  10 40 40 e2                                      sub r4, r0, #0x10
004d5e24  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5e28  04 00 a0 e1                                      mov r0, r4
004d5e2c  0f e0 a0 e1                                      mov lr, pc
004d5e30  00 f0 93 e5                                      ldr pc, [r3]
004d5e34  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5e38  04 00 50 e1                                      cmp r0, r4
004d5e3c  f6 ff ff 1a                                      bne #0x4d5e1c
004d5e40  08 00 40 e2                                      sub r0, r0, #8
004d5e44  7d e9 f8 eb                                      bl #0x310440
004d5e48  00 30 a0 e3                                      mov r3, #0
004d5e4c  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5e50  10 30 85 e5                                      str r3, [r5, #0x10]
004d5e54  05 00 a0 e1                                      mov r0, r5
004d5e58  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5e5c  36 fe ff ea                                      b #0x4d573c

; FUNCTION 0x004d7b88, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerResistEarth
; alias: _ZN7Structs20ItemPowerResistEarthD1Ev
; demangled: Structs::ItemPowerResistEarth::~ItemPowerResistEarth()
; decoder-mode: arm
004d7b88  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7b8c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7b90  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7b94  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7b98  03 30 8f e0                                      add r3, pc, r3
004d7b9c  02 20 93 e7                                      ldr r2, [r3, r2]
004d7ba0  00 00 51 e3                                      cmp r1, #0
004d7ba4  00 50 a0 e1                                      mov r5, r0
004d7ba8  08 20 82 e2                                      add r2, r2, #8
004d7bac  00 20 80 e5                                      str r2, [r0]
004d7bb0  0f 00 00 0a                                      beq #0x4d7bf4
004d7bb4  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7bb8  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7bbc  00 00 51 e1                                      cmp r1, r0
004d7bc0  01 00 00 1a                                      bne #0x4d7bcc
004d7bc4  08 00 00 ea                                      b #0x4d7bec
004d7bc8  04 00 a0 e1                                      mov r0, r4
004d7bcc  10 40 40 e2                                      sub r4, r0, #0x10
004d7bd0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7bd4  04 00 a0 e1                                      mov r0, r4
004d7bd8  0f e0 a0 e1                                      mov lr, pc
004d7bdc  00 f0 93 e5                                      ldr pc, [r3]
004d7be0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7be4  04 00 50 e1                                      cmp r0, r4
004d7be8  f6 ff ff 1a                                      bne #0x4d7bc8
004d7bec  08 00 40 e2                                      sub r0, r0, #8
004d7bf0  12 e2 f8 eb                                      bl #0x310440
004d7bf4  05 00 a0 e1                                      mov r0, r5
004d7bf8  7c fb ff eb                                      bl #0x4d69f0
004d7bfc  05 00 a0 e1                                      mov r0, r5
004d7c00  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7c04  f8 ce 4b 00 3c 15 00 00                          .byte 0xf8, 0xce, 0x4b, 0x00, 0x3c, 0x15, 0x00, 0x00

; FUNCTION 0x004d7c0c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerResistEarth
; alias: _ZN7Structs20ItemPowerResistEarthD0Ev
; demangled: Structs::ItemPowerResistEarth::~ItemPowerResistEarth()
; decoder-mode: arm
004d7c0c  10 40 2d e9                                      push {r4, lr}
004d7c10  00 40 a0 e1                                      mov r4, r0
004d7c14  db ff ff eb                                      bl #0x4d7b88
004d7c18  04 00 a0 e1                                      mov r0, r4
004d7c1c  07 e2 f8 eb                                      bl #0x310440
004d7c20  04 00 a0 e1                                      mov r0, r4
004d7c24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d7c28, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerResistEarth
; alias: _ZN7Structs20ItemPowerResistEarthD2Ev
; demangled: Structs::ItemPowerResistEarth::~ItemPowerResistEarth()
; decoder-mode: arm
004d7c28  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7c2c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7c30  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7c34  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7c38  03 30 8f e0                                      add r3, pc, r3
004d7c3c  02 20 93 e7                                      ldr r2, [r3, r2]
004d7c40  00 00 51 e3                                      cmp r1, #0
004d7c44  00 50 a0 e1                                      mov r5, r0
004d7c48  08 20 82 e2                                      add r2, r2, #8
004d7c4c  00 20 80 e5                                      str r2, [r0]
004d7c50  0f 00 00 0a                                      beq #0x4d7c94
004d7c54  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7c58  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7c5c  00 00 51 e1                                      cmp r1, r0
004d7c60  01 00 00 1a                                      bne #0x4d7c6c
004d7c64  08 00 00 ea                                      b #0x4d7c8c
004d7c68  04 00 a0 e1                                      mov r0, r4
004d7c6c  10 40 40 e2                                      sub r4, r0, #0x10
004d7c70  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7c74  04 00 a0 e1                                      mov r0, r4
004d7c78  0f e0 a0 e1                                      mov lr, pc
004d7c7c  00 f0 93 e5                                      ldr pc, [r3]
004d7c80  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7c84  04 00 50 e1                                      cmp r0, r4
004d7c88  f6 ff ff 1a                                      bne #0x4d7c68
004d7c8c  08 00 40 e2                                      sub r0, r0, #8
004d7c90  ea e1 f8 eb                                      bl #0x310440
004d7c94  05 00 a0 e1                                      mov r0, r5
004d7c98  54 fb ff eb                                      bl #0x4d69f0
004d7c9c  05 00 a0 e1                                      mov r0, r5
004d7ca0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7ca4  58 ce 4b 00 3c 15 00 00                          .byte 0x58, 0xce, 0x4b, 0x00, 0x3c, 0x15, 0x00, 0x00

; FUNCTION 0x004ed194, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerResistEarth
; alias: _ZN7Structs20ItemPowerResistEarth4readEP11IStreamBase
; demangled: Structs::ItemPowerResistEarth::read(IStreamBase*)
; decoder-mode: arm
004ed194  0b ff ff ea                                      b #0x4ecdc8

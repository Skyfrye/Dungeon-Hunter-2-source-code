; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d63dc, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerFireDotDamage
; alias: _ZN7Structs22ItemPowerFireDotDamage8finalizeEv
; demangled: Structs::ItemPowerFireDotDamage::finalize()
; decoder-mode: arm
004d63dc  70 40 2d e9                                      push {r4, r5, r6, lr}
004d63e0  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d63e4  00 50 a0 e1                                      mov r5, r0
004d63e8  00 00 53 e3                                      cmp r3, #0
004d63ec  12 00 00 0a                                      beq #0x4d643c
004d63f0  04 00 13 e5                                      ldr r0, [r3, #-4]
004d63f4  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d63f8  00 00 53 e1                                      cmp r3, r0
004d63fc  01 00 00 1a                                      bne #0x4d6408
004d6400  08 00 00 ea                                      b #0x4d6428
004d6404  04 00 a0 e1                                      mov r0, r4
004d6408  10 40 40 e2                                      sub r4, r0, #0x10
004d640c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6410  04 00 a0 e1                                      mov r0, r4
004d6414  0f e0 a0 e1                                      mov lr, pc
004d6418  00 f0 93 e5                                      ldr pc, [r3]
004d641c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6420  04 00 50 e1                                      cmp r0, r4
004d6424  f6 ff ff 1a                                      bne #0x4d6404
004d6428  08 00 40 e2                                      sub r0, r0, #8
004d642c  03 e8 f8 eb                                      bl #0x310440
004d6430  00 30 a0 e3                                      mov r3, #0
004d6434  0c 30 85 e5                                      str r3, [r5, #0xc]
004d6438  10 30 85 e5                                      str r3, [r5, #0x10]
004d643c  05 00 a0 e1                                      mov r0, r5
004d6440  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d6444  bc fc ff ea                                      b #0x4d573c

; FUNCTION 0x004d8b80, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerFireDotDamage
; alias: _ZN7Structs22ItemPowerFireDotDamageD1Ev
; demangled: Structs::ItemPowerFireDotDamage::~ItemPowerFireDotDamage()
; decoder-mode: arm
004d8b80  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8b84  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8b88  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8b8c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8b90  03 30 8f e0                                      add r3, pc, r3
004d8b94  02 20 93 e7                                      ldr r2, [r3, r2]
004d8b98  00 00 51 e3                                      cmp r1, #0
004d8b9c  00 50 a0 e1                                      mov r5, r0
004d8ba0  08 20 82 e2                                      add r2, r2, #8
004d8ba4  00 20 80 e5                                      str r2, [r0]
004d8ba8  0f 00 00 0a                                      beq #0x4d8bec
004d8bac  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8bb0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8bb4  00 00 51 e1                                      cmp r1, r0
004d8bb8  01 00 00 1a                                      bne #0x4d8bc4
004d8bbc  08 00 00 ea                                      b #0x4d8be4
004d8bc0  04 00 a0 e1                                      mov r0, r4
004d8bc4  10 40 40 e2                                      sub r4, r0, #0x10
004d8bc8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8bcc  04 00 a0 e1                                      mov r0, r4
004d8bd0  0f e0 a0 e1                                      mov lr, pc
004d8bd4  00 f0 93 e5                                      ldr pc, [r3]
004d8bd8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8bdc  04 00 50 e1                                      cmp r0, r4
004d8be0  f6 ff ff 1a                                      bne #0x4d8bc0
004d8be4  08 00 40 e2                                      sub r0, r0, #8
004d8be8  14 de f8 eb                                      bl #0x310440
004d8bec  05 00 a0 e1                                      mov r0, r5
004d8bf0  7e f7 ff eb                                      bl #0x4d69f0
004d8bf4  05 00 a0 e1                                      mov r0, r5
004d8bf8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8bfc  00 bf 4b 00 58 4a 00 00                          .byte 0x00, 0xbf, 0x4b, 0x00, 0x58, 0x4a, 0x00, 0x00

; FUNCTION 0x004d8c04, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerFireDotDamage
; alias: _ZN7Structs22ItemPowerFireDotDamageD0Ev
; demangled: Structs::ItemPowerFireDotDamage::~ItemPowerFireDotDamage()
; decoder-mode: arm
004d8c04  10 40 2d e9                                      push {r4, lr}
004d8c08  00 40 a0 e1                                      mov r4, r0
004d8c0c  db ff ff eb                                      bl #0x4d8b80
004d8c10  04 00 a0 e1                                      mov r0, r4
004d8c14  09 de f8 eb                                      bl #0x310440
004d8c18  04 00 a0 e1                                      mov r0, r4
004d8c1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d8c20, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerFireDotDamage
; alias: _ZN7Structs22ItemPowerFireDotDamageD2Ev
; demangled: Structs::ItemPowerFireDotDamage::~ItemPowerFireDotDamage()
; decoder-mode: arm
004d8c20  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8c24  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8c28  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8c2c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8c30  03 30 8f e0                                      add r3, pc, r3
004d8c34  02 20 93 e7                                      ldr r2, [r3, r2]
004d8c38  00 00 51 e3                                      cmp r1, #0
004d8c3c  00 50 a0 e1                                      mov r5, r0
004d8c40  08 20 82 e2                                      add r2, r2, #8
004d8c44  00 20 80 e5                                      str r2, [r0]
004d8c48  0f 00 00 0a                                      beq #0x4d8c8c
004d8c4c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8c50  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8c54  00 00 51 e1                                      cmp r1, r0
004d8c58  01 00 00 1a                                      bne #0x4d8c64
004d8c5c  08 00 00 ea                                      b #0x4d8c84
004d8c60  04 00 a0 e1                                      mov r0, r4
004d8c64  10 40 40 e2                                      sub r4, r0, #0x10
004d8c68  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8c6c  04 00 a0 e1                                      mov r0, r4
004d8c70  0f e0 a0 e1                                      mov lr, pc
004d8c74  00 f0 93 e5                                      ldr pc, [r3]
004d8c78  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8c7c  04 00 50 e1                                      cmp r0, r4
004d8c80  f6 ff ff 1a                                      bne #0x4d8c60
004d8c84  08 00 40 e2                                      sub r0, r0, #8
004d8c88  ec dd f8 eb                                      bl #0x310440
004d8c8c  05 00 a0 e1                                      mov r0, r5
004d8c90  56 f7 ff eb                                      bl #0x4d69f0
004d8c94  05 00 a0 e1                                      mov r0, r5
004d8c98  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8c9c  60 be 4b 00 58 4a 00 00                          .byte 0x60, 0xbe, 0x4b, 0x00, 0x58, 0x4a, 0x00, 0x00

; FUNCTION 0x004ed1cc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerFireDotDamage
; alias: _ZN7Structs22ItemPowerFireDotDamage4readEP11IStreamBase
; demangled: Structs::ItemPowerFireDotDamage::read(IStreamBase*)
; decoder-mode: arm
004ed1cc  fd fe ff ea                                      b #0x4ecdc8

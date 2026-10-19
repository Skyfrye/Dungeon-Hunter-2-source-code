; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d6520, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerElectricalDamage
; alias: _ZN7Structs25ItemPowerElectricalDamage8finalizeEv
; demangled: Structs::ItemPowerElectricalDamage::finalize()
; decoder-mode: arm
004d6520  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6524  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d6528  00 50 a0 e1                                      mov r5, r0
004d652c  00 00 53 e3                                      cmp r3, #0
004d6530  12 00 00 0a                                      beq #0x4d6580
004d6534  04 00 13 e5                                      ldr r0, [r3, #-4]
004d6538  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d653c  00 00 53 e1                                      cmp r3, r0
004d6540  01 00 00 1a                                      bne #0x4d654c
004d6544  08 00 00 ea                                      b #0x4d656c
004d6548  04 00 a0 e1                                      mov r0, r4
004d654c  10 40 40 e2                                      sub r4, r0, #0x10
004d6550  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6554  04 00 a0 e1                                      mov r0, r4
004d6558  0f e0 a0 e1                                      mov lr, pc
004d655c  00 f0 93 e5                                      ldr pc, [r3]
004d6560  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6564  04 00 50 e1                                      cmp r0, r4
004d6568  f6 ff ff 1a                                      bne #0x4d6548
004d656c  08 00 40 e2                                      sub r0, r0, #8
004d6570  b2 e7 f8 eb                                      bl #0x310440
004d6574  00 30 a0 e3                                      mov r3, #0
004d6578  0c 30 85 e5                                      str r3, [r5, #0xc]
004d657c  10 30 85 e5                                      str r3, [r5, #0x10]
004d6580  05 00 a0 e1                                      mov r0, r5
004d6584  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d6588  6b fc ff ea                                      b #0x4d573c

; FUNCTION 0x004d8eec, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerElectricalDamage
; alias: _ZN7Structs25ItemPowerElectricalDamageD1Ev
; demangled: Structs::ItemPowerElectricalDamage::~ItemPowerElectricalDamage()
; decoder-mode: arm
004d8eec  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8ef0  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8ef4  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8ef8  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8efc  03 30 8f e0                                      add r3, pc, r3
004d8f00  02 20 93 e7                                      ldr r2, [r3, r2]
004d8f04  00 00 51 e3                                      cmp r1, #0
004d8f08  00 50 a0 e1                                      mov r5, r0
004d8f0c  08 20 82 e2                                      add r2, r2, #8
004d8f10  00 20 80 e5                                      str r2, [r0]
004d8f14  0f 00 00 0a                                      beq #0x4d8f58
004d8f18  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8f1c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8f20  00 00 51 e1                                      cmp r1, r0
004d8f24  01 00 00 1a                                      bne #0x4d8f30
004d8f28  08 00 00 ea                                      b #0x4d8f50
004d8f2c  04 00 a0 e1                                      mov r0, r4
004d8f30  10 40 40 e2                                      sub r4, r0, #0x10
004d8f34  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8f38  04 00 a0 e1                                      mov r0, r4
004d8f3c  0f e0 a0 e1                                      mov lr, pc
004d8f40  00 f0 93 e5                                      ldr pc, [r3]
004d8f44  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8f48  04 00 50 e1                                      cmp r0, r4
004d8f4c  f6 ff ff 1a                                      bne #0x4d8f2c
004d8f50  08 00 40 e2                                      sub r0, r0, #8
004d8f54  39 dd f8 eb                                      bl #0x310440
004d8f58  05 00 a0 e1                                      mov r0, r5
004d8f5c  a3 f6 ff eb                                      bl #0x4d69f0
004d8f60  05 00 a0 e1                                      mov r0, r5
004d8f64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8f68  94 bb 4b 00 f8 14 00 00                          .byte 0x94, 0xbb, 0x4b, 0x00, 0xf8, 0x14, 0x00, 0x00

; FUNCTION 0x004d8f70, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerElectricalDamage
; alias: _ZN7Structs25ItemPowerElectricalDamageD0Ev
; demangled: Structs::ItemPowerElectricalDamage::~ItemPowerElectricalDamage()
; decoder-mode: arm
004d8f70  10 40 2d e9                                      push {r4, lr}
004d8f74  00 40 a0 e1                                      mov r4, r0
004d8f78  db ff ff eb                                      bl #0x4d8eec
004d8f7c  04 00 a0 e1                                      mov r0, r4
004d8f80  2e dd f8 eb                                      bl #0x310440
004d8f84  04 00 a0 e1                                      mov r0, r4
004d8f88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d8f8c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerElectricalDamage
; alias: _ZN7Structs25ItemPowerElectricalDamageD2Ev
; demangled: Structs::ItemPowerElectricalDamage::~ItemPowerElectricalDamage()
; decoder-mode: arm
004d8f8c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8f90  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8f94  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8f98  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8f9c  03 30 8f e0                                      add r3, pc, r3
004d8fa0  02 20 93 e7                                      ldr r2, [r3, r2]
004d8fa4  00 00 51 e3                                      cmp r1, #0
004d8fa8  00 50 a0 e1                                      mov r5, r0
004d8fac  08 20 82 e2                                      add r2, r2, #8
004d8fb0  00 20 80 e5                                      str r2, [r0]
004d8fb4  0f 00 00 0a                                      beq #0x4d8ff8
004d8fb8  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8fbc  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8fc0  00 00 51 e1                                      cmp r1, r0
004d8fc4  01 00 00 1a                                      bne #0x4d8fd0
004d8fc8  08 00 00 ea                                      b #0x4d8ff0
004d8fcc  04 00 a0 e1                                      mov r0, r4
004d8fd0  10 40 40 e2                                      sub r4, r0, #0x10
004d8fd4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8fd8  04 00 a0 e1                                      mov r0, r4
004d8fdc  0f e0 a0 e1                                      mov lr, pc
004d8fe0  00 f0 93 e5                                      ldr pc, [r3]
004d8fe4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8fe8  04 00 50 e1                                      cmp r0, r4
004d8fec  f6 ff ff 1a                                      bne #0x4d8fcc
004d8ff0  08 00 40 e2                                      sub r0, r0, #8
004d8ff4  11 dd f8 eb                                      bl #0x310440
004d8ff8  05 00 a0 e1                                      mov r0, r5
004d8ffc  7b f6 ff eb                                      bl #0x4d69f0
004d9000  05 00 a0 e1                                      mov r0, r5
004d9004  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d9008  f4 ba 4b 00 f8 14 00 00                          .byte 0xf4, 0xba, 0x4b, 0x00, 0xf8, 0x14, 0x00, 0x00

; FUNCTION 0x004ed1d8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerElectricalDamage
; alias: _ZN7Structs25ItemPowerElectricalDamage4readEP11IStreamBase
; demangled: Structs::ItemPowerElectricalDamage::read(IStreamBase*)
; decoder-mode: arm
004ed1d8  fa fe ff ea                                      b #0x4ecdc8

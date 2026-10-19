; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d6298, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerHPRegen
; alias: _ZN7Structs16ItemPowerHPRegen8finalizeEv
; demangled: Structs::ItemPowerHPRegen::finalize()
; decoder-mode: arm
004d6298  70 40 2d e9                                      push {r4, r5, r6, lr}
004d629c  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d62a0  00 50 a0 e1                                      mov r5, r0
004d62a4  00 00 53 e3                                      cmp r3, #0
004d62a8  12 00 00 0a                                      beq #0x4d62f8
004d62ac  04 00 13 e5                                      ldr r0, [r3, #-4]
004d62b0  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d62b4  00 00 53 e1                                      cmp r3, r0
004d62b8  01 00 00 1a                                      bne #0x4d62c4
004d62bc  08 00 00 ea                                      b #0x4d62e4
004d62c0  04 00 a0 e1                                      mov r0, r4
004d62c4  10 40 40 e2                                      sub r4, r0, #0x10
004d62c8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d62cc  04 00 a0 e1                                      mov r0, r4
004d62d0  0f e0 a0 e1                                      mov lr, pc
004d62d4  00 f0 93 e5                                      ldr pc, [r3]
004d62d8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d62dc  04 00 50 e1                                      cmp r0, r4
004d62e0  f6 ff ff 1a                                      bne #0x4d62c0
004d62e4  08 00 40 e2                                      sub r0, r0, #8
004d62e8  54 e8 f8 eb                                      bl #0x310440
004d62ec  00 30 a0 e3                                      mov r3, #0
004d62f0  0c 30 85 e5                                      str r3, [r5, #0xc]
004d62f4  10 30 85 e5                                      str r3, [r5, #0x10]
004d62f8  05 00 a0 e1                                      mov r0, r5
004d62fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d6300  0d fd ff ea                                      b #0x4d573c

; FUNCTION 0x004d8814, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerHPRegen
; alias: _ZN7Structs16ItemPowerHPRegenD1Ev
; demangled: Structs::ItemPowerHPRegen::~ItemPowerHPRegen()
; decoder-mode: arm
004d8814  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8818  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d881c  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8820  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8824  03 30 8f e0                                      add r3, pc, r3
004d8828  02 20 93 e7                                      ldr r2, [r3, r2]
004d882c  00 00 51 e3                                      cmp r1, #0
004d8830  00 50 a0 e1                                      mov r5, r0
004d8834  08 20 82 e2                                      add r2, r2, #8
004d8838  00 20 80 e5                                      str r2, [r0]
004d883c  0f 00 00 0a                                      beq #0x4d8880
004d8840  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8844  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8848  00 00 51 e1                                      cmp r1, r0
004d884c  01 00 00 1a                                      bne #0x4d8858
004d8850  08 00 00 ea                                      b #0x4d8878
004d8854  04 00 a0 e1                                      mov r0, r4
004d8858  10 40 40 e2                                      sub r4, r0, #0x10
004d885c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8860  04 00 a0 e1                                      mov r0, r4
004d8864  0f e0 a0 e1                                      mov lr, pc
004d8868  00 f0 93 e5                                      ldr pc, [r3]
004d886c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8870  04 00 50 e1                                      cmp r0, r4
004d8874  f6 ff ff 1a                                      bne #0x4d8854
004d8878  08 00 40 e2                                      sub r0, r0, #8
004d887c  ef de f8 eb                                      bl #0x310440
004d8880  05 00 a0 e1                                      mov r0, r5
004d8884  59 f8 ff eb                                      bl #0x4d69f0
004d8888  05 00 a0 e1                                      mov r0, r5
004d888c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8890  6c c2 4b 00 6c 14 00 00                          .byte 0x6c, 0xc2, 0x4b, 0x00, 0x6c, 0x14, 0x00, 0x00

; FUNCTION 0x004d8898, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerHPRegen
; alias: _ZN7Structs16ItemPowerHPRegenD0Ev
; demangled: Structs::ItemPowerHPRegen::~ItemPowerHPRegen()
; decoder-mode: arm
004d8898  10 40 2d e9                                      push {r4, lr}
004d889c  00 40 a0 e1                                      mov r4, r0
004d88a0  db ff ff eb                                      bl #0x4d8814
004d88a4  04 00 a0 e1                                      mov r0, r4
004d88a8  e4 de f8 eb                                      bl #0x310440
004d88ac  04 00 a0 e1                                      mov r0, r4
004d88b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d88b4, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerHPRegen
; alias: _ZN7Structs16ItemPowerHPRegenD2Ev
; demangled: Structs::ItemPowerHPRegen::~ItemPowerHPRegen()
; decoder-mode: arm
004d88b4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d88b8  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d88bc  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d88c0  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d88c4  03 30 8f e0                                      add r3, pc, r3
004d88c8  02 20 93 e7                                      ldr r2, [r3, r2]
004d88cc  00 00 51 e3                                      cmp r1, #0
004d88d0  00 50 a0 e1                                      mov r5, r0
004d88d4  08 20 82 e2                                      add r2, r2, #8
004d88d8  00 20 80 e5                                      str r2, [r0]
004d88dc  0f 00 00 0a                                      beq #0x4d8920
004d88e0  04 00 11 e5                                      ldr r0, [r1, #-4]
004d88e4  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d88e8  00 00 51 e1                                      cmp r1, r0
004d88ec  01 00 00 1a                                      bne #0x4d88f8
004d88f0  08 00 00 ea                                      b #0x4d8918
004d88f4  04 00 a0 e1                                      mov r0, r4
004d88f8  10 40 40 e2                                      sub r4, r0, #0x10
004d88fc  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8900  04 00 a0 e1                                      mov r0, r4
004d8904  0f e0 a0 e1                                      mov lr, pc
004d8908  00 f0 93 e5                                      ldr pc, [r3]
004d890c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8910  04 00 50 e1                                      cmp r0, r4
004d8914  f6 ff ff 1a                                      bne #0x4d88f4
004d8918  08 00 40 e2                                      sub r0, r0, #8
004d891c  c7 de f8 eb                                      bl #0x310440
004d8920  05 00 a0 e1                                      mov r0, r5
004d8924  31 f8 ff eb                                      bl #0x4d69f0
004d8928  05 00 a0 e1                                      mov r0, r5
004d892c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8930  cc c1 4b 00 6c 14 00 00                          .byte 0xcc, 0xc1, 0x4b, 0x00, 0x6c, 0x14, 0x00, 0x00

; FUNCTION 0x004ed1c0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerHPRegen
; alias: _ZN7Structs16ItemPowerHPRegen4readEP11IStreamBase
; demangled: Structs::ItemPowerHPRegen::read(IStreamBase*)
; decoder-mode: arm
004ed1c0  00 ff ff ea                                      b #0x4ecdc8

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d66d0, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerFireDamage
; alias: _ZN7Structs19ItemPowerFireDamage8finalizeEv
; demangled: Structs::ItemPowerFireDamage::finalize()
; decoder-mode: arm
004d66d0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d66d4  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d66d8  00 50 a0 e1                                      mov r5, r0
004d66dc  00 00 53 e3                                      cmp r3, #0
004d66e0  12 00 00 0a                                      beq #0x4d6730
004d66e4  04 00 13 e5                                      ldr r0, [r3, #-4]
004d66e8  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d66ec  00 00 53 e1                                      cmp r3, r0
004d66f0  01 00 00 1a                                      bne #0x4d66fc
004d66f4  08 00 00 ea                                      b #0x4d671c
004d66f8  04 00 a0 e1                                      mov r0, r4
004d66fc  10 40 40 e2                                      sub r4, r0, #0x10
004d6700  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6704  04 00 a0 e1                                      mov r0, r4
004d6708  0f e0 a0 e1                                      mov lr, pc
004d670c  00 f0 93 e5                                      ldr pc, [r3]
004d6710  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6714  04 00 50 e1                                      cmp r0, r4
004d6718  f6 ff ff 1a                                      bne #0x4d66f8
004d671c  08 00 40 e2                                      sub r0, r0, #8
004d6720  46 e7 f8 eb                                      bl #0x310440
004d6724  00 30 a0 e3                                      mov r3, #0
004d6728  0c 30 85 e5                                      str r3, [r5, #0xc]
004d672c  10 30 85 e5                                      str r3, [r5, #0x10]
004d6730  05 00 a0 e1                                      mov r0, r5
004d6734  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d6738  ff fb ff ea                                      b #0x4d573c

; FUNCTION 0x004d937c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerFireDamage
; alias: _ZN7Structs19ItemPowerFireDamageD1Ev
; demangled: Structs::ItemPowerFireDamage::~ItemPowerFireDamage()
; decoder-mode: arm
004d937c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d9380  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d9384  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d9388  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d938c  03 30 8f e0                                      add r3, pc, r3
004d9390  02 20 93 e7                                      ldr r2, [r3, r2]
004d9394  00 00 51 e3                                      cmp r1, #0
004d9398  00 50 a0 e1                                      mov r5, r0
004d939c  08 20 82 e2                                      add r2, r2, #8
004d93a0  00 20 80 e5                                      str r2, [r0]
004d93a4  0f 00 00 0a                                      beq #0x4d93e8
004d93a8  04 00 11 e5                                      ldr r0, [r1, #-4]
004d93ac  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d93b0  00 00 51 e1                                      cmp r1, r0
004d93b4  01 00 00 1a                                      bne #0x4d93c0
004d93b8  08 00 00 ea                                      b #0x4d93e0
004d93bc  04 00 a0 e1                                      mov r0, r4
004d93c0  10 40 40 e2                                      sub r4, r0, #0x10
004d93c4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d93c8  04 00 a0 e1                                      mov r0, r4
004d93cc  0f e0 a0 e1                                      mov lr, pc
004d93d0  00 f0 93 e5                                      ldr pc, [r3]
004d93d4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d93d8  04 00 50 e1                                      cmp r0, r4
004d93dc  f6 ff ff 1a                                      bne #0x4d93bc
004d93e0  08 00 40 e2                                      sub r0, r0, #8
004d93e4  15 dc f8 eb                                      bl #0x310440
004d93e8  05 00 a0 e1                                      mov r0, r5
004d93ec  7f f5 ff eb                                      bl #0x4d69f0
004d93f0  05 00 a0 e1                                      mov r0, r5
004d93f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d93f8  04 b7 4b 00 18 08 00 00                          .byte 0x04, 0xb7, 0x4b, 0x00, 0x18, 0x08, 0x00, 0x00

; FUNCTION 0x004d9400, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerFireDamage
; alias: _ZN7Structs19ItemPowerFireDamageD0Ev
; demangled: Structs::ItemPowerFireDamage::~ItemPowerFireDamage()
; decoder-mode: arm
004d9400  10 40 2d e9                                      push {r4, lr}
004d9404  00 40 a0 e1                                      mov r4, r0
004d9408  db ff ff eb                                      bl #0x4d937c
004d940c  04 00 a0 e1                                      mov r0, r4
004d9410  0a dc f8 eb                                      bl #0x310440
004d9414  04 00 a0 e1                                      mov r0, r4
004d9418  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d941c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerFireDamage
; alias: _ZN7Structs19ItemPowerFireDamageD2Ev
; demangled: Structs::ItemPowerFireDamage::~ItemPowerFireDamage()
; decoder-mode: arm
004d941c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d9420  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d9424  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d9428  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d942c  03 30 8f e0                                      add r3, pc, r3
004d9430  02 20 93 e7                                      ldr r2, [r3, r2]
004d9434  00 00 51 e3                                      cmp r1, #0
004d9438  00 50 a0 e1                                      mov r5, r0
004d943c  08 20 82 e2                                      add r2, r2, #8
004d9440  00 20 80 e5                                      str r2, [r0]
004d9444  0f 00 00 0a                                      beq #0x4d9488
004d9448  04 00 11 e5                                      ldr r0, [r1, #-4]
004d944c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d9450  00 00 51 e1                                      cmp r1, r0
004d9454  01 00 00 1a                                      bne #0x4d9460
004d9458  08 00 00 ea                                      b #0x4d9480
004d945c  04 00 a0 e1                                      mov r0, r4
004d9460  10 40 40 e2                                      sub r4, r0, #0x10
004d9464  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d9468  04 00 a0 e1                                      mov r0, r4
004d946c  0f e0 a0 e1                                      mov lr, pc
004d9470  00 f0 93 e5                                      ldr pc, [r3]
004d9474  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d9478  04 00 50 e1                                      cmp r0, r4
004d947c  f6 ff ff 1a                                      bne #0x4d945c
004d9480  08 00 40 e2                                      sub r0, r0, #8
004d9484  ed db f8 eb                                      bl #0x310440
004d9488  05 00 a0 e1                                      mov r0, r5
004d948c  57 f5 ff eb                                      bl #0x4d69f0
004d9490  05 00 a0 e1                                      mov r0, r5
004d9494  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d9498  64 b6 4b 00 18 08 00 00                          .byte 0x64, 0xb6, 0x4b, 0x00, 0x18, 0x08, 0x00, 0x00

; FUNCTION 0x004ed1e8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerFireDamage
; alias: _ZN7Structs19ItemPowerFireDamage4readEP11IStreamBase
; demangled: Structs::ItemPowerFireDamage::read(IStreamBase*)
; decoder-mode: arm
004ed1e8  f6 fe ff ea                                      b #0x4ecdc8

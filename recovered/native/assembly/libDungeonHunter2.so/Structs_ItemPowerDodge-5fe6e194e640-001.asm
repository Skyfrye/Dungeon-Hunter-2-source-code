; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d6154, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerDodge
; alias: _ZN7Structs14ItemPowerDodge8finalizeEv
; demangled: Structs::ItemPowerDodge::finalize()
; decoder-mode: arm
004d6154  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6158  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d615c  00 50 a0 e1                                      mov r5, r0
004d6160  00 00 53 e3                                      cmp r3, #0
004d6164  12 00 00 0a                                      beq #0x4d61b4
004d6168  04 00 13 e5                                      ldr r0, [r3, #-4]
004d616c  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d6170  00 00 53 e1                                      cmp r3, r0
004d6174  01 00 00 1a                                      bne #0x4d6180
004d6178  08 00 00 ea                                      b #0x4d61a0
004d617c  04 00 a0 e1                                      mov r0, r4
004d6180  10 40 40 e2                                      sub r4, r0, #0x10
004d6184  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6188  04 00 a0 e1                                      mov r0, r4
004d618c  0f e0 a0 e1                                      mov lr, pc
004d6190  00 f0 93 e5                                      ldr pc, [r3]
004d6194  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6198  04 00 50 e1                                      cmp r0, r4
004d619c  f6 ff ff 1a                                      bne #0x4d617c
004d61a0  08 00 40 e2                                      sub r0, r0, #8
004d61a4  a5 e8 f8 eb                                      bl #0x310440
004d61a8  00 30 a0 e3                                      mov r3, #0
004d61ac  0c 30 85 e5                                      str r3, [r5, #0xc]
004d61b0  10 30 85 e5                                      str r3, [r5, #0x10]
004d61b4  05 00 a0 e1                                      mov r0, r5
004d61b8  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d61bc  5e fd ff ea                                      b #0x4d573c

; FUNCTION 0x004d84a8, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerDodge
; alias: _ZN7Structs14ItemPowerDodgeD1Ev
; demangled: Structs::ItemPowerDodge::~ItemPowerDodge()
; decoder-mode: arm
004d84a8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d84ac  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d84b0  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d84b4  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d84b8  03 30 8f e0                                      add r3, pc, r3
004d84bc  02 20 93 e7                                      ldr r2, [r3, r2]
004d84c0  00 00 51 e3                                      cmp r1, #0
004d84c4  00 50 a0 e1                                      mov r5, r0
004d84c8  08 20 82 e2                                      add r2, r2, #8
004d84cc  00 20 80 e5                                      str r2, [r0]
004d84d0  0f 00 00 0a                                      beq #0x4d8514
004d84d4  04 00 11 e5                                      ldr r0, [r1, #-4]
004d84d8  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d84dc  00 00 51 e1                                      cmp r1, r0
004d84e0  01 00 00 1a                                      bne #0x4d84ec
004d84e4  08 00 00 ea                                      b #0x4d850c
004d84e8  04 00 a0 e1                                      mov r0, r4
004d84ec  10 40 40 e2                                      sub r4, r0, #0x10
004d84f0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d84f4  04 00 a0 e1                                      mov r0, r4
004d84f8  0f e0 a0 e1                                      mov lr, pc
004d84fc  00 f0 93 e5                                      ldr pc, [r3]
004d8500  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8504  04 00 50 e1                                      cmp r0, r4
004d8508  f6 ff ff 1a                                      bne #0x4d84e8
004d850c  08 00 40 e2                                      sub r0, r0, #8
004d8510  ca df f8 eb                                      bl #0x310440
004d8514  05 00 a0 e1                                      mov r0, r5
004d8518  34 f9 ff eb                                      bl #0x4d69f0
004d851c  05 00 a0 e1                                      mov r0, r5
004d8520  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8524  d8 c5 4b 00 e0 12 00 00                          .byte 0xd8, 0xc5, 0x4b, 0x00, 0xe0, 0x12, 0x00, 0x00

; FUNCTION 0x004d852c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerDodge
; alias: _ZN7Structs14ItemPowerDodgeD0Ev
; demangled: Structs::ItemPowerDodge::~ItemPowerDodge()
; decoder-mode: arm
004d852c  10 40 2d e9                                      push {r4, lr}
004d8530  00 40 a0 e1                                      mov r4, r0
004d8534  db ff ff eb                                      bl #0x4d84a8
004d8538  04 00 a0 e1                                      mov r0, r4
004d853c  bf df f8 eb                                      bl #0x310440
004d8540  04 00 a0 e1                                      mov r0, r4
004d8544  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d8548, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerDodge
; alias: _ZN7Structs14ItemPowerDodgeD2Ev
; demangled: Structs::ItemPowerDodge::~ItemPowerDodge()
; decoder-mode: arm
004d8548  70 40 2d e9                                      push {r4, r5, r6, lr}
004d854c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8550  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8554  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8558  03 30 8f e0                                      add r3, pc, r3
004d855c  02 20 93 e7                                      ldr r2, [r3, r2]
004d8560  00 00 51 e3                                      cmp r1, #0
004d8564  00 50 a0 e1                                      mov r5, r0
004d8568  08 20 82 e2                                      add r2, r2, #8
004d856c  00 20 80 e5                                      str r2, [r0]
004d8570  0f 00 00 0a                                      beq #0x4d85b4
004d8574  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8578  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d857c  00 00 51 e1                                      cmp r1, r0
004d8580  01 00 00 1a                                      bne #0x4d858c
004d8584  08 00 00 ea                                      b #0x4d85ac
004d8588  04 00 a0 e1                                      mov r0, r4
004d858c  10 40 40 e2                                      sub r4, r0, #0x10
004d8590  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8594  04 00 a0 e1                                      mov r0, r4
004d8598  0f e0 a0 e1                                      mov lr, pc
004d859c  00 f0 93 e5                                      ldr pc, [r3]
004d85a0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d85a4  04 00 50 e1                                      cmp r0, r4
004d85a8  f6 ff ff 1a                                      bne #0x4d8588
004d85ac  08 00 40 e2                                      sub r0, r0, #8
004d85b0  a2 df f8 eb                                      bl #0x310440
004d85b4  05 00 a0 e1                                      mov r0, r5
004d85b8  0c f9 ff eb                                      bl #0x4d69f0
004d85bc  05 00 a0 e1                                      mov r0, r5
004d85c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d85c4  38 c5 4b 00 e0 12 00 00                          .byte 0x38, 0xc5, 0x4b, 0x00, 0xe0, 0x12, 0x00, 0x00

; FUNCTION 0x004ed1b4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerDodge
; alias: _ZN7Structs14ItemPowerDodge4readEP11IStreamBase
; demangled: Structs::ItemPowerDodge::read(IStreamBase*)
; decoder-mode: arm
004ed1b4  03 ff ff ea                                      b #0x4ecdc8

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d162c, declared_size=48, range_size=48, mode=arm
; class-group: Structs::ActivateTriggerPlate
; alias: _ZN7Structs20ActivateTriggerPlate8finalizeEv
; demangled: Structs::ActivateTriggerPlate::finalize()
; decoder-mode: arm
004d162c  10 40 2d e9                                      push {r4, lr}
004d1630  00 40 a0 e1                                      mov r4, r0
004d1634  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1638  00 00 50 e3                                      cmp r0, #0
004d163c  03 00 00 0a                                      beq #0x4d1650
004d1640  7e fb f8 eb                                      bl #0x310440
004d1644  00 30 a0 e3                                      mov r3, #0
004d1648  08 30 84 e5                                      str r3, [r4, #8]
004d164c  0c 30 84 e5                                      str r3, [r4, #0xc]
004d1650  04 00 a0 e1                                      mov r0, r4
004d1654  10 40 bd e8                                      pop {r4, lr}
004d1658  82 d5 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d165c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ActivateTriggerPlate
; alias: _ZN7Structs20ActivateTriggerPlateD1Ev
; demangled: Structs::ActivateTriggerPlate::~ActivateTriggerPlate()
; decoder-mode: arm
004d165c  10 40 2d e9                                      push {r4, lr}
004d1660  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1664  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1668  00 40 a0 e1                                      mov r4, r0
004d166c  03 30 8f e0                                      add r3, pc, r3
004d1670  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1674  02 20 93 e7                                      ldr r2, [r3, r2]
004d1678  00 00 50 e3                                      cmp r0, #0
004d167c  08 20 82 e2                                      add r2, r2, #8
004d1680  00 20 84 e5                                      str r2, [r4]
004d1684  00 00 00 0a                                      beq #0x4d168c
004d1688  6c fb f8 eb                                      bl #0x310440
004d168c  04 00 a0 e1                                      mov r0, r4
004d1690  72 d5 ff eb                                      bl #0x4c6c60
004d1694  04 00 a0 e1                                      mov r0, r4
004d1698  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d169c  24 34 4c 00 98 26 00 00                          .byte 0x24, 0x34, 0x4c, 0x00, 0x98, 0x26, 0x00, 0x00

; FUNCTION 0x004d16a4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ActivateTriggerPlate
; alias: _ZN7Structs20ActivateTriggerPlateD0Ev
; demangled: Structs::ActivateTriggerPlate::~ActivateTriggerPlate()
; decoder-mode: arm
004d16a4  10 40 2d e9                                      push {r4, lr}
004d16a8  00 40 a0 e1                                      mov r4, r0
004d16ac  ea ff ff eb                                      bl #0x4d165c
004d16b0  04 00 a0 e1                                      mov r0, r4
004d16b4  61 fb f8 eb                                      bl #0x310440
004d16b8  04 00 a0 e1                                      mov r0, r4
004d16bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d16c0, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ActivateTriggerPlate
; alias: _ZN7Structs20ActivateTriggerPlateD2Ev
; demangled: Structs::ActivateTriggerPlate::~ActivateTriggerPlate()
; decoder-mode: arm
004d16c0  10 40 2d e9                                      push {r4, lr}
004d16c4  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d16c8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d16cc  00 40 a0 e1                                      mov r4, r0
004d16d0  03 30 8f e0                                      add r3, pc, r3
004d16d4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d16d8  02 20 93 e7                                      ldr r2, [r3, r2]
004d16dc  00 00 50 e3                                      cmp r0, #0
004d16e0  08 20 82 e2                                      add r2, r2, #8
004d16e4  00 20 84 e5                                      str r2, [r4]
004d16e8  00 00 00 0a                                      beq #0x4d16f0
004d16ec  53 fb f8 eb                                      bl #0x310440
004d16f0  04 00 a0 e1                                      mov r0, r4
004d16f4  59 d5 ff eb                                      bl #0x4c6c60
004d16f8  04 00 a0 e1                                      mov r0, r4
004d16fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1700  c0 33 4c 00 98 26 00 00                          .byte 0xc0, 0x33, 0x4c, 0x00, 0x98, 0x26, 0x00, 0x00

; FUNCTION 0x005003b0, declared_size=192, range_size=192, mode=arm
; class-group: Structs::ActivateTriggerPlate
; alias: _ZN7Structs20ActivateTriggerPlate4readEP11IStreamBase
; demangled: Structs::ActivateTriggerPlate::read(IStreamBase*)
; decoder-mode: arm
005003b0  70 40 2d e9                                      push {r4, r5, r6, lr}
005003b4  00 40 a0 e1                                      mov r4, r0
005003b8  08 d0 4d e2                                      sub sp, sp, #8
005003bc  01 60 a0 e1                                      mov r6, r1
005003c0  18 fd ff eb                                      bl #0x4ff828
005003c4  06 00 a0 e1                                      mov r0, r6
005003c8  08 10 84 e2                                      add r1, r4, #8
005003cc  73 7b fb eb                                      bl #0x3df1a0
005003d0  01 30 a0 e3                                      mov r3, #1
005003d4  00 00 53 e3                                      cmp r3, #0
005003d8  04 30 8d e5                                      str r3, [sp, #4]
005003dc  0f 00 00 1a                                      bne #0x500420
005003e0  09 30 84 e2                                      add r3, r4, #9
005003e4  0a 20 84 e2                                      add r2, r4, #0xa
005003e8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005003ec  01 10 53 e5                                      ldrb r1, [r3, #-1]
005003f0  02 00 53 e1                                      cmp r3, r2
005003f4  01 10 20 e0                                      eor r1, r0, r1
005003f8  01 10 43 e5                                      strb r1, [r3, #-1]
005003fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500400  00 10 21 e0                                      eor r1, r1, r0
00500404  01 10 c2 e5                                      strb r1, [r2, #1]
00500408  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050040c  01 20 42 e2                                      sub r2, r2, #1
00500410  00 10 21 e0                                      eor r1, r1, r0
00500414  01 10 43 e5                                      strb r1, [r3, #-1]
00500418  01 30 83 e2                                      add r3, r3, #1
0050041c  f1 ff ff 3a                                      blo #0x5003e8
00500420  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00500424  00 00 50 e3                                      cmp r0, #0
00500428  00 00 00 0a                                      beq #0x500430
0050042c  03 40 f8 eb                                      bl #0x310440
00500430  08 00 94 e5                                      ldr r0, [r4, #8]
00500434  01 10 a0 e3                                      mov r1, #1
00500438  00 50 a0 e3                                      mov r5, #0
0050043c  01 00 80 e0                                      add r0, r0, r1
00500440  49 40 f8 eb                                      bl #0x31056c
00500444  08 20 94 e5                                      ldr r2, [r4, #8]
00500448  00 10 a0 e1                                      mov r1, r0
0050044c  0c 00 84 e5                                      str r0, [r4, #0xc]
00500450  05 30 a0 e1                                      mov r3, r5
00500454  06 00 a0 e1                                      mov r0, r6
00500458  fd 5b f8 eb                                      bl #0x317454
0050045c  08 30 94 e5                                      ldr r3, [r4, #8]
00500460  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00500464  03 50 c2 e7                                      strb r5, [r2, r3]
00500468  08 d0 8d e2                                      add sp, sp, #8
0050046c  70 80 bd e8                                      pop {r4, r5, r6, pc}

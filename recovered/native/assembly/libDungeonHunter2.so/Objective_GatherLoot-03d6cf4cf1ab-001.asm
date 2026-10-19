; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a1d4, declared_size=4, range_size=4, mode=arm
; class-group: Objective_GatherLoot
; alias: _ZNK20Objective_GatherLoot12GetPositionsER13Vector3DFList
; demangled: Objective_GatherLoot::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047a1d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a1e8, declared_size=8, range_size=8, mode=arm
; class-group: Objective_GatherLoot
; alias: _ZThn24_N20Objective_GatherLootD1Ev
; demangled: non-virtual thunk to Objective_GatherLoot::~Objective_GatherLoot()
; decoder-mode: arm
0047a1e8  18 00 40 e2                                      sub r0, r0, #0x18
0047a1ec  ff ff ff ea                                      b #0x47a1f0

; FUNCTION 0x0047a1f0, declared_size=72, range_size=72, mode=arm
; class-group: Objective_GatherLoot
; alias: _ZN20Objective_GatherLootD1Ev
; demangled: Objective_GatherLoot::~Objective_GatherLoot()
; decoder-mode: arm
0047a1f0  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047a1f4  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047a1f8  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047a1fc  03 30 8f e0                                      add r3, pc, r3
0047a200  01 10 93 e7                                      ldr r1, [r3, r1]
0047a204  02 20 93 e7                                      ldr r2, [r3, r2]
0047a208  10 40 2d e9                                      push {r4, lr}
0047a20c  08 10 81 e2                                      add r1, r1, #8
0047a210  08 20 82 e2                                      add r2, r2, #8
0047a214  00 40 a0 e1                                      mov r4, r0
0047a218  00 10 80 e5                                      str r1, [r0]
0047a21c  18 20 80 e5                                      str r2, [r0, #0x18]
0047a220  ef ff ff eb                                      bl #0x47a1e4
0047a224  04 00 a0 e1                                      mov r0, r4
0047a228  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047a22c  94 a8 51 00 90 3a 00 00 40 0b 00 00              .byte 0x94, 0xa8, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047aba4, declared_size=180, range_size=180, mode=arm
; class-group: Objective_GatherLoot
; alias: _ZN20Objective_GatherLoot18InitWithCurrentQtyEv
; demangled: Objective_GatherLoot::InitWithCurrentQty()
; decoder-mode: arm
0047aba4  30 40 2d e9                                      push {r4, r5, lr}
0047aba8  00 40 a0 e1                                      mov r4, r0
0047abac  10 00 90 e5                                      ldr r0, [r0, #0x10]
0047abb0  88 30 9f e5                                      ldr r3, [pc, #0x88]
0047abb4  0c d0 4d e2                                      sub sp, sp, #0xc
0047abb8  00 00 50 e3                                      cmp r0, #0
0047abbc  0c 50 94 e5                                      ldr r5, [r4, #0xc]
0047abc0  03 30 8f e0                                      add r3, pc, r3
0047abc4  07 00 00 0a                                      beq #0x47abe8
0047abc8  df 0f 80 e2                                      add r0, r0, #0x37c
0047abcc  24 10 95 e5                                      ldr r1, [r5, #0x24]
0047abd0  61 09 fe eb                                      bl #0x3fd15c
0047abd4  00 00 50 e3                                      cmp r0, #0
0047abd8  f0 35 d0 11                                      ldrshne r3, [r0, #0x50]
0047abdc  20 30 84 15                                      strne r3, [r4, #0x20]
0047abe0  0c d0 8d e2                                      add sp, sp, #0xc
0047abe4  30 80 bd e8                                      pop {r4, r5, pc}
0047abe8  54 20 9f e5                                      ldr r2, [pc, #0x54]
0047abec  02 20 93 e7                                      ldr r2, [r3, r2]
0047abf0  00 20 92 e5                                      ldr r2, [r2]
0047abf4  02 00 52 e3                                      cmp r2, #2
0047abf8  00 00 80 05                                      streq r0, [r0]
0047abfc  f1 ff ff 0a                                      beq #0x47abc8
0047ac00  01 00 52 e3                                      cmp r2, #1
0047ac04  ef ff ff 1a                                      bne #0x47abc8
0047ac08  38 00 9f e5                                      ldr r0, [pc, #0x38]
0047ac0c  38 10 9f e5                                      ldr r1, [pc, #0x38]
0047ac10  38 20 9f e5                                      ldr r2, [pc, #0x38]
0047ac14  00 00 93 e7                                      ldr r0, [r3, r0]
0047ac18  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047ac1c  22 c4 00 e3                                      movw ip, #0x422
0047ac20  01 10 8f e0                                      add r1, pc, r1
0047ac24  a8 00 80 e2                                      add r0, r0, #0xa8
0047ac28  02 20 8f e0                                      add r2, pc, r2
0047ac2c  03 30 8f e0                                      add r3, pc, r3
0047ac30  00 c0 8d e5                                      str ip, [sp]
0047ac34  f2 4c fa eb                                      bl #0x30e004
0047ac38  10 00 94 e5                                      ldr r0, [r4, #0x10]
0047ac3c  e1 ff ff ea                                      b #0x47abc8
; mapping-symbol data/literal pool
0047ac40  d0 9e 51 00 c0 39 00 00 c0 19 00 00 b8 37 44 00  .byte 0xd0, 0x9e, 0x51, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xb8, 0x37, 0x44, 0x00
0047ac50  b0 2f 45 00 bc 2f 45 00                          .byte 0xb0, 0x2f, 0x45, 0x00, 0xbc, 0x2f, 0x45, 0x00

; FUNCTION 0x0047af38, declared_size=292, range_size=292, mode=arm
; class-group: Objective_GatherLoot
; alias: _ZNK20Objective_GatherLoot37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: Objective_GatherLoot::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047af38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047af3c  00 60 a0 e1                                      mov r6, r0
0047af40  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0047af44  e0 00 9f e5                                      ldr r0, [pc, #0xe0]
0047af48  01 40 a0 e1                                      mov r4, r1
0047af4c  04 30 a0 e1                                      mov r3, r4
0047af50  00 00 8f e0                                      add r0, pc, r0
0047af54  01 10 a0 e3                                      mov r1, #1
0047af58  18 20 a0 e3                                      mov r2, #0x18
0047af5c  8d 4d fa eb                                      bl #0x30e598
0047af60  24 30 95 e5                                      ldr r3, [r5, #0x24]
0047af64  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
0047af68  00 00 53 e3                                      cmp r3, #0
0047af6c  07 70 8f e0                                      add r7, pc, r7
0047af70  04 00 00 ba                                      blt #0x47af88
0047af74  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0047af78  02 20 97 e7                                      ldr r2, [r7, r2]
0047af7c  00 20 92 e5                                      ldr r2, [r2]
0047af80  02 00 53 e1                                      cmp r3, r2
0047af84  23 00 00 3a                                      blo #0x47b018
0047af88  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0047af8c  02 20 8f e0                                      add r2, pc, r2
0047af90  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0047af94  04 00 a0 e1                                      mov r0, r4
0047af98  01 10 8f e0                                      add r1, pc, r1
0047af9c  18 4c fa eb                                      bl #0x30e004
0047afa0  98 10 9f e5                                      ldr r1, [pc, #0x98]
0047afa4  04 00 a0 e1                                      mov r0, r4
0047afa8  28 20 95 e5                                      ldr r2, [r5, #0x28]
0047afac  01 10 8f e0                                      add r1, pc, r1
0047afb0  13 4c fa eb                                      bl #0x30e004
0047afb4  20 30 95 e5                                      ldr r3, [r5, #0x20]
0047afb8  00 00 53 e3                                      cmp r3, #0
0047afbc  09 00 00 ba                                      blt #0x47afe8
0047afc0  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0047afc4  02 20 97 e7                                      ldr r2, [r7, r2]
0047afc8  00 20 92 e5                                      ldr r2, [r2]
0047afcc  02 00 53 e1                                      cmp r3, r2
0047afd0  04 00 00 2a                                      bhs #0x47afe8
0047afd4  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0047afd8  02 20 97 e7                                      ldr r2, [r7, r2]
0047afdc  00 20 92 e5                                      ldr r2, [r2]
0047afe0  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047afe4  01 00 00 ea                                      b #0x47aff0
0047afe8  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0047afec  02 20 8f e0                                      add r2, pc, r2
0047aff0  58 10 9f e5                                      ldr r1, [pc, #0x58]
0047aff4  04 00 a0 e1                                      mov r0, r4
0047aff8  01 10 8f e0                                      add r1, pc, r1
0047affc  00 4c fa eb                                      bl #0x30e004
0047b000  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0047b004  20 20 96 e5                                      ldr r2, [r6, #0x20]
0047b008  04 00 a0 e1                                      mov r0, r4
0047b00c  01 10 8f e0                                      add r1, pc, r1
0047b010  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0047b014  fa 4b fa ea                                      b #0x30e004
0047b018  38 20 9f e5                                      ldr r2, [pc, #0x38]
0047b01c  02 20 97 e7                                      ldr r2, [r7, r2]
0047b020  00 20 92 e5                                      ldr r2, [r2]
0047b024  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047b028  d8 ff ff ea                                      b #0x47af90
; mapping-symbol data/literal pool
0047b02c  e0 2c 45 00 24 9b 51 00 60 0d 00 00 84 48 44 00  .byte 0xe0, 0x2c, 0x45, 0x00, 0x24, 0x9b, 0x51, 0x00, 0x60, 0x0d, 0x00, 0x00, 0x84, 0x48, 0x44, 0x00
0047b03c  b8 2c 45 00 b4 2c 45 00 c0 18 00 00 5c 3b 00 00  .byte 0xb8, 0x2c, 0x45, 0x00, 0xb4, 0x2c, 0x45, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00
0047b04c  24 48 44 00 78 2c 45 00 7c 2c 45 00 54 1c 00 00  .byte 0x24, 0x48, 0x44, 0x00, 0x78, 0x2c, 0x45, 0x00, 0x7c, 0x2c, 0x45, 0x00, 0x54, 0x1c, 0x00, 0x00

; FUNCTION 0x0047ba5c, declared_size=136, range_size=136, mode=arm
; class-group: Objective_GatherLoot
; alias: _ZN20Objective_GatherLoot11handleEventEPK6IEventPK12EventManager
; demangled: Objective_GatherLoot::handleEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047ba5c  10 40 2d e9                                      push {r4, lr}
0047ba60  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0047ba64  18 20 91 e5                                      ldr r2, [r1, #0x18]
0047ba68  08 d0 4d e2                                      sub sp, sp, #8
0047ba6c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0047ba70  00 40 a0 e1                                      mov r4, r0
0047ba74  02 00 53 e1                                      cmp r3, r2
0047ba78  02 00 00 0a                                      beq #0x47ba88
0047ba7c  00 00 a0 e3                                      mov r0, #0
0047ba80  08 d0 8d e2                                      add sp, sp, #8
0047ba84  10 80 bd e8                                      pop {r4, pc}
0047ba88  10 20 90 e5                                      ldr r2, [r0, #0x10]
0047ba8c  08 30 91 e5                                      ldr r3, [r1, #8]
0047ba90  03 00 52 e1                                      cmp r2, r3
0047ba94  f8 ff ff 1a                                      bne #0x47ba7c
0047ba98  04 10 8d e5                                      str r1, [sp, #4]
0047ba9c  40 fc ff eb                                      bl #0x47aba4
0047baa0  04 10 9d e5                                      ldr r1, [sp, #4]
0047baa4  11 30 d1 e5                                      ldrb r3, [r1, #0x11]
0047baa8  00 00 53 e3                                      cmp r3, #0
0047baac  01 30 a0 03                                      moveq r3, #1
0047bab0  10 30 c1 05                                      strbeq r3, [r1, #0x10]
0047bab4  20 30 94 05                                      ldreq r3, [r4, #0x20]
0047bab8  14 30 91 15                                      ldrne r3, [r1, #0x14]
0047babc  14 30 81 05                                      streq r3, [r1, #0x14]
0047bac0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0047bac4  20 30 84 15                                      strne r3, [r4, #0x20]
0047bac8  20 30 94 05                                      ldreq r3, [r4, #0x20]
0047bacc  28 20 92 e5                                      ldr r2, [r2, #0x28]
0047bad0  03 00 52 e1                                      cmp r2, r3
0047bad4  e8 ff ff ca                                      bgt #0x47ba7c
0047bad8  04 00 a0 e1                                      mov r0, r4
0047badc  cb ff ff eb                                      bl #0x47ba10
0047bae0  e5 ff ff ea                                      b #0x47ba7c

; FUNCTION 0x0047bae4, declared_size=496, range_size=496, mode=arm
; class-group: Objective_GatherLoot
; alias: _ZN20Objective_GatherLoot7CompileEv
; demangled: Objective_GatherLoot::Compile()
; decoder-mode: arm
0047bae4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0047bae8  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0047baec  ac 41 9f e5                                      ldr r4, [pc, #0x1ac]
0047baf0  0c d0 4d e2                                      sub sp, sp, #0xc
0047baf4  24 30 95 e5                                      ldr r3, [r5, #0x24]
0047baf8  04 40 8f e0                                      add r4, pc, r4
0047bafc  00 60 a0 e1                                      mov r6, r0
0047bb00  01 00 73 e3                                      cmn r3, #1
0047bb04  11 00 00 0a                                      beq #0x47bb50
0047bb08  00 00 53 e3                                      cmp r3, #0
0047bb0c  61 00 00 da                                      ble #0x47bc98
0047bb10  28 30 95 e5                                      ldr r3, [r5, #0x28]
0047bb14  00 00 53 e3                                      cmp r3, #0
0047bb18  0a 00 00 da                                      ble #0x47bb48
0047bb1c  80 31 9f e5                                      ldr r3, [pc, #0x180]
0047bb20  03 00 94 e7                                      ldr r0, [r4, r3]
0047bb24  9a 8e fa eb                                      bl #0x31f594
0047bb28  00 70 50 e2                                      subs r7, r0, #0
0047bb2c  24 00 00 0a                                      beq #0x47bbc4
0047bb30  20 30 95 e5                                      ldr r3, [r5, #0x20]
0047bb34  01 00 73 e3                                      cmn r3, #1
0047bb38  14 00 00 0a                                      beq #0x47bb90
0047bb3c  3c 20 97 e5                                      ldr r2, [r7, #0x3c]
0047bb40  02 00 53 e1                                      cmp r3, r2
0047bb44  11 00 00 0a                                      beq #0x47bb90
0047bb48  0c d0 8d e2                                      add sp, sp, #0xc
0047bb4c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0047bb50  50 21 9f e5                                      ldr r2, [pc, #0x150]
0047bb54  02 10 94 e7                                      ldr r1, [r4, r2]
0047bb58  00 10 91 e5                                      ldr r1, [r1]
0047bb5c  02 00 51 e3                                      cmp r1, #2
0047bb60  2c 00 00 0a                                      beq #0x47bc18
0047bb64  01 00 51 e3                                      cmp r1, #1
0047bb68  2e 00 00 0a                                      beq #0x47bc28
0047bb6c  02 20 94 e7                                      ldr r2, [r4, r2]
0047bb70  00 20 92 e5                                      ldr r2, [r2]
0047bb74  02 00 52 e3                                      cmp r2, #2
0047bb78  26 00 00 0a                                      beq #0x47bc18
0047bb7c  01 00 52 e3                                      cmp r2, #1
0047bb80  36 00 00 0a                                      beq #0x47bc60
0047bb84  01 00 73 e3                                      cmn r3, #1
0047bb88  ee ff ff 0a                                      beq #0x47bb48
0047bb8c  df ff ff ea                                      b #0x47bb10
0047bb90  06 00 a0 e1                                      mov r0, r6
0047bb94  02 fc ff eb                                      bl #0x47aba4
0047bb98  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0047bb9c  01 20 a0 e3                                      mov r2, #1
0047bba0  08 20 c6 e5                                      strb r2, [r6, #8]
0047bba4  28 30 93 e5                                      ldr r3, [r3, #0x28]
0047bba8  20 20 96 e5                                      ldr r2, [r6, #0x20]
0047bbac  03 00 52 e1                                      cmp r2, r3
0047bbb0  e4 ff ff ba                                      blt #0x47bb48
0047bbb4  06 00 a0 e1                                      mov r0, r6
0047bbb8  0c d0 8d e2                                      add sp, sp, #0xc
0047bbbc  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
0047bbc0  92 ff ff ea                                      b #0x47ba10
0047bbc4  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
0047bbc8  03 30 94 e7                                      ldr r3, [r4, r3]
0047bbcc  00 30 93 e5                                      ldr r3, [r3]
0047bbd0  02 00 53 e3                                      cmp r3, #2
0047bbd4  00 70 87 05                                      streq r7, [r7]
0047bbd8  d4 ff ff 0a                                      beq #0x47bb30
0047bbdc  01 00 53 e3                                      cmp r3, #1
0047bbe0  d2 ff ff 1a                                      bne #0x47bb30
0047bbe4  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
0047bbe8  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0047bbec  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
0047bbf0  00 00 94 e7                                      ldr r0, [r4, r0]
0047bbf4  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
0047bbf8  e3 c3 00 e3                                      movw ip, #0x3e3
0047bbfc  01 10 8f e0                                      add r1, pc, r1
0047bc00  02 20 8f e0                                      add r2, pc, r2
0047bc04  03 30 8f e0                                      add r3, pc, r3
0047bc08  a8 00 80 e2                                      add r0, r0, #0xa8
0047bc0c  00 c0 8d e5                                      str ip, [sp]
0047bc10  fb 48 fa eb                                      bl #0x30e004
0047bc14  c5 ff ff ea                                      b #0x47bb30
0047bc18  00 30 a0 e3                                      mov r3, #0
0047bc1c  00 30 83 e5                                      str r3, [r3]
0047bc20  24 30 95 e5                                      ldr r3, [r5, #0x24]
0047bc24  d6 ff ff ea                                      b #0x47bb84
0047bc28  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
0047bc2c  88 10 9f e5                                      ldr r1, [pc, #0x88]
0047bc30  88 20 9f e5                                      ldr r2, [pc, #0x88]
0047bc34  00 00 94 e7                                      ldr r0, [r4, r0]
0047bc38  84 30 9f e5                                      ldr r3, [pc, #0x84]
0047bc3c  da c3 00 e3                                      movw ip, #0x3da
0047bc40  01 10 8f e0                                      add r1, pc, r1
0047bc44  03 30 8f e0                                      add r3, pc, r3
0047bc48  a8 00 80 e2                                      add r0, r0, #0xa8
0047bc4c  02 20 8f e0                                      add r2, pc, r2
0047bc50  00 c0 8d e5                                      str ip, [sp]
0047bc54  ea 48 fa eb                                      bl #0x30e004
0047bc58  24 30 95 e5                                      ldr r3, [r5, #0x24]
0047bc5c  a9 ff ff ea                                      b #0x47bb08
0047bc60  44 00 9f e5                                      ldr r0, [pc, #0x44]
0047bc64  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0047bc68  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0047bc6c  00 00 94 e7                                      ldr r0, [r4, r0]
0047bc70  58 30 9f e5                                      ldr r3, [pc, #0x58]
0047bc74  db c3 00 e3                                      movw ip, #0x3db
0047bc78  01 10 8f e0                                      add r1, pc, r1
0047bc7c  03 30 8f e0                                      add r3, pc, r3
0047bc80  a8 00 80 e2                                      add r0, r0, #0xa8
0047bc84  02 20 8f e0                                      add r2, pc, r2
0047bc88  00 c0 8d e5                                      str ip, [sp]
0047bc8c  dc 48 fa eb                                      bl #0x30e004
0047bc90  24 30 95 e5                                      ldr r3, [r5, #0x24]
0047bc94  ba ff ff ea                                      b #0x47bb84
0047bc98  08 20 9f e5                                      ldr r2, [pc, #8]
0047bc9c  b2 ff ff ea                                      b #0x47bb6c
; mapping-symbol data/literal pool
0047bca0  98 8f 51 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0x98, 0x8f, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0047bcb0  dc 27 44 00 28 22 45 00 e4 1f 45 00 98 27 44 00  .byte 0xdc, 0x27, 0x44, 0x00, 0x28, 0x22, 0x45, 0x00, 0xe4, 0x1f, 0x45, 0x00, 0x98, 0x27, 0x44, 0x00
0047bcc0  ac 21 45 00 a4 1f 45 00 60 27 44 00 8c 21 45 00  .byte 0xac, 0x21, 0x45, 0x00, 0xa4, 0x1f, 0x45, 0x00, 0x60, 0x27, 0x44, 0x00, 0x8c, 0x21, 0x45, 0x00
0047bcd0  6c 1f 45 00                                      .byte 0x6c, 0x1f, 0x45, 0x00

; FUNCTION 0x0047ce14, declared_size=8, range_size=8, mode=arm
; class-group: Objective_GatherLoot
; alias: _ZThn24_N20Objective_GatherLootD0Ev
; demangled: non-virtual thunk to Objective_GatherLoot::~Objective_GatherLoot()
; decoder-mode: arm
0047ce14  18 00 40 e2                                      sub r0, r0, #0x18
0047ce18  ff ff ff ea                                      b #0x47ce1c

; FUNCTION 0x0047ce1c, declared_size=80, range_size=80, mode=arm
; class-group: Objective_GatherLoot
; alias: _ZN20Objective_GatherLootD0Ev
; demangled: Objective_GatherLoot::~Objective_GatherLoot()
; decoder-mode: arm
0047ce1c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047ce20  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047ce24  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047ce28  03 30 8f e0                                      add r3, pc, r3
0047ce2c  01 10 93 e7                                      ldr r1, [r3, r1]
0047ce30  02 20 93 e7                                      ldr r2, [r3, r2]
0047ce34  10 40 2d e9                                      push {r4, lr}
0047ce38  08 10 81 e2                                      add r1, r1, #8
0047ce3c  08 20 82 e2                                      add r2, r2, #8
0047ce40  00 40 a0 e1                                      mov r4, r0
0047ce44  00 10 80 e5                                      str r1, [r0]
0047ce48  18 20 80 e5                                      str r2, [r0, #0x18]
0047ce4c  e4 f4 ff eb                                      bl #0x47a1e4
0047ce50  04 00 a0 e1                                      mov r0, r4
0047ce54  79 4d fa eb                                      bl #0x310440
0047ce58  04 00 a0 e1                                      mov r0, r4
0047ce5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047ce60  68 7c 51 00 90 3a 00 00 40 0b 00 00              .byte 0x68, 0x7c, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047d6fc, declared_size=52, range_size=52, mode=arm
; class-group: Objective_GatherLoot
; alias: _ZN20Objective_GatherLoot10UnregisterEv
; demangled: Objective_GatherLoot::Unregister()
; decoder-mode: arm
0047d6fc  10 40 2d e9                                      push {r4, lr}
0047d700  00 40 a0 e1                                      mov r4, r0
0047d704  ac f5 ff eb                                      bl #0x47adbc
0047d708  08 30 d4 e5                                      ldrb r3, [r4, #8]
0047d70c  00 00 53 e3                                      cmp r3, #0
0047d710  00 00 00 1a                                      bne #0x47d718
0047d714  10 80 bd e8                                      pop {r4, pc}
0047d718  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0047d71c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0047d720  24 10 93 e5                                      ldr r1, [r3, #0x24]
0047d724  df 0f 80 e2                                      add r0, r0, #0x37c
0047d728  10 40 bd e8                                      pop {r4, lr}
0047d72c  b2 ff ff ea                                      b #0x47d5fc

; FUNCTION 0x0047eaec, declared_size=164, range_size=164, mode=arm
; class-group: Objective_GatherLoot
; alias: _ZN20Objective_GatherLoot8RegisterEv
; demangled: Objective_GatherLoot::Register()
; decoder-mode: arm
0047eaec  70 40 2d e9                                      push {r4, r5, r6, lr}
0047eaf0  00 40 a0 e1                                      mov r4, r0
0047eaf4  08 d0 4d e2                                      sub sp, sp, #8
0047eaf8  dc f0 ff eb                                      bl #0x47ae70
0047eafc  08 30 d4 e5                                      ldrb r3, [r4, #8]
0047eb00  00 00 53 e3                                      cmp r3, #0
0047eb04  12 00 00 0a                                      beq #0x47eb54
0047eb08  10 60 94 e5                                      ldr r6, [r4, #0x10]
0047eb0c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0047eb10  06 40 a0 e1                                      mov r4, r6
0047eb14  ac 33 b4 e5                                      ldr r3, [r4, #0x3ac]!
0047eb18  24 50 92 e5                                      ldr r5, [r2, #0x24]
0047eb1c  04 00 53 e1                                      cmp r3, r4
0047eb20  06 00 00 0a                                      beq #0x47eb40
0047eb24  08 20 93 e5                                      ldr r2, [r3, #8]
0047eb28  02 00 55 e1                                      cmp r5, r2
0047eb2c  03 00 00 0a                                      beq #0x47eb40
0047eb30  00 30 93 e5                                      ldr r3, [r3]
0047eb34  03 00 54 e1                                      cmp r4, r3
0047eb38  f9 ff ff 1a                                      bne #0x47eb24
0047eb3c  04 30 a0 e1                                      mov r3, r4
0047eb40  03 00 54 e1                                      cmp r4, r3
0047eb44  04 00 00 0a                                      beq #0x47eb5c
0047eb48  0c 20 d3 e5                                      ldrb r2, [r3, #0xc]
0047eb4c  01 20 82 e2                                      add r2, r2, #1
0047eb50  0c 20 c3 e5                                      strb r2, [r3, #0xc]
0047eb54  08 d0 8d e2                                      add sp, sp, #8
0047eb58  70 80 bd e8                                      pop {r4, r5, r6, pc}
0047eb5c  10 30 a0 e3                                      mov r3, #0x10
0047eb60  08 00 8d e2                                      add r0, sp, #8
0047eb64  04 30 20 e5                                      str r3, [r0, #-4]!
0047eb68  d4 28 0a eb                                      bl #0x708ec0
0047eb6c  01 30 a0 e3                                      mov r3, #1
0047eb70  0c 30 c0 e5                                      strb r3, [r0, #0xc]
0047eb74  08 50 80 e5                                      str r5, [r0, #8]
0047eb78  b0 33 96 e5                                      ldr r3, [r6, #0x3b0]
0047eb7c  00 40 80 e5                                      str r4, [r0]
0047eb80  04 30 80 e5                                      str r3, [r0, #4]
0047eb84  00 00 83 e5                                      str r0, [r3]
0047eb88  b0 03 86 e5                                      str r0, [r6, #0x3b0]
0047eb8c  f0 ff ff ea                                      b #0x47eb54

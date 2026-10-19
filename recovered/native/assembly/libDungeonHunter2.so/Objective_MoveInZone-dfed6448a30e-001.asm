; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a2d8, declared_size=8, range_size=8, mode=arm
; class-group: Objective_MoveInZone
; alias: _ZThn24_N20Objective_MoveInZoneD1Ev
; demangled: non-virtual thunk to Objective_MoveInZone::~Objective_MoveInZone()
; decoder-mode: arm
0047a2d8  18 00 40 e2                                      sub r0, r0, #0x18
0047a2dc  ff ff ff ea                                      b #0x47a2e0

; FUNCTION 0x0047a2e0, declared_size=72, range_size=72, mode=arm
; class-group: Objective_MoveInZone
; alias: _ZN20Objective_MoveInZoneD1Ev
; demangled: Objective_MoveInZone::~Objective_MoveInZone()
; decoder-mode: arm
0047a2e0  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047a2e4  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047a2e8  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047a2ec  03 30 8f e0                                      add r3, pc, r3
0047a2f0  01 10 93 e7                                      ldr r1, [r3, r1]
0047a2f4  02 20 93 e7                                      ldr r2, [r3, r2]
0047a2f8  10 40 2d e9                                      push {r4, lr}
0047a2fc  08 10 81 e2                                      add r1, r1, #8
0047a300  08 20 82 e2                                      add r2, r2, #8
0047a304  00 40 a0 e1                                      mov r4, r0
0047a308  00 10 80 e5                                      str r1, [r0]
0047a30c  18 20 80 e5                                      str r2, [r0, #0x18]
0047a310  b3 ff ff eb                                      bl #0x47a1e4
0047a314  04 00 a0 e1                                      mov r0, r4
0047a318  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047a31c  a4 a7 51 00 90 3a 00 00 40 0b 00 00              .byte 0xa4, 0xa7, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047b3dc, declared_size=248, range_size=248, mode=arm
; class-group: Objective_MoveInZone
; alias: _ZNK20Objective_MoveInZone37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: Objective_MoveInZone::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047b3dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047b3e0  00 70 a0 e1                                      mov r7, r0
0047b3e4  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
0047b3e8  01 50 a0 e1                                      mov r5, r1
0047b3ec  01 30 a0 e1                                      mov r3, r1
0047b3f0  15 20 a0 e3                                      mov r2, #0x15
0047b3f4  01 10 a0 e3                                      mov r1, #1
0047b3f8  00 00 8f e0                                      add r0, pc, r0
0047b3fc  ac 40 9f e5                                      ldr r4, [pc, #0xac]
0047b400  0c 60 97 e5                                      ldr r6, [r7, #0xc]
0047b404  63 4c fa eb                                      bl #0x30e598
0047b408  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0047b40c  04 40 8f e0                                      add r4, pc, r4
0047b410  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
0047b414  03 30 94 e7                                      ldr r3, [r4, r3]
0047b418  04 20 96 e5                                      ldr r2, [r6, #4]
0047b41c  01 10 8f e0                                      add r1, pc, r1
0047b420  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0047b424  b7 25 01 eb                                      bl #0x4c4b08
0047b428  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
0047b42c  00 20 a0 e1                                      mov r2, r0
0047b430  05 00 a0 e1                                      mov r0, r5
0047b434  01 10 8f e0                                      add r1, pc, r1
0047b438  f1 4a fa eb                                      bl #0x30e004
0047b43c  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0047b440  05 00 a0 e1                                      mov r0, r5
0047b444  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
0047b448  01 10 8f e0                                      add r1, pc, r1
0047b44c  ec 4a fa eb                                      bl #0x30e004
0047b450  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047b454  00 00 53 e3                                      cmp r3, #0
0047b458  09 00 00 ba                                      blt #0x47b484
0047b45c  60 20 9f e5                                      ldr r2, [pc, #0x60]
0047b460  02 20 94 e7                                      ldr r2, [r4, r2]
0047b464  00 20 92 e5                                      ldr r2, [r2]
0047b468  02 00 53 e1                                      cmp r3, r2
0047b46c  04 00 00 2a                                      bhs #0x47b484
0047b470  50 20 9f e5                                      ldr r2, [pc, #0x50]
0047b474  02 20 94 e7                                      ldr r2, [r4, r2]
0047b478  00 20 92 e5                                      ldr r2, [r2]
0047b47c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047b480  01 00 00 ea                                      b #0x47b48c
0047b484  40 20 9f e5                                      ldr r2, [pc, #0x40]
0047b488  02 20 8f e0                                      add r2, pc, r2
0047b48c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047b490  05 00 a0 e1                                      mov r0, r5
0047b494  01 10 8f e0                                      add r1, pc, r1
0047b498  d9 4a fa eb                                      bl #0x30e004
0047b49c  07 00 a0 e1                                      mov r0, r7
0047b4a0  05 10 a0 e1                                      mov r1, r5
0047b4a4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0047b4a8  81 fd ff ea                                      b #0x47aab4
; mapping-symbol data/literal pool
0047b4ac  78 29 45 00 84 96 51 00 f4 37 00 00 4c 75 44 00  .byte 0x78, 0x29, 0x45, 0x00, 0x84, 0x96, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x4c, 0x75, 0x44, 0x00
0047b4bc  54 29 45 00 58 29 45 00 c0 18 00 00 5c 3b 00 00  .byte 0x54, 0x29, 0x45, 0x00, 0x58, 0x29, 0x45, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00
0047b4cc  88 43 44 00 24 29 45 00                          .byte 0x88, 0x43, 0x44, 0x00, 0x24, 0x29, 0x45, 0x00

; FUNCTION 0x0047b850, declared_size=360, range_size=360, mode=arm
; class-group: Objective_MoveInZone
; alias: _ZNK20Objective_MoveInZone12GetPositionsER13Vector3DFList
; demangled: Objective_MoveInZone::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047b850  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0047b854  20 40 90 e5                                      ldr r4, [r0, #0x20]
0047b858  50 61 9f e5                                      ldr r6, [pc, #0x150]
0047b85c  2c d0 4d e2                                      sub sp, sp, #0x2c
0047b860  00 00 54 e3                                      cmp r4, #0
0047b864  06 60 8f e0                                      add r6, pc, r6
0047b868  01 70 a0 e1                                      mov r7, r1
0047b86c  0c 80 90 e5                                      ldr r8, [r0, #0xc]
0047b870  0d 00 00 0a                                      beq #0x47b8ac
0047b874  01 00 a0 e1                                      mov r0, r1
0047b878  01 10 a0 e3                                      mov r1, #1
0047b87c  4c fc ff eb                                      bl #0x47a9b4
0047b880  60 c1 94 e5                                      ldr ip, [r4, #0x160]
0047b884  64 21 94 e5                                      ldr r2, [r4, #0x164]
0047b888  68 31 94 e5                                      ldr r3, [r4, #0x168]
0047b88c  07 00 a0 e1                                      mov r0, r7
0047b890  1c 10 8d e2                                      add r1, sp, #0x1c
0047b894  1c c0 8d e5                                      str ip, [sp, #0x1c]
0047b898  20 20 8d e5                                      str r2, [sp, #0x20]
0047b89c  24 30 8d e5                                      str r3, [sp, #0x24]
0047b8a0  34 fa ff eb                                      bl #0x47a178
0047b8a4  2c d0 8d e2                                      add sp, sp, #0x2c
0047b8a8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0047b8ac  01 10 a0 e3                                      mov r1, #1
0047b8b0  07 00 a0 e1                                      mov r0, r7
0047b8b4  3e fc ff eb                                      bl #0x47a9b4
0047b8b8  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0047b8bc  10 50 8d e2                                      add r5, sp, #0x10
0047b8c0  03 40 96 e7                                      ldr r4, [r6, r3]
0047b8c4  38 a0 94 e5                                      ldr sl, [r4, #0x38]
0047b8c8  04 00 a0 e1                                      mov r0, r4
0047b8cc  30 8f fa eb                                      bl #0x31f594
0047b8d0  04 00 a0 e1                                      mov r0, r4
0047b8d4  2e 8f fa eb                                      bl #0x31f594
0047b8d8  14 40 9a e5                                      ldr r4, [sl, #0x14]
0047b8dc  0c 60 8a e2                                      add r6, sl, #0xc
0047b8e0  04 00 56 e1                                      cmp r6, r4
0047b8e4  ee ff ff 0a                                      beq #0x47b8a4
0047b8e8  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0047b8ec  00 00 51 e3                                      cmp r1, #0
0047b8f0  09 00 00 0a                                      beq #0x47b91c
0047b8f4  05 00 a0 e1                                      mov r0, r5
0047b8f8  0b 09 fb eb                                      bl #0x33dd2c
0047b8fc  05 00 a0 e1                                      mov r0, r5
0047b900  00 10 a0 e3                                      mov r1, #0
0047b904  2d 11 fb eb                                      bl #0x33fdc0
0047b908  00 00 50 e3                                      cmp r0, #0
0047b90c  02 00 00 0a                                      beq #0x47b91c
0047b910  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0047b914  0e 00 53 e3                                      cmp r3, #0xe
0047b918  09 00 00 0a                                      beq #0x47b944
0047b91c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0047b920  00 00 52 e3                                      cmp r2, #0
0047b924  01 00 00 1a                                      bne #0x47b930
0047b928  13 00 00 ea                                      b #0x47b97c
0047b92c  03 20 a0 e1                                      mov r2, r3
0047b930  08 30 92 e5                                      ldr r3, [r2, #8]
0047b934  00 00 53 e3                                      cmp r3, #0
0047b938  fb ff ff 1a                                      bne #0x47b92c
0047b93c  02 40 a0 e1                                      mov r4, r2
0047b940  e6 ff ff ea                                      b #0x47b8e0
0047b944  20 20 98 e5                                      ldr r2, [r8, #0x20]
0047b948  d4 37 90 e5                                      ldr r3, [r0, #0x7d4]
0047b94c  03 00 52 e1                                      cmp r2, r3
0047b950  f1 ff ff 1a                                      bne #0x47b91c
0047b954  60 c1 90 e5                                      ldr ip, [r0, #0x160]
0047b958  64 21 90 e5                                      ldr r2, [r0, #0x164]
0047b95c  68 31 90 e5                                      ldr r3, [r0, #0x168]
0047b960  04 10 8d e2                                      add r1, sp, #4
0047b964  07 00 a0 e1                                      mov r0, r7
0047b968  04 c0 8d e5                                      str ip, [sp, #4]
0047b96c  08 20 8d e5                                      str r2, [sp, #8]
0047b970  0c 30 8d e5                                      str r3, [sp, #0xc]
0047b974  ff f9 ff eb                                      bl #0x47a178
0047b978  c9 ff ff ea                                      b #0x47b8a4
0047b97c  04 30 94 e5                                      ldr r3, [r4, #4]
0047b980  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0047b984  01 00 54 e1                                      cmp r4, r1
0047b988  05 00 00 1a                                      bne #0x47b9a4
0047b98c  03 40 a0 e1                                      mov r4, r3
0047b990  04 30 93 e5                                      ldr r3, [r3, #4]
0047b994  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0047b998  04 00 52 e1                                      cmp r2, r4
0047b99c  fa ff ff 0a                                      beq #0x47b98c
0047b9a0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0047b9a4  03 00 52 e1                                      cmp r2, r3
0047b9a8  03 40 a0 11                                      movne r4, r3
0047b9ac  cb ff ff ea                                      b #0x47b8e0
; mapping-symbol data/literal pool
0047b9b0  2c 92 51 00 f4 37 00 00                          .byte 0x2c, 0x92, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047bcd4, declared_size=172, range_size=172, mode=arm
; class-group: Objective_MoveInZone
; alias: _ZN20Objective_MoveInZone11handleEventEPK6IEventPK12EventManager
; demangled: Objective_MoveInZone::handleEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047bcd4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047bcd8  18 20 91 e5                                      ldr r2, [r1, #0x18]
0047bcdc  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047bce0  00 40 a0 e1                                      mov r4, r0
0047bce4  01 50 a0 e1                                      mov r5, r1
0047bce8  03 00 52 e1                                      cmp r2, r3
0047bcec  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0047bcf0  08 60 91 e5                                      ldr r6, [r1, #8]
0047bcf4  01 00 00 0a                                      beq #0x47bd00
0047bcf8  00 00 a0 e3                                      mov r0, #0
0047bcfc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0047bd00  00 00 56 e3                                      cmp r6, #0
0047bd04  19 00 00 0a                                      beq #0x47bd70
0047bd08  24 80 97 e5                                      ldr r8, [r7, #0x24]
0047bd0c  01 00 78 e3                                      cmn r8, #1
0047bd10  0e 00 00 0a                                      beq #0x47bd50
0047bd14  06 00 a0 e1                                      mov r0, r6
0047bd18  06 e0 fc eb                                      bl #0x3b3d38
0047bd1c  08 00 50 e1                                      cmp r0, r8
0047bd20  f4 ff ff 1a                                      bne #0x47bcf8
0047bd24  04 00 a0 e1                                      mov r0, r4
0047bd28  38 ff ff eb                                      bl #0x47ba10
0047bd2c  00 30 94 e5                                      ldr r3, [r4]
0047bd30  04 00 a0 e1                                      mov r0, r4
0047bd34  0f e0 a0 e1                                      mov lr, pc
0047bd38  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047bd3c  11 30 d5 e5                                      ldrb r3, [r5, #0x11]
0047bd40  00 00 53 e3                                      cmp r3, #0
0047bd44  01 30 a0 03                                      moveq r3, #1
0047bd48  10 30 c5 05                                      strbeq r3, [r5, #0x10]
0047bd4c  e9 ff ff ea                                      b #0x47bcf8
0047bd50  00 30 96 e5                                      ldr r3, [r6]
0047bd54  06 00 a0 e1                                      mov r0, r6
0047bd58  0f e0 a0 e1                                      mov lr, pc
0047bd5c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0047bd60  00 00 50 e3                                      cmp r0, #0
0047bd64  ee ff ff 1a                                      bne #0x47bd24
0047bd68  24 80 97 e5                                      ldr r8, [r7, #0x24]
0047bd6c  e8 ff ff ea                                      b #0x47bd14
0047bd70  11 30 d1 e5                                      ldrb r3, [r1, #0x11]
0047bd74  00 00 53 e3                                      cmp r3, #0
0047bd78  e9 ff ff 1a                                      bne #0x47bd24
0047bd7c  e1 ff ff ea                                      b #0x47bd08

; FUNCTION 0x0047c868, declared_size=172, range_size=172, mode=arm
; class-group: Objective_MoveInZone
; alias: _ZN20Objective_MoveInZone7CompileEv
; demangled: Objective_MoveInZone::Compile()
; decoder-mode: arm
0047c868  70 40 2d e9                                      push {r4, r5, r6, lr}
0047c86c  98 c0 9f e5                                      ldr ip, [pc, #0x98]
0047c870  98 30 9f e5                                      ldr r3, [pc, #0x98]
0047c874  0c 60 90 e5                                      ldr r6, [r0, #0xc]
0047c878  0c c0 8f e0                                      add ip, pc, ip
0047c87c  03 30 9c e7                                      ldr r3, [ip, r3]
0047c880  18 d0 4d e2                                      sub sp, sp, #0x18
0047c884  0c 40 8d e2                                      add r4, sp, #0xc
0047c888  38 10 93 e5                                      ldr r1, [r3, #0x38]
0047c88c  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
0047c890  00 e0 a0 e3                                      mov lr, #0
0047c894  00 30 e0 e3                                      mvn r3, #0
0047c898  00 50 a0 e1                                      mov r5, r0
0047c89c  04 00 a0 e1                                      mov r0, r4
0047c8a0  04 e0 8d e5                                      str lr, [sp, #4]
0047c8a4  00 e0 8d e5                                      str lr, [sp]
0047c8a8  fc 38 fb eb                                      bl #0x34aca0
0047c8ac  04 00 a0 e1                                      mov r0, r4
0047c8b0  8b 0d fb eb                                      bl #0x33fee4
0047c8b4  00 00 50 e3                                      cmp r0, #0
0047c8b8  03 00 00 0a                                      beq #0x47c8cc
0047c8bc  a7 38 fc eb                                      bl #0x38ab60
0047c8c0  00 00 50 e3                                      cmp r0, #0
0047c8c4  20 00 85 05                                      streq r0, [r5, #0x20]
0047c8c8  0d 00 00 0a                                      beq #0x47c904
0047c8cc  04 00 a0 e1                                      mov r0, r4
0047c8d0  00 10 a0 e3                                      mov r1, #0
0047c8d4  39 0d fb eb                                      bl #0x33fdc0
0047c8d8  00 00 50 e3                                      cmp r0, #0
0047c8dc  20 00 85 e5                                      str r0, [r5, #0x20]
0047c8e0  07 00 00 0a                                      beq #0x47c904
0047c8e4  24 00 96 e5                                      ldr r0, [r6, #0x24]
0047c8e8  01 00 70 e3                                      cmn r0, #1
0047c8ec  02 00 00 0a                                      beq #0x47c8fc
0047c8f0  bf ff ff eb                                      bl #0x47c7f4
0047c8f4  00 00 50 e3                                      cmp r0, #0
0047c8f8  01 00 00 0a                                      beq #0x47c904
0047c8fc  01 30 a0 e3                                      mov r3, #1
0047c900  08 30 c5 e5                                      strb r3, [r5, #8]
0047c904  18 d0 8d e2                                      add sp, sp, #0x18
0047c908  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0047c90c  18 82 51 00 f4 37 00 00                          .byte 0x18, 0x82, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047cdbc, declared_size=8, range_size=8, mode=arm
; class-group: Objective_MoveInZone
; alias: _ZThn24_N20Objective_MoveInZoneD0Ev
; demangled: non-virtual thunk to Objective_MoveInZone::~Objective_MoveInZone()
; decoder-mode: arm
0047cdbc  18 00 40 e2                                      sub r0, r0, #0x18
0047cdc0  ff ff ff ea                                      b #0x47cdc4

; FUNCTION 0x0047cdc4, declared_size=80, range_size=80, mode=arm
; class-group: Objective_MoveInZone
; alias: _ZN20Objective_MoveInZoneD0Ev
; demangled: Objective_MoveInZone::~Objective_MoveInZone()
; decoder-mode: arm
0047cdc4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047cdc8  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047cdcc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047cdd0  03 30 8f e0                                      add r3, pc, r3
0047cdd4  01 10 93 e7                                      ldr r1, [r3, r1]
0047cdd8  02 20 93 e7                                      ldr r2, [r3, r2]
0047cddc  10 40 2d e9                                      push {r4, lr}
0047cde0  08 10 81 e2                                      add r1, r1, #8
0047cde4  08 20 82 e2                                      add r2, r2, #8
0047cde8  00 40 a0 e1                                      mov r4, r0
0047cdec  00 10 80 e5                                      str r1, [r0]
0047cdf0  18 20 80 e5                                      str r2, [r0, #0x18]
0047cdf4  fa f4 ff eb                                      bl #0x47a1e4
0047cdf8  04 00 a0 e1                                      mov r0, r4
0047cdfc  8f 4d fa eb                                      bl #0x310440
0047ce00  04 00 a0 e1                                      mov r0, r4
0047ce04  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047ce08  c0 7c 51 00 90 3a 00 00 40 0b 00 00              .byte 0xc0, 0x7c, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d1550, declared_size=48, range_size=48, mode=arm
; class-group: Structs::DeactivateTriggerPlate
; alias: _ZN7Structs22DeactivateTriggerPlate8finalizeEv
; demangled: Structs::DeactivateTriggerPlate::finalize()
; decoder-mode: arm
004d1550  10 40 2d e9                                      push {r4, lr}
004d1554  00 40 a0 e1                                      mov r4, r0
004d1558  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d155c  00 00 50 e3                                      cmp r0, #0
004d1560  03 00 00 0a                                      beq #0x4d1574
004d1564  b5 fb f8 eb                                      bl #0x310440
004d1568  00 30 a0 e3                                      mov r3, #0
004d156c  08 30 84 e5                                      str r3, [r4, #8]
004d1570  0c 30 84 e5                                      str r3, [r4, #0xc]
004d1574  04 00 a0 e1                                      mov r0, r4
004d1578  10 40 bd e8                                      pop {r4, lr}
004d157c  b9 d5 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d1580, declared_size=72, range_size=72, mode=arm
; class-group: Structs::DeactivateTriggerPlate
; alias: _ZN7Structs22DeactivateTriggerPlateD1Ev
; demangled: Structs::DeactivateTriggerPlate::~DeactivateTriggerPlate()
; decoder-mode: arm
004d1580  10 40 2d e9                                      push {r4, lr}
004d1584  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1588  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d158c  00 40 a0 e1                                      mov r4, r0
004d1590  03 30 8f e0                                      add r3, pc, r3
004d1594  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1598  02 20 93 e7                                      ldr r2, [r3, r2]
004d159c  00 00 50 e3                                      cmp r0, #0
004d15a0  08 20 82 e2                                      add r2, r2, #8
004d15a4  00 20 84 e5                                      str r2, [r4]
004d15a8  00 00 00 0a                                      beq #0x4d15b0
004d15ac  a3 fb f8 eb                                      bl #0x310440
004d15b0  04 00 a0 e1                                      mov r0, r4
004d15b4  a9 d5 ff eb                                      bl #0x4c6c60
004d15b8  04 00 a0 e1                                      mov r0, r4
004d15bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d15c0  00 35 4c 00 c4 0b 00 00                          .byte 0x00, 0x35, 0x4c, 0x00, 0xc4, 0x0b, 0x00, 0x00

; FUNCTION 0x004d15c8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::DeactivateTriggerPlate
; alias: _ZN7Structs22DeactivateTriggerPlateD0Ev
; demangled: Structs::DeactivateTriggerPlate::~DeactivateTriggerPlate()
; decoder-mode: arm
004d15c8  10 40 2d e9                                      push {r4, lr}
004d15cc  00 40 a0 e1                                      mov r4, r0
004d15d0  ea ff ff eb                                      bl #0x4d1580
004d15d4  04 00 a0 e1                                      mov r0, r4
004d15d8  98 fb f8 eb                                      bl #0x310440
004d15dc  04 00 a0 e1                                      mov r0, r4
004d15e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d15e4, declared_size=72, range_size=72, mode=arm
; class-group: Structs::DeactivateTriggerPlate
; alias: _ZN7Structs22DeactivateTriggerPlateD2Ev
; demangled: Structs::DeactivateTriggerPlate::~DeactivateTriggerPlate()
; decoder-mode: arm
004d15e4  10 40 2d e9                                      push {r4, lr}
004d15e8  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d15ec  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d15f0  00 40 a0 e1                                      mov r4, r0
004d15f4  03 30 8f e0                                      add r3, pc, r3
004d15f8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d15fc  02 20 93 e7                                      ldr r2, [r3, r2]
004d1600  00 00 50 e3                                      cmp r0, #0
004d1604  08 20 82 e2                                      add r2, r2, #8
004d1608  00 20 84 e5                                      str r2, [r4]
004d160c  00 00 00 0a                                      beq #0x4d1614
004d1610  8a fb f8 eb                                      bl #0x310440
004d1614  04 00 a0 e1                                      mov r0, r4
004d1618  90 d5 ff eb                                      bl #0x4c6c60
004d161c  04 00 a0 e1                                      mov r0, r4
004d1620  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1624  9c 34 4c 00 c4 0b 00 00                          .byte 0x9c, 0x34, 0x4c, 0x00, 0xc4, 0x0b, 0x00, 0x00

; FUNCTION 0x005002f0, declared_size=192, range_size=192, mode=arm
; class-group: Structs::DeactivateTriggerPlate
; alias: _ZN7Structs22DeactivateTriggerPlate4readEP11IStreamBase
; demangled: Structs::DeactivateTriggerPlate::read(IStreamBase*)
; decoder-mode: arm
005002f0  70 40 2d e9                                      push {r4, r5, r6, lr}
005002f4  00 40 a0 e1                                      mov r4, r0
005002f8  08 d0 4d e2                                      sub sp, sp, #8
005002fc  01 60 a0 e1                                      mov r6, r1
00500300  48 fd ff eb                                      bl #0x4ff828
00500304  06 00 a0 e1                                      mov r0, r6
00500308  08 10 84 e2                                      add r1, r4, #8
0050030c  a3 7b fb eb                                      bl #0x3df1a0
00500310  01 30 a0 e3                                      mov r3, #1
00500314  00 00 53 e3                                      cmp r3, #0
00500318  04 30 8d e5                                      str r3, [sp, #4]
0050031c  0f 00 00 1a                                      bne #0x500360
00500320  09 30 84 e2                                      add r3, r4, #9
00500324  0a 20 84 e2                                      add r2, r4, #0xa
00500328  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050032c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500330  02 00 53 e1                                      cmp r3, r2
00500334  01 10 20 e0                                      eor r1, r0, r1
00500338  01 10 43 e5                                      strb r1, [r3, #-1]
0050033c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500340  00 10 21 e0                                      eor r1, r1, r0
00500344  01 10 c2 e5                                      strb r1, [r2, #1]
00500348  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050034c  01 20 42 e2                                      sub r2, r2, #1
00500350  00 10 21 e0                                      eor r1, r1, r0
00500354  01 10 43 e5                                      strb r1, [r3, #-1]
00500358  01 30 83 e2                                      add r3, r3, #1
0050035c  f1 ff ff 3a                                      blo #0x500328
00500360  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00500364  00 00 50 e3                                      cmp r0, #0
00500368  00 00 00 0a                                      beq #0x500370
0050036c  33 40 f8 eb                                      bl #0x310440
00500370  08 00 94 e5                                      ldr r0, [r4, #8]
00500374  01 10 a0 e3                                      mov r1, #1
00500378  00 50 a0 e3                                      mov r5, #0
0050037c  01 00 80 e0                                      add r0, r0, r1
00500380  79 40 f8 eb                                      bl #0x31056c
00500384  08 20 94 e5                                      ldr r2, [r4, #8]
00500388  00 10 a0 e1                                      mov r1, r0
0050038c  0c 00 84 e5                                      str r0, [r4, #0xc]
00500390  05 30 a0 e1                                      mov r3, r5
00500394  06 00 a0 e1                                      mov r0, r6
00500398  2d 5c f8 eb                                      bl #0x317454
0050039c  08 30 94 e5                                      ldr r3, [r4, #8]
005003a0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005003a4  03 50 c2 e7                                      strb r5, [r2, r3]
005003a8  08 d0 8d e2                                      add sp, sp, #8
005003ac  70 80 bd e8                                      pop {r4, r5, r6, pc}

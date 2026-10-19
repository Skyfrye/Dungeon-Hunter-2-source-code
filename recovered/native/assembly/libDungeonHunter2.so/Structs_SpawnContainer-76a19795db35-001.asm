; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d1474, declared_size=48, range_size=48, mode=arm
; class-group: Structs::SpawnContainer
; alias: _ZN7Structs14SpawnContainer8finalizeEv
; demangled: Structs::SpawnContainer::finalize()
; decoder-mode: arm
004d1474  10 40 2d e9                                      push {r4, lr}
004d1478  00 40 a0 e1                                      mov r4, r0
004d147c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1480  00 00 50 e3                                      cmp r0, #0
004d1484  03 00 00 0a                                      beq #0x4d1498
004d1488  ec fb f8 eb                                      bl #0x310440
004d148c  00 30 a0 e3                                      mov r3, #0
004d1490  08 30 84 e5                                      str r3, [r4, #8]
004d1494  0c 30 84 e5                                      str r3, [r4, #0xc]
004d1498  04 00 a0 e1                                      mov r0, r4
004d149c  10 40 bd e8                                      pop {r4, lr}
004d14a0  f0 d5 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d14a4, declared_size=72, range_size=72, mode=arm
; class-group: Structs::SpawnContainer
; alias: _ZN7Structs14SpawnContainerD1Ev
; demangled: Structs::SpawnContainer::~SpawnContainer()
; decoder-mode: arm
004d14a4  10 40 2d e9                                      push {r4, lr}
004d14a8  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d14ac  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d14b0  00 40 a0 e1                                      mov r4, r0
004d14b4  03 30 8f e0                                      add r3, pc, r3
004d14b8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d14bc  02 20 93 e7                                      ldr r2, [r3, r2]
004d14c0  00 00 50 e3                                      cmp r0, #0
004d14c4  08 20 82 e2                                      add r2, r2, #8
004d14c8  00 20 84 e5                                      str r2, [r4]
004d14cc  00 00 00 0a                                      beq #0x4d14d4
004d14d0  da fb f8 eb                                      bl #0x310440
004d14d4  04 00 a0 e1                                      mov r0, r4
004d14d8  e0 d5 ff eb                                      bl #0x4c6c60
004d14dc  04 00 a0 e1                                      mov r0, r4
004d14e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d14e4  dc 35 4c 00 48 1e 00 00                          .byte 0xdc, 0x35, 0x4c, 0x00, 0x48, 0x1e, 0x00, 0x00

; FUNCTION 0x004d14ec, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SpawnContainer
; alias: _ZN7Structs14SpawnContainerD0Ev
; demangled: Structs::SpawnContainer::~SpawnContainer()
; decoder-mode: arm
004d14ec  10 40 2d e9                                      push {r4, lr}
004d14f0  00 40 a0 e1                                      mov r4, r0
004d14f4  ea ff ff eb                                      bl #0x4d14a4
004d14f8  04 00 a0 e1                                      mov r0, r4
004d14fc  cf fb f8 eb                                      bl #0x310440
004d1500  04 00 a0 e1                                      mov r0, r4
004d1504  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1508, declared_size=72, range_size=72, mode=arm
; class-group: Structs::SpawnContainer
; alias: _ZN7Structs14SpawnContainerD2Ev
; demangled: Structs::SpawnContainer::~SpawnContainer()
; decoder-mode: arm
004d1508  10 40 2d e9                                      push {r4, lr}
004d150c  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1510  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1514  00 40 a0 e1                                      mov r4, r0
004d1518  03 30 8f e0                                      add r3, pc, r3
004d151c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1520  02 20 93 e7                                      ldr r2, [r3, r2]
004d1524  00 00 50 e3                                      cmp r0, #0
004d1528  08 20 82 e2                                      add r2, r2, #8
004d152c  00 20 84 e5                                      str r2, [r4]
004d1530  00 00 00 0a                                      beq #0x4d1538
004d1534  c1 fb f8 eb                                      bl #0x310440
004d1538  04 00 a0 e1                                      mov r0, r4
004d153c  c7 d5 ff eb                                      bl #0x4c6c60
004d1540  04 00 a0 e1                                      mov r0, r4
004d1544  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1548  78 35 4c 00 48 1e 00 00                          .byte 0x78, 0x35, 0x4c, 0x00, 0x48, 0x1e, 0x00, 0x00

; FUNCTION 0x00500230, declared_size=192, range_size=192, mode=arm
; class-group: Structs::SpawnContainer
; alias: _ZN7Structs14SpawnContainer4readEP11IStreamBase
; demangled: Structs::SpawnContainer::read(IStreamBase*)
; decoder-mode: arm
00500230  70 40 2d e9                                      push {r4, r5, r6, lr}
00500234  00 40 a0 e1                                      mov r4, r0
00500238  08 d0 4d e2                                      sub sp, sp, #8
0050023c  01 60 a0 e1                                      mov r6, r1
00500240  78 fd ff eb                                      bl #0x4ff828
00500244  06 00 a0 e1                                      mov r0, r6
00500248  08 10 84 e2                                      add r1, r4, #8
0050024c  d3 7b fb eb                                      bl #0x3df1a0
00500250  01 30 a0 e3                                      mov r3, #1
00500254  00 00 53 e3                                      cmp r3, #0
00500258  04 30 8d e5                                      str r3, [sp, #4]
0050025c  0f 00 00 1a                                      bne #0x5002a0
00500260  09 30 84 e2                                      add r3, r4, #9
00500264  0a 20 84 e2                                      add r2, r4, #0xa
00500268  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050026c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500270  02 00 53 e1                                      cmp r3, r2
00500274  01 10 20 e0                                      eor r1, r0, r1
00500278  01 10 43 e5                                      strb r1, [r3, #-1]
0050027c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500280  00 10 21 e0                                      eor r1, r1, r0
00500284  01 10 c2 e5                                      strb r1, [r2, #1]
00500288  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050028c  01 20 42 e2                                      sub r2, r2, #1
00500290  00 10 21 e0                                      eor r1, r1, r0
00500294  01 10 43 e5                                      strb r1, [r3, #-1]
00500298  01 30 83 e2                                      add r3, r3, #1
0050029c  f1 ff ff 3a                                      blo #0x500268
005002a0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005002a4  00 00 50 e3                                      cmp r0, #0
005002a8  00 00 00 0a                                      beq #0x5002b0
005002ac  63 40 f8 eb                                      bl #0x310440
005002b0  08 00 94 e5                                      ldr r0, [r4, #8]
005002b4  01 10 a0 e3                                      mov r1, #1
005002b8  00 50 a0 e3                                      mov r5, #0
005002bc  01 00 80 e0                                      add r0, r0, r1
005002c0  a9 40 f8 eb                                      bl #0x31056c
005002c4  08 20 94 e5                                      ldr r2, [r4, #8]
005002c8  00 10 a0 e1                                      mov r1, r0
005002cc  0c 00 84 e5                                      str r0, [r4, #0xc]
005002d0  05 30 a0 e1                                      mov r3, r5
005002d4  06 00 a0 e1                                      mov r0, r6
005002d8  5d 5c f8 eb                                      bl #0x317454
005002dc  08 30 94 e5                                      ldr r3, [r4, #8]
005002e0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005002e4  03 50 c2 e7                                      strb r5, [r2, r3]
005002e8  08 d0 8d e2                                      add sp, sp, #8
005002ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

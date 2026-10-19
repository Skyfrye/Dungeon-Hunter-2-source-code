; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cf3c0, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestKillEnemies
; alias: _ZN7Structs18v2QuestKillEnemies8finalizeEv
; demangled: Structs::v2QuestKillEnemies::finalize()
; decoder-mode: arm
004cf3c0  10 40 2d e9                                      push {r4, lr}
004cf3c4  00 40 a0 e1                                      mov r4, r0
004cf3c8  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf3cc  00 00 50 e3                                      cmp r0, #0
004cf3d0  03 00 00 0a                                      beq #0x4cf3e4
004cf3d4  19 04 f9 eb                                      bl #0x310440
004cf3d8  00 30 a0 e3                                      mov r3, #0
004cf3dc  10 30 84 e5                                      str r3, [r4, #0x10]
004cf3e0  14 30 84 e5                                      str r3, [r4, #0x14]
004cf3e4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf3e8  00 00 50 e3                                      cmp r0, #0
004cf3ec  03 00 00 0a                                      beq #0x4cf400
004cf3f0  12 04 f9 eb                                      bl #0x310440
004cf3f4  00 30 a0 e3                                      mov r3, #0
004cf3f8  18 30 84 e5                                      str r3, [r4, #0x18]
004cf3fc  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cf400  04 00 a0 e1                                      mov r0, r4
004cf404  10 40 bd e8                                      pop {r4, lr}
004cf408  0c e5 ff ea                                      b #0x4c8840

; FUNCTION 0x004cf40c, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestKillEnemies
; alias: _ZN7Structs18v2QuestKillEnemiesD1Ev
; demangled: Structs::v2QuestKillEnemies::~v2QuestKillEnemies()
; decoder-mode: arm
004cf40c  10 40 2d e9                                      push {r4, lr}
004cf410  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf414  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf418  00 40 a0 e1                                      mov r4, r0
004cf41c  03 30 8f e0                                      add r3, pc, r3
004cf420  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf424  02 20 93 e7                                      ldr r2, [r3, r2]
004cf428  00 00 50 e3                                      cmp r0, #0
004cf42c  08 20 82 e2                                      add r2, r2, #8
004cf430  00 20 84 e5                                      str r2, [r4]
004cf434  00 00 00 0a                                      beq #0x4cf43c
004cf438  00 04 f9 eb                                      bl #0x310440
004cf43c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf440  00 00 50 e3                                      cmp r0, #0
004cf444  00 00 00 0a                                      beq #0x4cf44c
004cf448  fc 03 f9 eb                                      bl #0x310440
004cf44c  04 00 a0 e1                                      mov r0, r4
004cf450  f8 e4 ff eb                                      bl #0x4c8838
004cf454  04 00 a0 e1                                      mov r0, r4
004cf458  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf45c  74 56 4c 00 d4 2d 00 00                          .byte 0x74, 0x56, 0x4c, 0x00, 0xd4, 0x2d, 0x00, 0x00

; FUNCTION 0x004cf464, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestKillEnemies
; alias: _ZN7Structs18v2QuestKillEnemiesD0Ev
; demangled: Structs::v2QuestKillEnemies::~v2QuestKillEnemies()
; decoder-mode: arm
004cf464  10 40 2d e9                                      push {r4, lr}
004cf468  00 40 a0 e1                                      mov r4, r0
004cf46c  e6 ff ff eb                                      bl #0x4cf40c
004cf470  04 00 a0 e1                                      mov r0, r4
004cf474  f1 03 f9 eb                                      bl #0x310440
004cf478  04 00 a0 e1                                      mov r0, r4
004cf47c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cf480, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestKillEnemies
; alias: _ZN7Structs18v2QuestKillEnemiesD2Ev
; demangled: Structs::v2QuestKillEnemies::~v2QuestKillEnemies()
; decoder-mode: arm
004cf480  10 40 2d e9                                      push {r4, lr}
004cf484  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf488  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf48c  00 40 a0 e1                                      mov r4, r0
004cf490  03 30 8f e0                                      add r3, pc, r3
004cf494  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf498  02 20 93 e7                                      ldr r2, [r3, r2]
004cf49c  00 00 50 e3                                      cmp r0, #0
004cf4a0  08 20 82 e2                                      add r2, r2, #8
004cf4a4  00 20 84 e5                                      str r2, [r4]
004cf4a8  00 00 00 0a                                      beq #0x4cf4b0
004cf4ac  e3 03 f9 eb                                      bl #0x310440
004cf4b0  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf4b4  00 00 50 e3                                      cmp r0, #0
004cf4b8  00 00 00 0a                                      beq #0x4cf4c0
004cf4bc  df 03 f9 eb                                      bl #0x310440
004cf4c0  04 00 a0 e1                                      mov r0, r4
004cf4c4  db e4 ff eb                                      bl #0x4c8838
004cf4c8  04 00 a0 e1                                      mov r0, r4
004cf4cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf4d0  00 56 4c 00 d4 2d 00 00                          .byte 0x00, 0x56, 0x4c, 0x00, 0xd4, 0x2d, 0x00, 0x00

; FUNCTION 0x00504310, declared_size=632, range_size=632, mode=arm
; class-group: Structs::v2QuestKillEnemies
; alias: _ZN7Structs18v2QuestKillEnemies4readEP11IStreamBase
; demangled: Structs::v2QuestKillEnemies::read(IStreamBase*)
; decoder-mode: arm
00504310  70 40 2d e9                                      push {r4, r5, r6, lr}
00504314  00 40 a0 e1                                      mov r4, r0
00504318  08 d0 4d e2                                      sub sp, sp, #8
0050431c  01 50 a0 e1                                      mov r5, r1
00504320  99 fc ff eb                                      bl #0x50358c
00504324  05 00 a0 e1                                      mov r0, r5
00504328  10 10 84 e2                                      add r1, r4, #0x10
0050432c  9b 6b fb eb                                      bl #0x3df1a0
00504330  01 30 a0 e3                                      mov r3, #1
00504334  00 00 53 e3                                      cmp r3, #0
00504338  04 30 8d e5                                      str r3, [sp, #4]
0050433c  0f 00 00 1a                                      bne #0x504380
00504340  11 30 84 e2                                      add r3, r4, #0x11
00504344  12 20 84 e2                                      add r2, r4, #0x12
00504348  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050434c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504350  03 00 52 e1                                      cmp r2, r3
00504354  01 10 20 e0                                      eor r1, r0, r1
00504358  01 10 43 e5                                      strb r1, [r3, #-1]
0050435c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504360  00 10 21 e0                                      eor r1, r1, r0
00504364  01 10 c2 e5                                      strb r1, [r2, #1]
00504368  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050436c  01 20 42 e2                                      sub r2, r2, #1
00504370  00 10 21 e0                                      eor r1, r1, r0
00504374  01 10 43 e5                                      strb r1, [r3, #-1]
00504378  01 30 83 e2                                      add r3, r3, #1
0050437c  f1 ff ff 8a                                      bhi #0x504348
00504380  14 00 94 e5                                      ldr r0, [r4, #0x14]
00504384  00 00 50 e3                                      cmp r0, #0
00504388  00 00 00 0a                                      beq #0x504390
0050438c  2b 30 f8 eb                                      bl #0x310440
00504390  10 00 94 e5                                      ldr r0, [r4, #0x10]
00504394  01 10 a0 e3                                      mov r1, #1
00504398  00 60 a0 e3                                      mov r6, #0
0050439c  01 00 80 e0                                      add r0, r0, r1
005043a0  71 30 f8 eb                                      bl #0x31056c
005043a4  10 20 94 e5                                      ldr r2, [r4, #0x10]
005043a8  00 10 a0 e1                                      mov r1, r0
005043ac  14 00 84 e5                                      str r0, [r4, #0x14]
005043b0  06 30 a0 e1                                      mov r3, r6
005043b4  05 00 a0 e1                                      mov r0, r5
005043b8  25 4c f8 eb                                      bl #0x317454
005043bc  10 30 94 e5                                      ldr r3, [r4, #0x10]
005043c0  14 20 94 e5                                      ldr r2, [r4, #0x14]
005043c4  05 00 a0 e1                                      mov r0, r5
005043c8  18 10 84 e2                                      add r1, r4, #0x18
005043cc  03 60 c2 e7                                      strb r6, [r2, r3]
005043d0  72 6b fb eb                                      bl #0x3df1a0
005043d4  01 30 a0 e3                                      mov r3, #1
005043d8  06 00 53 e1                                      cmp r3, r6
005043dc  04 30 8d e5                                      str r3, [sp, #4]
005043e0  0f 00 00 1a                                      bne #0x504424
005043e4  19 30 84 e2                                      add r3, r4, #0x19
005043e8  1a 20 84 e2                                      add r2, r4, #0x1a
005043ec  01 00 d2 e5                                      ldrb r0, [r2, #1]
005043f0  01 10 53 e5                                      ldrb r1, [r3, #-1]
005043f4  03 00 52 e1                                      cmp r2, r3
005043f8  01 10 20 e0                                      eor r1, r0, r1
005043fc  01 10 43 e5                                      strb r1, [r3, #-1]
00504400  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504404  00 10 21 e0                                      eor r1, r1, r0
00504408  01 10 c2 e5                                      strb r1, [r2, #1]
0050440c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504410  01 20 42 e2                                      sub r2, r2, #1
00504414  00 10 21 e0                                      eor r1, r1, r0
00504418  01 10 43 e5                                      strb r1, [r3, #-1]
0050441c  01 30 83 e2                                      add r3, r3, #1
00504420  f1 ff ff 8a                                      bhi #0x5043ec
00504424  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00504428  00 00 50 e3                                      cmp r0, #0
0050442c  00 00 00 0a                                      beq #0x504434
00504430  02 30 f8 eb                                      bl #0x310440
00504434  18 00 94 e5                                      ldr r0, [r4, #0x18]
00504438  01 10 a0 e3                                      mov r1, #1
0050443c  00 60 a0 e3                                      mov r6, #0
00504440  01 00 80 e0                                      add r0, r0, r1
00504444  48 30 f8 eb                                      bl #0x31056c
00504448  18 20 94 e5                                      ldr r2, [r4, #0x18]
0050444c  00 10 a0 e1                                      mov r1, r0
00504450  1c 00 84 e5                                      str r0, [r4, #0x1c]
00504454  06 30 a0 e1                                      mov r3, r6
00504458  05 00 a0 e1                                      mov r0, r5
0050445c  fc 4b f8 eb                                      bl #0x317454
00504460  18 30 94 e5                                      ldr r3, [r4, #0x18]
00504464  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00504468  05 00 a0 e1                                      mov r0, r5
0050446c  20 10 84 e2                                      add r1, r4, #0x20
00504470  03 60 c2 e7                                      strb r6, [r2, r3]
00504474  05 53 fd eb                                      bl #0x459090
00504478  01 30 a0 e3                                      mov r3, #1
0050447c  06 00 53 e1                                      cmp r3, r6
00504480  04 30 8d e5                                      str r3, [sp, #4]
00504484  0f 00 00 1a                                      bne #0x5044c8
00504488  21 30 84 e2                                      add r3, r4, #0x21
0050448c  22 20 84 e2                                      add r2, r4, #0x22
00504490  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504494  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504498  03 00 52 e1                                      cmp r2, r3
0050449c  01 10 20 e0                                      eor r1, r0, r1
005044a0  01 10 43 e5                                      strb r1, [r3, #-1]
005044a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005044a8  00 10 21 e0                                      eor r1, r1, r0
005044ac  01 10 c2 e5                                      strb r1, [r2, #1]
005044b0  01 00 53 e5                                      ldrb r0, [r3, #-1]
005044b4  01 20 42 e2                                      sub r2, r2, #1
005044b8  00 10 21 e0                                      eor r1, r1, r0
005044bc  01 10 43 e5                                      strb r1, [r3, #-1]
005044c0  01 30 83 e2                                      add r3, r3, #1
005044c4  f1 ff ff 8a                                      bhi #0x504490
005044c8  05 00 a0 e1                                      mov r0, r5
005044cc  24 10 84 e2                                      add r1, r4, #0x24
005044d0  ee 52 fd eb                                      bl #0x459090
005044d4  01 30 a0 e3                                      mov r3, #1
005044d8  00 00 53 e3                                      cmp r3, #0
005044dc  04 30 8d e5                                      str r3, [sp, #4]
005044e0  0f 00 00 1a                                      bne #0x504524
005044e4  25 30 84 e2                                      add r3, r4, #0x25
005044e8  26 20 84 e2                                      add r2, r4, #0x26
005044ec  01 00 d2 e5                                      ldrb r0, [r2, #1]
005044f0  01 10 53 e5                                      ldrb r1, [r3, #-1]
005044f4  03 00 52 e1                                      cmp r2, r3
005044f8  01 10 20 e0                                      eor r1, r0, r1
005044fc  01 10 43 e5                                      strb r1, [r3, #-1]
00504500  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504504  00 10 21 e0                                      eor r1, r1, r0
00504508  01 10 c2 e5                                      strb r1, [r2, #1]
0050450c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504510  01 20 42 e2                                      sub r2, r2, #1
00504514  00 10 21 e0                                      eor r1, r1, r0
00504518  01 10 43 e5                                      strb r1, [r3, #-1]
0050451c  01 30 83 e2                                      add r3, r3, #1
00504520  f1 ff ff 8a                                      bhi #0x5044ec
00504524  05 00 a0 e1                                      mov r0, r5
00504528  28 10 84 e2                                      add r1, r4, #0x28
0050452c  d7 52 fd eb                                      bl #0x459090
00504530  01 30 a0 e3                                      mov r3, #1
00504534  00 00 53 e3                                      cmp r3, #0
00504538  04 30 8d e5                                      str r3, [sp, #4]
0050453c  0f 00 00 1a                                      bne #0x504580
00504540  2a 30 84 e2                                      add r3, r4, #0x2a
00504544  29 40 84 e2                                      add r4, r4, #0x29
00504548  01 10 d3 e5                                      ldrb r1, [r3, #1]
0050454c  01 20 54 e5                                      ldrb r2, [r4, #-1]
00504550  04 00 53 e1                                      cmp r3, r4
00504554  02 20 21 e0                                      eor r2, r1, r2
00504558  01 20 44 e5                                      strb r2, [r4, #-1]
0050455c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00504560  01 20 22 e0                                      eor r2, r2, r1
00504564  01 20 c3 e5                                      strb r2, [r3, #1]
00504568  01 10 54 e5                                      ldrb r1, [r4, #-1]
0050456c  01 30 43 e2                                      sub r3, r3, #1
00504570  01 20 22 e0                                      eor r2, r2, r1
00504574  01 20 44 e5                                      strb r2, [r4, #-1]
00504578  01 40 84 e2                                      add r4, r4, #1
0050457c  f1 ff ff 8a                                      bhi #0x504548
00504580  08 d0 8d e2                                      add sp, sp, #8
00504584  70 80 bd e8                                      pop {r4, r5, r6, pc}

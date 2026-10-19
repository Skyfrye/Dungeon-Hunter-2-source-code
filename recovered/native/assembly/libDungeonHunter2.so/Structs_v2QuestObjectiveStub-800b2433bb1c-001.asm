; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d0008, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestObjectiveStub
; alias: _ZN7Structs20v2QuestObjectiveStub8finalizeEv
; demangled: Structs::v2QuestObjectiveStub::finalize()
; decoder-mode: arm
004d0008  10 40 2d e9                                      push {r4, lr}
004d000c  00 40 a0 e1                                      mov r4, r0
004d0010  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d0014  00 00 50 e3                                      cmp r0, #0
004d0018  03 00 00 0a                                      beq #0x4d002c
004d001c  07 01 f9 eb                                      bl #0x310440
004d0020  00 30 a0 e3                                      mov r3, #0
004d0024  10 30 84 e5                                      str r3, [r4, #0x10]
004d0028  14 30 84 e5                                      str r3, [r4, #0x14]
004d002c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004d0030  00 00 50 e3                                      cmp r0, #0
004d0034  03 00 00 0a                                      beq #0x4d0048
004d0038  00 01 f9 eb                                      bl #0x310440
004d003c  00 30 a0 e3                                      mov r3, #0
004d0040  18 30 84 e5                                      str r3, [r4, #0x18]
004d0044  1c 30 84 e5                                      str r3, [r4, #0x1c]
004d0048  04 00 a0 e1                                      mov r0, r4
004d004c  10 40 bd e8                                      pop {r4, lr}
004d0050  fa e1 ff ea                                      b #0x4c8840

; FUNCTION 0x004d00a0, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestObjectiveStub
; alias: _ZN7Structs20v2QuestObjectiveStubD1Ev
; demangled: Structs::v2QuestObjectiveStub::~v2QuestObjectiveStub()
; decoder-mode: arm
004d00a0  10 40 2d e9                                      push {r4, lr}
004d00a4  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d00a8  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d00ac  00 40 a0 e1                                      mov r4, r0
004d00b0  03 30 8f e0                                      add r3, pc, r3
004d00b4  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d00b8  02 20 93 e7                                      ldr r2, [r3, r2]
004d00bc  00 00 50 e3                                      cmp r0, #0
004d00c0  08 20 82 e2                                      add r2, r2, #8
004d00c4  00 20 84 e5                                      str r2, [r4]
004d00c8  00 00 00 0a                                      beq #0x4d00d0
004d00cc  db 00 f9 eb                                      bl #0x310440
004d00d0  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004d00d4  00 00 50 e3                                      cmp r0, #0
004d00d8  00 00 00 0a                                      beq #0x4d00e0
004d00dc  d7 00 f9 eb                                      bl #0x310440
004d00e0  04 00 a0 e1                                      mov r0, r4
004d00e4  d3 e1 ff eb                                      bl #0x4c8838
004d00e8  04 00 a0 e1                                      mov r0, r4
004d00ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d00f0  e0 49 4c 00 28 1e 00 00                          .byte 0xe0, 0x49, 0x4c, 0x00, 0x28, 0x1e, 0x00, 0x00

; FUNCTION 0x004d00f8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestObjectiveStub
; alias: _ZN7Structs20v2QuestObjectiveStubD0Ev
; demangled: Structs::v2QuestObjectiveStub::~v2QuestObjectiveStub()
; decoder-mode: arm
004d00f8  10 40 2d e9                                      push {r4, lr}
004d00fc  00 40 a0 e1                                      mov r4, r0
004d0100  e6 ff ff eb                                      bl #0x4d00a0
004d0104  04 00 a0 e1                                      mov r0, r4
004d0108  cc 00 f9 eb                                      bl #0x310440
004d010c  04 00 a0 e1                                      mov r0, r4
004d0110  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d0114, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestObjectiveStub
; alias: _ZN7Structs20v2QuestObjectiveStubD2Ev
; demangled: Structs::v2QuestObjectiveStub::~v2QuestObjectiveStub()
; decoder-mode: arm
004d0114  10 40 2d e9                                      push {r4, lr}
004d0118  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d011c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d0120  00 40 a0 e1                                      mov r4, r0
004d0124  03 30 8f e0                                      add r3, pc, r3
004d0128  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d012c  02 20 93 e7                                      ldr r2, [r3, r2]
004d0130  00 00 50 e3                                      cmp r0, #0
004d0134  08 20 82 e2                                      add r2, r2, #8
004d0138  00 20 84 e5                                      str r2, [r4]
004d013c  00 00 00 0a                                      beq #0x4d0144
004d0140  be 00 f9 eb                                      bl #0x310440
004d0144  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004d0148  00 00 50 e3                                      cmp r0, #0
004d014c  00 00 00 0a                                      beq #0x4d0154
004d0150  ba 00 f9 eb                                      bl #0x310440
004d0154  04 00 a0 e1                                      mov r0, r4
004d0158  b6 e1 ff eb                                      bl #0x4c8838
004d015c  04 00 a0 e1                                      mov r0, r4
004d0160  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d0164  6c 49 4c 00 28 1e 00 00                          .byte 0x6c, 0x49, 0x4c, 0x00, 0x28, 0x1e, 0x00, 0x00

; FUNCTION 0x00504818, declared_size=632, range_size=632, mode=arm
; class-group: Structs::v2QuestObjectiveStub
; alias: _ZN7Structs20v2QuestObjectiveStub4readEP11IStreamBase
; demangled: Structs::v2QuestObjectiveStub::read(IStreamBase*)
; decoder-mode: arm
00504818  70 40 2d e9                                      push {r4, r5, r6, lr}
0050481c  00 40 a0 e1                                      mov r4, r0
00504820  08 d0 4d e2                                      sub sp, sp, #8
00504824  01 50 a0 e1                                      mov r5, r1
00504828  57 fb ff eb                                      bl #0x50358c
0050482c  05 00 a0 e1                                      mov r0, r5
00504830  10 10 84 e2                                      add r1, r4, #0x10
00504834  59 6a fb eb                                      bl #0x3df1a0
00504838  01 30 a0 e3                                      mov r3, #1
0050483c  00 00 53 e3                                      cmp r3, #0
00504840  04 30 8d e5                                      str r3, [sp, #4]
00504844  0f 00 00 1a                                      bne #0x504888
00504848  11 30 84 e2                                      add r3, r4, #0x11
0050484c  12 20 84 e2                                      add r2, r4, #0x12
00504850  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504854  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504858  03 00 52 e1                                      cmp r2, r3
0050485c  01 10 20 e0                                      eor r1, r0, r1
00504860  01 10 43 e5                                      strb r1, [r3, #-1]
00504864  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504868  00 10 21 e0                                      eor r1, r1, r0
0050486c  01 10 c2 e5                                      strb r1, [r2, #1]
00504870  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504874  01 20 42 e2                                      sub r2, r2, #1
00504878  00 10 21 e0                                      eor r1, r1, r0
0050487c  01 10 43 e5                                      strb r1, [r3, #-1]
00504880  01 30 83 e2                                      add r3, r3, #1
00504884  f1 ff ff 8a                                      bhi #0x504850
00504888  14 00 94 e5                                      ldr r0, [r4, #0x14]
0050488c  00 00 50 e3                                      cmp r0, #0
00504890  00 00 00 0a                                      beq #0x504898
00504894  e9 2e f8 eb                                      bl #0x310440
00504898  10 00 94 e5                                      ldr r0, [r4, #0x10]
0050489c  01 10 a0 e3                                      mov r1, #1
005048a0  00 60 a0 e3                                      mov r6, #0
005048a4  01 00 80 e0                                      add r0, r0, r1
005048a8  2f 2f f8 eb                                      bl #0x31056c
005048ac  10 20 94 e5                                      ldr r2, [r4, #0x10]
005048b0  00 10 a0 e1                                      mov r1, r0
005048b4  14 00 84 e5                                      str r0, [r4, #0x14]
005048b8  06 30 a0 e1                                      mov r3, r6
005048bc  05 00 a0 e1                                      mov r0, r5
005048c0  e3 4a f8 eb                                      bl #0x317454
005048c4  10 30 94 e5                                      ldr r3, [r4, #0x10]
005048c8  14 20 94 e5                                      ldr r2, [r4, #0x14]
005048cc  05 00 a0 e1                                      mov r0, r5
005048d0  18 10 84 e2                                      add r1, r4, #0x18
005048d4  03 60 c2 e7                                      strb r6, [r2, r3]
005048d8  30 6a fb eb                                      bl #0x3df1a0
005048dc  01 30 a0 e3                                      mov r3, #1
005048e0  06 00 53 e1                                      cmp r3, r6
005048e4  04 30 8d e5                                      str r3, [sp, #4]
005048e8  0f 00 00 1a                                      bne #0x50492c
005048ec  19 30 84 e2                                      add r3, r4, #0x19
005048f0  1a 20 84 e2                                      add r2, r4, #0x1a
005048f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005048f8  01 10 53 e5                                      ldrb r1, [r3, #-1]
005048fc  03 00 52 e1                                      cmp r2, r3
00504900  01 10 20 e0                                      eor r1, r0, r1
00504904  01 10 43 e5                                      strb r1, [r3, #-1]
00504908  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050490c  00 10 21 e0                                      eor r1, r1, r0
00504910  01 10 c2 e5                                      strb r1, [r2, #1]
00504914  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504918  01 20 42 e2                                      sub r2, r2, #1
0050491c  00 10 21 e0                                      eor r1, r1, r0
00504920  01 10 43 e5                                      strb r1, [r3, #-1]
00504924  01 30 83 e2                                      add r3, r3, #1
00504928  f1 ff ff 8a                                      bhi #0x5048f4
0050492c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00504930  00 00 50 e3                                      cmp r0, #0
00504934  00 00 00 0a                                      beq #0x50493c
00504938  c0 2e f8 eb                                      bl #0x310440
0050493c  18 00 94 e5                                      ldr r0, [r4, #0x18]
00504940  01 10 a0 e3                                      mov r1, #1
00504944  00 60 a0 e3                                      mov r6, #0
00504948  01 00 80 e0                                      add r0, r0, r1
0050494c  06 2f f8 eb                                      bl #0x31056c
00504950  18 20 94 e5                                      ldr r2, [r4, #0x18]
00504954  00 10 a0 e1                                      mov r1, r0
00504958  1c 00 84 e5                                      str r0, [r4, #0x1c]
0050495c  06 30 a0 e1                                      mov r3, r6
00504960  05 00 a0 e1                                      mov r0, r5
00504964  ba 4a f8 eb                                      bl #0x317454
00504968  18 30 94 e5                                      ldr r3, [r4, #0x18]
0050496c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00504970  05 00 a0 e1                                      mov r0, r5
00504974  20 10 84 e2                                      add r1, r4, #0x20
00504978  03 60 c2 e7                                      strb r6, [r2, r3]
0050497c  c3 51 fd eb                                      bl #0x459090
00504980  01 30 a0 e3                                      mov r3, #1
00504984  06 00 53 e1                                      cmp r3, r6
00504988  04 30 8d e5                                      str r3, [sp, #4]
0050498c  0f 00 00 1a                                      bne #0x5049d0
00504990  21 30 84 e2                                      add r3, r4, #0x21
00504994  22 20 84 e2                                      add r2, r4, #0x22
00504998  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050499c  01 10 53 e5                                      ldrb r1, [r3, #-1]
005049a0  03 00 52 e1                                      cmp r2, r3
005049a4  01 10 20 e0                                      eor r1, r0, r1
005049a8  01 10 43 e5                                      strb r1, [r3, #-1]
005049ac  01 00 d2 e5                                      ldrb r0, [r2, #1]
005049b0  00 10 21 e0                                      eor r1, r1, r0
005049b4  01 10 c2 e5                                      strb r1, [r2, #1]
005049b8  01 00 53 e5                                      ldrb r0, [r3, #-1]
005049bc  01 20 42 e2                                      sub r2, r2, #1
005049c0  00 10 21 e0                                      eor r1, r1, r0
005049c4  01 10 43 e5                                      strb r1, [r3, #-1]
005049c8  01 30 83 e2                                      add r3, r3, #1
005049cc  f1 ff ff 8a                                      bhi #0x504998
005049d0  05 00 a0 e1                                      mov r0, r5
005049d4  24 10 84 e2                                      add r1, r4, #0x24
005049d8  ac 51 fd eb                                      bl #0x459090
005049dc  01 30 a0 e3                                      mov r3, #1
005049e0  00 00 53 e3                                      cmp r3, #0
005049e4  04 30 8d e5                                      str r3, [sp, #4]
005049e8  0f 00 00 1a                                      bne #0x504a2c
005049ec  25 30 84 e2                                      add r3, r4, #0x25
005049f0  26 20 84 e2                                      add r2, r4, #0x26
005049f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005049f8  01 10 53 e5                                      ldrb r1, [r3, #-1]
005049fc  03 00 52 e1                                      cmp r2, r3
00504a00  01 10 20 e0                                      eor r1, r0, r1
00504a04  01 10 43 e5                                      strb r1, [r3, #-1]
00504a08  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504a0c  00 10 21 e0                                      eor r1, r1, r0
00504a10  01 10 c2 e5                                      strb r1, [r2, #1]
00504a14  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504a18  01 20 42 e2                                      sub r2, r2, #1
00504a1c  00 10 21 e0                                      eor r1, r1, r0
00504a20  01 10 43 e5                                      strb r1, [r3, #-1]
00504a24  01 30 83 e2                                      add r3, r3, #1
00504a28  f1 ff ff 8a                                      bhi #0x5049f4
00504a2c  05 00 a0 e1                                      mov r0, r5
00504a30  28 10 84 e2                                      add r1, r4, #0x28
00504a34  95 51 fd eb                                      bl #0x459090
00504a38  01 30 a0 e3                                      mov r3, #1
00504a3c  00 00 53 e3                                      cmp r3, #0
00504a40  04 30 8d e5                                      str r3, [sp, #4]
00504a44  0f 00 00 1a                                      bne #0x504a88
00504a48  2a 30 84 e2                                      add r3, r4, #0x2a
00504a4c  29 40 84 e2                                      add r4, r4, #0x29
00504a50  01 10 d3 e5                                      ldrb r1, [r3, #1]
00504a54  01 20 54 e5                                      ldrb r2, [r4, #-1]
00504a58  04 00 53 e1                                      cmp r3, r4
00504a5c  02 20 21 e0                                      eor r2, r1, r2
00504a60  01 20 44 e5                                      strb r2, [r4, #-1]
00504a64  01 10 d3 e5                                      ldrb r1, [r3, #1]
00504a68  01 20 22 e0                                      eor r2, r2, r1
00504a6c  01 20 c3 e5                                      strb r2, [r3, #1]
00504a70  01 10 54 e5                                      ldrb r1, [r4, #-1]
00504a74  01 30 43 e2                                      sub r3, r3, #1
00504a78  01 20 22 e0                                      eor r2, r2, r1
00504a7c  01 20 44 e5                                      strb r2, [r4, #-1]
00504a80  01 40 84 e2                                      add r4, r4, #1
00504a84  f1 ff ff 8a                                      bhi #0x504a50
00504a88  08 d0 8d e2                                      add sp, sp, #8
00504a8c  70 80 bd e8                                      pop {r4, r5, r6, pc}

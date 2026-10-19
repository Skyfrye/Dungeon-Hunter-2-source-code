; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c87cc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardStub
; alias: _ZN7Structs17v2QuestRewardStubD2Ev
; demangled: Structs::v2QuestRewardStub::~v2QuestRewardStub()
; decoder-mode: arm
004c87cc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c87d0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c87d4  10 40 2d e9                                      push {r4, lr}
004c87d8  03 30 8f e0                                      add r3, pc, r3
004c87dc  02 20 93 e7                                      ldr r2, [r3, r2]
004c87e0  00 40 a0 e1                                      mov r4, r0
004c87e4  08 20 82 e2                                      add r2, r2, #8
004c87e8  00 20 80 e5                                      str r2, [r0]
004c87ec  f3 ff ff eb                                      bl #0x4c87c0
004c87f0  04 00 a0 e1                                      mov r0, r4
004c87f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c87f8  b8 c2 4c 00 40 2e 00 00                          .byte 0xb8, 0xc2, 0x4c, 0x00, 0x40, 0x2e, 0x00, 0x00

; FUNCTION 0x004c8800, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2QuestRewardStub
; alias: _ZN7Structs17v2QuestRewardStubD1Ev
; demangled: Structs::v2QuestRewardStub::~v2QuestRewardStub()
; decoder-mode: arm
004c8800  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8804  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8808  10 40 2d e9                                      push {r4, lr}
004c880c  03 30 8f e0                                      add r3, pc, r3
004c8810  02 20 93 e7                                      ldr r2, [r3, r2]
004c8814  00 40 a0 e1                                      mov r4, r0
004c8818  08 20 82 e2                                      add r2, r2, #8
004c881c  00 20 80 e5                                      str r2, [r0]
004c8820  e6 ff ff eb                                      bl #0x4c87c0
004c8824  04 00 a0 e1                                      mov r0, r4
004c8828  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c882c  84 c2 4c 00 40 2e 00 00                          .byte 0x84, 0xc2, 0x4c, 0x00, 0x40, 0x2e, 0x00, 0x00

; FUNCTION 0x004c8834, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestRewardStub
; alias: _ZN7Structs17v2QuestRewardStub8finalizeEv
; demangled: Structs::v2QuestRewardStub::finalize()
; decoder-mode: arm
004c8834  e3 ff ff ea                                      b #0x4c87c8

; FUNCTION 0x004cd964, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestRewardStub
; alias: _ZN7Structs17v2QuestRewardStubD0Ev
; demangled: Structs::v2QuestRewardStub::~v2QuestRewardStub()
; decoder-mode: arm
004cd964  10 40 2d e9                                      push {r4, lr}
004cd968  00 40 a0 e1                                      mov r4, r0
004cd96c  a3 eb ff eb                                      bl #0x4c8800
004cd970  04 00 a0 e1                                      mov r0, r4
004cd974  b1 0a f9 eb                                      bl #0x310440
004cd978  04 00 a0 e1                                      mov r0, r4
004cd97c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0050589c, declared_size=212, range_size=212, mode=arm
; class-group: Structs::v2QuestRewardStub
; alias: _ZN7Structs17v2QuestRewardStub4readEP11IStreamBase
; demangled: Structs::v2QuestRewardStub::read(IStreamBase*)
; decoder-mode: arm
0050589c  30 40 2d e9                                      push {r4, r5, lr}
005058a0  00 40 a0 e1                                      mov r4, r0
005058a4  0c d0 4d e2                                      sub sp, sp, #0xc
005058a8  01 50 a0 e1                                      mov r5, r1
005058ac  d2 fe ff eb                                      bl #0x5053fc
005058b0  05 00 a0 e1                                      mov r0, r5
005058b4  08 10 84 e2                                      add r1, r4, #8
005058b8  f4 4d fd eb                                      bl #0x459090
005058bc  01 30 a0 e3                                      mov r3, #1
005058c0  00 00 53 e3                                      cmp r3, #0
005058c4  04 30 8d e5                                      str r3, [sp, #4]
005058c8  0f 00 00 1a                                      bne #0x50590c
005058cc  09 30 84 e2                                      add r3, r4, #9
005058d0  0a 20 84 e2                                      add r2, r4, #0xa
005058d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005058d8  01 10 53 e5                                      ldrb r1, [r3, #-1]
005058dc  02 00 53 e1                                      cmp r3, r2
005058e0  01 10 20 e0                                      eor r1, r0, r1
005058e4  01 10 43 e5                                      strb r1, [r3, #-1]
005058e8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005058ec  00 10 21 e0                                      eor r1, r1, r0
005058f0  01 10 c2 e5                                      strb r1, [r2, #1]
005058f4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005058f8  01 20 42 e2                                      sub r2, r2, #1
005058fc  00 10 21 e0                                      eor r1, r1, r0
00505900  01 10 43 e5                                      strb r1, [r3, #-1]
00505904  01 30 83 e2                                      add r3, r3, #1
00505908  f1 ff ff 3a                                      blo #0x5058d4
0050590c  05 00 a0 e1                                      mov r0, r5
00505910  0c 10 84 e2                                      add r1, r4, #0xc
00505914  dd 4d fd eb                                      bl #0x459090
00505918  01 30 a0 e3                                      mov r3, #1
0050591c  00 00 53 e3                                      cmp r3, #0
00505920  04 30 8d e5                                      str r3, [sp, #4]
00505924  0f 00 00 1a                                      bne #0x505968
00505928  0e 30 84 e2                                      add r3, r4, #0xe
0050592c  0d 40 84 e2                                      add r4, r4, #0xd
00505930  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505934  01 20 54 e5                                      ldrb r2, [r4, #-1]
00505938  04 00 53 e1                                      cmp r3, r4
0050593c  02 20 21 e0                                      eor r2, r1, r2
00505940  01 20 44 e5                                      strb r2, [r4, #-1]
00505944  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505948  01 20 22 e0                                      eor r2, r2, r1
0050594c  01 20 c3 e5                                      strb r2, [r3, #1]
00505950  01 10 54 e5                                      ldrb r1, [r4, #-1]
00505954  01 30 43 e2                                      sub r3, r3, #1
00505958  01 20 22 e0                                      eor r2, r2, r1
0050595c  01 20 44 e5                                      strb r2, [r4, #-1]
00505960  01 40 84 e2                                      add r4, r4, #1
00505964  f1 ff ff 8a                                      bhi #0x505930
00505968  0c d0 8d e2                                      add sp, sp, #0xc
0050596c  30 80 bd e8                                      pop {r4, r5, pc}

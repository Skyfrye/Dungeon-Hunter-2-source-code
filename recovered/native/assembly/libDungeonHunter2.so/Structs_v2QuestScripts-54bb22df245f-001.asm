; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d0238, declared_size=404, range_size=404, mode=arm
; class-group: Structs::v2QuestScripts
; alias: _ZN7Structs14v2QuestScripts8finalizeEv
; demangled: Structs::v2QuestScripts::finalize()
; decoder-mode: arm
004d0238  10 40 2d e9                                      push {r4, lr}
004d023c  00 40 a0 e1                                      mov r4, r0
004d0240  08 00 90 e5                                      ldr r0, [r0, #8]
004d0244  00 00 50 e3                                      cmp r0, #0
004d0248  03 00 00 0a                                      beq #0x4d025c
004d024c  7b 00 f9 eb                                      bl #0x310440
004d0250  00 30 a0 e3                                      mov r3, #0
004d0254  04 30 84 e5                                      str r3, [r4, #4]
004d0258  08 30 84 e5                                      str r3, [r4, #8]
004d025c  10 00 94 e5                                      ldr r0, [r4, #0x10]
004d0260  00 00 50 e3                                      cmp r0, #0
004d0264  03 00 00 0a                                      beq #0x4d0278
004d0268  74 00 f9 eb                                      bl #0x310440
004d026c  00 30 a0 e3                                      mov r3, #0
004d0270  0c 30 84 e5                                      str r3, [r4, #0xc]
004d0274  10 30 84 e5                                      str r3, [r4, #0x10]
004d0278  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d027c  00 00 50 e3                                      cmp r0, #0
004d0280  03 00 00 0a                                      beq #0x4d0294
004d0284  6d 00 f9 eb                                      bl #0x310440
004d0288  00 30 a0 e3                                      mov r3, #0
004d028c  14 30 84 e5                                      str r3, [r4, #0x14]
004d0290  18 30 84 e5                                      str r3, [r4, #0x18]
004d0294  20 00 94 e5                                      ldr r0, [r4, #0x20]
004d0298  00 00 50 e3                                      cmp r0, #0
004d029c  03 00 00 0a                                      beq #0x4d02b0
004d02a0  66 00 f9 eb                                      bl #0x310440
004d02a4  00 30 a0 e3                                      mov r3, #0
004d02a8  1c 30 84 e5                                      str r3, [r4, #0x1c]
004d02ac  20 30 84 e5                                      str r3, [r4, #0x20]
004d02b0  28 00 94 e5                                      ldr r0, [r4, #0x28]
004d02b4  00 00 50 e3                                      cmp r0, #0
004d02b8  03 00 00 0a                                      beq #0x4d02cc
004d02bc  5f 00 f9 eb                                      bl #0x310440
004d02c0  00 30 a0 e3                                      mov r3, #0
004d02c4  24 30 84 e5                                      str r3, [r4, #0x24]
004d02c8  28 30 84 e5                                      str r3, [r4, #0x28]
004d02cc  30 00 94 e5                                      ldr r0, [r4, #0x30]
004d02d0  00 00 50 e3                                      cmp r0, #0
004d02d4  03 00 00 0a                                      beq #0x4d02e8
004d02d8  58 00 f9 eb                                      bl #0x310440
004d02dc  00 30 a0 e3                                      mov r3, #0
004d02e0  2c 30 84 e5                                      str r3, [r4, #0x2c]
004d02e4  30 30 84 e5                                      str r3, [r4, #0x30]
004d02e8  38 00 94 e5                                      ldr r0, [r4, #0x38]
004d02ec  00 00 50 e3                                      cmp r0, #0
004d02f0  03 00 00 0a                                      beq #0x4d0304
004d02f4  51 00 f9 eb                                      bl #0x310440
004d02f8  00 30 a0 e3                                      mov r3, #0
004d02fc  34 30 84 e5                                      str r3, [r4, #0x34]
004d0300  38 30 84 e5                                      str r3, [r4, #0x38]
004d0304  40 00 94 e5                                      ldr r0, [r4, #0x40]
004d0308  00 00 50 e3                                      cmp r0, #0
004d030c  03 00 00 0a                                      beq #0x4d0320
004d0310  4a 00 f9 eb                                      bl #0x310440
004d0314  00 30 a0 e3                                      mov r3, #0
004d0318  3c 30 84 e5                                      str r3, [r4, #0x3c]
004d031c  40 30 84 e5                                      str r3, [r4, #0x40]
004d0320  48 00 94 e5                                      ldr r0, [r4, #0x48]
004d0324  00 00 50 e3                                      cmp r0, #0
004d0328  03 00 00 0a                                      beq #0x4d033c
004d032c  43 00 f9 eb                                      bl #0x310440
004d0330  00 30 a0 e3                                      mov r3, #0
004d0334  44 30 84 e5                                      str r3, [r4, #0x44]
004d0338  48 30 84 e5                                      str r3, [r4, #0x48]
004d033c  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d0340  00 00 50 e3                                      cmp r0, #0
004d0344  03 00 00 0a                                      beq #0x4d0358
004d0348  3c 00 f9 eb                                      bl #0x310440
004d034c  00 30 a0 e3                                      mov r3, #0
004d0350  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d0354  50 30 84 e5                                      str r3, [r4, #0x50]
004d0358  58 00 94 e5                                      ldr r0, [r4, #0x58]
004d035c  00 00 50 e3                                      cmp r0, #0
004d0360  03 00 00 0a                                      beq #0x4d0374
004d0364  35 00 f9 eb                                      bl #0x310440
004d0368  00 30 a0 e3                                      mov r3, #0
004d036c  54 30 84 e5                                      str r3, [r4, #0x54]
004d0370  58 30 84 e5                                      str r3, [r4, #0x58]
004d0374  60 00 94 e5                                      ldr r0, [r4, #0x60]
004d0378  00 00 50 e3                                      cmp r0, #0
004d037c  03 00 00 0a                                      beq #0x4d0390
004d0380  2e 00 f9 eb                                      bl #0x310440
004d0384  00 30 a0 e3                                      mov r3, #0
004d0388  5c 30 84 e5                                      str r3, [r4, #0x5c]
004d038c  60 30 84 e5                                      str r3, [r4, #0x60]
004d0390  68 00 94 e5                                      ldr r0, [r4, #0x68]
004d0394  00 00 50 e3                                      cmp r0, #0
004d0398  03 00 00 0a                                      beq #0x4d03ac
004d039c  27 00 f9 eb                                      bl #0x310440
004d03a0  00 30 a0 e3                                      mov r3, #0
004d03a4  64 30 84 e5                                      str r3, [r4, #0x64]
004d03a8  68 30 84 e5                                      str r3, [r4, #0x68]
004d03ac  70 00 94 e5                                      ldr r0, [r4, #0x70]
004d03b0  00 00 50 e3                                      cmp r0, #0
004d03b4  03 00 00 0a                                      beq #0x4d03c8
004d03b8  20 00 f9 eb                                      bl #0x310440
004d03bc  00 30 a0 e3                                      mov r3, #0
004d03c0  6c 30 84 e5                                      str r3, [r4, #0x6c]
004d03c4  70 30 84 e5                                      str r3, [r4, #0x70]
004d03c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d03cc, declared_size=272, range_size=272, mode=arm
; class-group: Structs::v2QuestScripts
; alias: _ZN7Structs14v2QuestScriptsD1Ev
; demangled: Structs::v2QuestScripts::~v2QuestScripts()
; decoder-mode: arm
004d03cc  10 40 2d e9                                      push {r4, lr}
004d03d0  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
004d03d4  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
004d03d8  00 40 a0 e1                                      mov r4, r0
004d03dc  03 30 8f e0                                      add r3, pc, r3
004d03e0  08 00 90 e5                                      ldr r0, [r0, #8]
004d03e4  02 20 93 e7                                      ldr r2, [r3, r2]
004d03e8  00 00 50 e3                                      cmp r0, #0
004d03ec  08 20 82 e2                                      add r2, r2, #8
004d03f0  00 20 84 e5                                      str r2, [r4]
004d03f4  00 00 00 0a                                      beq #0x4d03fc
004d03f8  10 00 f9 eb                                      bl #0x310440
004d03fc  10 00 94 e5                                      ldr r0, [r4, #0x10]
004d0400  00 00 50 e3                                      cmp r0, #0
004d0404  00 00 00 0a                                      beq #0x4d040c
004d0408  0c 00 f9 eb                                      bl #0x310440
004d040c  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d0410  00 00 50 e3                                      cmp r0, #0
004d0414  00 00 00 0a                                      beq #0x4d041c
004d0418  08 00 f9 eb                                      bl #0x310440
004d041c  20 00 94 e5                                      ldr r0, [r4, #0x20]
004d0420  00 00 50 e3                                      cmp r0, #0
004d0424  00 00 00 0a                                      beq #0x4d042c
004d0428  04 00 f9 eb                                      bl #0x310440
004d042c  28 00 94 e5                                      ldr r0, [r4, #0x28]
004d0430  00 00 50 e3                                      cmp r0, #0
004d0434  00 00 00 0a                                      beq #0x4d043c
004d0438  00 00 f9 eb                                      bl #0x310440
004d043c  30 00 94 e5                                      ldr r0, [r4, #0x30]
004d0440  00 00 50 e3                                      cmp r0, #0
004d0444  00 00 00 0a                                      beq #0x4d044c
004d0448  fc ff f8 eb                                      bl #0x310440
004d044c  38 00 94 e5                                      ldr r0, [r4, #0x38]
004d0450  00 00 50 e3                                      cmp r0, #0
004d0454  00 00 00 0a                                      beq #0x4d045c
004d0458  f8 ff f8 eb                                      bl #0x310440
004d045c  40 00 94 e5                                      ldr r0, [r4, #0x40]
004d0460  00 00 50 e3                                      cmp r0, #0
004d0464  00 00 00 0a                                      beq #0x4d046c
004d0468  f4 ff f8 eb                                      bl #0x310440
004d046c  48 00 94 e5                                      ldr r0, [r4, #0x48]
004d0470  00 00 50 e3                                      cmp r0, #0
004d0474  00 00 00 0a                                      beq #0x4d047c
004d0478  f0 ff f8 eb                                      bl #0x310440
004d047c  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d0480  00 00 50 e3                                      cmp r0, #0
004d0484  00 00 00 0a                                      beq #0x4d048c
004d0488  ec ff f8 eb                                      bl #0x310440
004d048c  58 00 94 e5                                      ldr r0, [r4, #0x58]
004d0490  00 00 50 e3                                      cmp r0, #0
004d0494  00 00 00 0a                                      beq #0x4d049c
004d0498  e8 ff f8 eb                                      bl #0x310440
004d049c  60 00 94 e5                                      ldr r0, [r4, #0x60]
004d04a0  00 00 50 e3                                      cmp r0, #0
004d04a4  00 00 00 0a                                      beq #0x4d04ac
004d04a8  e4 ff f8 eb                                      bl #0x310440
004d04ac  68 00 94 e5                                      ldr r0, [r4, #0x68]
004d04b0  00 00 50 e3                                      cmp r0, #0
004d04b4  00 00 00 0a                                      beq #0x4d04bc
004d04b8  e0 ff f8 eb                                      bl #0x310440
004d04bc  70 00 94 e5                                      ldr r0, [r4, #0x70]
004d04c0  00 00 50 e3                                      cmp r0, #0
004d04c4  00 00 00 0a                                      beq #0x4d04cc
004d04c8  dc ff f8 eb                                      bl #0x310440
004d04cc  04 00 a0 e1                                      mov r0, r4
004d04d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d04d4  b4 46 4c 00 38 36 00 00                          .byte 0xb4, 0x46, 0x4c, 0x00, 0x38, 0x36, 0x00, 0x00

; FUNCTION 0x004d0888, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestScripts
; alias: _ZN7Structs14v2QuestScriptsD0Ev
; demangled: Structs::v2QuestScripts::~v2QuestScripts()
; decoder-mode: arm
004d0888  10 40 2d e9                                      push {r4, lr}
004d088c  00 40 a0 e1                                      mov r4, r0
004d0890  cd fe ff eb                                      bl #0x4d03cc
004d0894  04 00 a0 e1                                      mov r0, r4
004d0898  e8 fe f8 eb                                      bl #0x310440
004d089c  04 00 a0 e1                                      mov r0, r4
004d08a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d08a4, declared_size=272, range_size=272, mode=arm
; class-group: Structs::v2QuestScripts
; alias: _ZN7Structs14v2QuestScriptsD2Ev
; demangled: Structs::v2QuestScripts::~v2QuestScripts()
; decoder-mode: arm
004d08a4  10 40 2d e9                                      push {r4, lr}
004d08a8  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
004d08ac  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
004d08b0  00 40 a0 e1                                      mov r4, r0
004d08b4  03 30 8f e0                                      add r3, pc, r3
004d08b8  08 00 90 e5                                      ldr r0, [r0, #8]
004d08bc  02 20 93 e7                                      ldr r2, [r3, r2]
004d08c0  00 00 50 e3                                      cmp r0, #0
004d08c4  08 20 82 e2                                      add r2, r2, #8
004d08c8  00 20 84 e5                                      str r2, [r4]
004d08cc  00 00 00 0a                                      beq #0x4d08d4
004d08d0  da fe f8 eb                                      bl #0x310440
004d08d4  10 00 94 e5                                      ldr r0, [r4, #0x10]
004d08d8  00 00 50 e3                                      cmp r0, #0
004d08dc  00 00 00 0a                                      beq #0x4d08e4
004d08e0  d6 fe f8 eb                                      bl #0x310440
004d08e4  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d08e8  00 00 50 e3                                      cmp r0, #0
004d08ec  00 00 00 0a                                      beq #0x4d08f4
004d08f0  d2 fe f8 eb                                      bl #0x310440
004d08f4  20 00 94 e5                                      ldr r0, [r4, #0x20]
004d08f8  00 00 50 e3                                      cmp r0, #0
004d08fc  00 00 00 0a                                      beq #0x4d0904
004d0900  ce fe f8 eb                                      bl #0x310440
004d0904  28 00 94 e5                                      ldr r0, [r4, #0x28]
004d0908  00 00 50 e3                                      cmp r0, #0
004d090c  00 00 00 0a                                      beq #0x4d0914
004d0910  ca fe f8 eb                                      bl #0x310440
004d0914  30 00 94 e5                                      ldr r0, [r4, #0x30]
004d0918  00 00 50 e3                                      cmp r0, #0
004d091c  00 00 00 0a                                      beq #0x4d0924
004d0920  c6 fe f8 eb                                      bl #0x310440
004d0924  38 00 94 e5                                      ldr r0, [r4, #0x38]
004d0928  00 00 50 e3                                      cmp r0, #0
004d092c  00 00 00 0a                                      beq #0x4d0934
004d0930  c2 fe f8 eb                                      bl #0x310440
004d0934  40 00 94 e5                                      ldr r0, [r4, #0x40]
004d0938  00 00 50 e3                                      cmp r0, #0
004d093c  00 00 00 0a                                      beq #0x4d0944
004d0940  be fe f8 eb                                      bl #0x310440
004d0944  48 00 94 e5                                      ldr r0, [r4, #0x48]
004d0948  00 00 50 e3                                      cmp r0, #0
004d094c  00 00 00 0a                                      beq #0x4d0954
004d0950  ba fe f8 eb                                      bl #0x310440
004d0954  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d0958  00 00 50 e3                                      cmp r0, #0
004d095c  00 00 00 0a                                      beq #0x4d0964
004d0960  b6 fe f8 eb                                      bl #0x310440
004d0964  58 00 94 e5                                      ldr r0, [r4, #0x58]
004d0968  00 00 50 e3                                      cmp r0, #0
004d096c  00 00 00 0a                                      beq #0x4d0974
004d0970  b2 fe f8 eb                                      bl #0x310440
004d0974  60 00 94 e5                                      ldr r0, [r4, #0x60]
004d0978  00 00 50 e3                                      cmp r0, #0
004d097c  00 00 00 0a                                      beq #0x4d0984
004d0980  ae fe f8 eb                                      bl #0x310440
004d0984  68 00 94 e5                                      ldr r0, [r4, #0x68]
004d0988  00 00 50 e3                                      cmp r0, #0
004d098c  00 00 00 0a                                      beq #0x4d0994
004d0990  aa fe f8 eb                                      bl #0x310440
004d0994  70 00 94 e5                                      ldr r0, [r4, #0x70]
004d0998  00 00 50 e3                                      cmp r0, #0
004d099c  00 00 00 0a                                      beq #0x4d09a4
004d09a0  a6 fe f8 eb                                      bl #0x310440
004d09a4  04 00 a0 e1                                      mov r0, r4
004d09a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d09ac  dc 41 4c 00 38 36 00 00                          .byte 0xdc, 0x41, 0x4c, 0x00, 0x38, 0x36, 0x00, 0x00

; FUNCTION 0x004dd5a8, declared_size=2320, range_size=2320, mode=arm
; class-group: Structs::v2QuestScripts
; alias: _ZN7Structs14v2QuestScripts4readEP11IStreamBase
; demangled: Structs::v2QuestScripts::read(IStreamBase*)
; decoder-mode: arm
004dd5a8  70 40 2d e9                                      push {r4, r5, r6, lr}
004dd5ac  00 40 a0 e1                                      mov r4, r0
004dd5b0  08 d0 4d e2                                      sub sp, sp, #8
004dd5b4  01 00 a0 e1                                      mov r0, r1
004dd5b8  01 50 a0 e1                                      mov r5, r1
004dd5bc  04 10 84 e2                                      add r1, r4, #4
004dd5c0  f6 06 fc eb                                      bl #0x3df1a0
004dd5c4  01 30 a0 e3                                      mov r3, #1
004dd5c8  00 00 53 e3                                      cmp r3, #0
004dd5cc  04 30 8d e5                                      str r3, [sp, #4]
004dd5d0  0f 00 00 1a                                      bne #0x4dd614
004dd5d4  05 30 84 e2                                      add r3, r4, #5
004dd5d8  06 20 84 e2                                      add r2, r4, #6
004dd5dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd5e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd5e4  02 00 53 e1                                      cmp r3, r2
004dd5e8  01 10 20 e0                                      eor r1, r0, r1
004dd5ec  01 10 43 e5                                      strb r1, [r3, #-1]
004dd5f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd5f4  00 10 21 e0                                      eor r1, r1, r0
004dd5f8  01 10 c2 e5                                      strb r1, [r2, #1]
004dd5fc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd600  01 20 42 e2                                      sub r2, r2, #1
004dd604  00 10 21 e0                                      eor r1, r1, r0
004dd608  01 10 43 e5                                      strb r1, [r3, #-1]
004dd60c  01 30 83 e2                                      add r3, r3, #1
004dd610  f1 ff ff 3a                                      blo #0x4dd5dc
004dd614  08 00 94 e5                                      ldr r0, [r4, #8]
004dd618  00 00 50 e3                                      cmp r0, #0
004dd61c  00 00 00 0a                                      beq #0x4dd624
004dd620  86 cb f8 eb                                      bl #0x310440
004dd624  04 00 94 e5                                      ldr r0, [r4, #4]
004dd628  01 10 a0 e3                                      mov r1, #1
004dd62c  00 60 a0 e3                                      mov r6, #0
004dd630  01 00 80 e0                                      add r0, r0, r1
004dd634  cc cb f8 eb                                      bl #0x31056c
004dd638  04 20 94 e5                                      ldr r2, [r4, #4]
004dd63c  00 10 a0 e1                                      mov r1, r0
004dd640  08 00 84 e5                                      str r0, [r4, #8]
004dd644  06 30 a0 e1                                      mov r3, r6
004dd648  05 00 a0 e1                                      mov r0, r5
004dd64c  80 e7 f8 eb                                      bl #0x317454
004dd650  04 30 94 e5                                      ldr r3, [r4, #4]
004dd654  08 20 94 e5                                      ldr r2, [r4, #8]
004dd658  05 00 a0 e1                                      mov r0, r5
004dd65c  0c 10 84 e2                                      add r1, r4, #0xc
004dd660  03 60 c2 e7                                      strb r6, [r2, r3]
004dd664  cd 06 fc eb                                      bl #0x3df1a0
004dd668  01 30 a0 e3                                      mov r3, #1
004dd66c  06 00 53 e1                                      cmp r3, r6
004dd670  04 30 8d e5                                      str r3, [sp, #4]
004dd674  0f 00 00 1a                                      bne #0x4dd6b8
004dd678  0d 30 84 e2                                      add r3, r4, #0xd
004dd67c  0e 20 84 e2                                      add r2, r4, #0xe
004dd680  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd684  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd688  02 00 53 e1                                      cmp r3, r2
004dd68c  01 10 20 e0                                      eor r1, r0, r1
004dd690  01 10 43 e5                                      strb r1, [r3, #-1]
004dd694  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd698  00 10 21 e0                                      eor r1, r1, r0
004dd69c  01 10 c2 e5                                      strb r1, [r2, #1]
004dd6a0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd6a4  01 20 42 e2                                      sub r2, r2, #1
004dd6a8  00 10 21 e0                                      eor r1, r1, r0
004dd6ac  01 10 43 e5                                      strb r1, [r3, #-1]
004dd6b0  01 30 83 e2                                      add r3, r3, #1
004dd6b4  f1 ff ff 3a                                      blo #0x4dd680
004dd6b8  10 00 94 e5                                      ldr r0, [r4, #0x10]
004dd6bc  00 00 50 e3                                      cmp r0, #0
004dd6c0  00 00 00 0a                                      beq #0x4dd6c8
004dd6c4  5d cb f8 eb                                      bl #0x310440
004dd6c8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004dd6cc  01 10 a0 e3                                      mov r1, #1
004dd6d0  00 60 a0 e3                                      mov r6, #0
004dd6d4  01 00 80 e0                                      add r0, r0, r1
004dd6d8  a3 cb f8 eb                                      bl #0x31056c
004dd6dc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004dd6e0  00 10 a0 e1                                      mov r1, r0
004dd6e4  10 00 84 e5                                      str r0, [r4, #0x10]
004dd6e8  06 30 a0 e1                                      mov r3, r6
004dd6ec  05 00 a0 e1                                      mov r0, r5
004dd6f0  57 e7 f8 eb                                      bl #0x317454
004dd6f4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004dd6f8  10 20 94 e5                                      ldr r2, [r4, #0x10]
004dd6fc  05 00 a0 e1                                      mov r0, r5
004dd700  14 10 84 e2                                      add r1, r4, #0x14
004dd704  03 60 c2 e7                                      strb r6, [r2, r3]
004dd708  a4 06 fc eb                                      bl #0x3df1a0
004dd70c  01 30 a0 e3                                      mov r3, #1
004dd710  06 00 53 e1                                      cmp r3, r6
004dd714  04 30 8d e5                                      str r3, [sp, #4]
004dd718  0f 00 00 1a                                      bne #0x4dd75c
004dd71c  15 30 84 e2                                      add r3, r4, #0x15
004dd720  16 20 84 e2                                      add r2, r4, #0x16
004dd724  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd728  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd72c  02 00 53 e1                                      cmp r3, r2
004dd730  01 10 20 e0                                      eor r1, r0, r1
004dd734  01 10 43 e5                                      strb r1, [r3, #-1]
004dd738  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd73c  00 10 21 e0                                      eor r1, r1, r0
004dd740  01 10 c2 e5                                      strb r1, [r2, #1]
004dd744  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd748  01 20 42 e2                                      sub r2, r2, #1
004dd74c  00 10 21 e0                                      eor r1, r1, r0
004dd750  01 10 43 e5                                      strb r1, [r3, #-1]
004dd754  01 30 83 e2                                      add r3, r3, #1
004dd758  f1 ff ff 3a                                      blo #0x4dd724
004dd75c  18 00 94 e5                                      ldr r0, [r4, #0x18]
004dd760  00 00 50 e3                                      cmp r0, #0
004dd764  00 00 00 0a                                      beq #0x4dd76c
004dd768  34 cb f8 eb                                      bl #0x310440
004dd76c  14 00 94 e5                                      ldr r0, [r4, #0x14]
004dd770  01 10 a0 e3                                      mov r1, #1
004dd774  00 60 a0 e3                                      mov r6, #0
004dd778  01 00 80 e0                                      add r0, r0, r1
004dd77c  7a cb f8 eb                                      bl #0x31056c
004dd780  14 20 94 e5                                      ldr r2, [r4, #0x14]
004dd784  00 10 a0 e1                                      mov r1, r0
004dd788  18 00 84 e5                                      str r0, [r4, #0x18]
004dd78c  06 30 a0 e1                                      mov r3, r6
004dd790  05 00 a0 e1                                      mov r0, r5
004dd794  2e e7 f8 eb                                      bl #0x317454
004dd798  14 30 94 e5                                      ldr r3, [r4, #0x14]
004dd79c  18 20 94 e5                                      ldr r2, [r4, #0x18]
004dd7a0  05 00 a0 e1                                      mov r0, r5
004dd7a4  1c 10 84 e2                                      add r1, r4, #0x1c
004dd7a8  03 60 c2 e7                                      strb r6, [r2, r3]
004dd7ac  7b 06 fc eb                                      bl #0x3df1a0
004dd7b0  01 30 a0 e3                                      mov r3, #1
004dd7b4  06 00 53 e1                                      cmp r3, r6
004dd7b8  04 30 8d e5                                      str r3, [sp, #4]
004dd7bc  0f 00 00 1a                                      bne #0x4dd800
004dd7c0  1d 30 84 e2                                      add r3, r4, #0x1d
004dd7c4  1e 20 84 e2                                      add r2, r4, #0x1e
004dd7c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd7cc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd7d0  02 00 53 e1                                      cmp r3, r2
004dd7d4  01 10 20 e0                                      eor r1, r0, r1
004dd7d8  01 10 43 e5                                      strb r1, [r3, #-1]
004dd7dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd7e0  00 10 21 e0                                      eor r1, r1, r0
004dd7e4  01 10 c2 e5                                      strb r1, [r2, #1]
004dd7e8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd7ec  01 20 42 e2                                      sub r2, r2, #1
004dd7f0  00 10 21 e0                                      eor r1, r1, r0
004dd7f4  01 10 43 e5                                      strb r1, [r3, #-1]
004dd7f8  01 30 83 e2                                      add r3, r3, #1
004dd7fc  f1 ff ff 3a                                      blo #0x4dd7c8
004dd800  20 00 94 e5                                      ldr r0, [r4, #0x20]
004dd804  00 00 50 e3                                      cmp r0, #0
004dd808  00 00 00 0a                                      beq #0x4dd810
004dd80c  0b cb f8 eb                                      bl #0x310440
004dd810  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004dd814  01 10 a0 e3                                      mov r1, #1
004dd818  00 60 a0 e3                                      mov r6, #0
004dd81c  01 00 80 e0                                      add r0, r0, r1
004dd820  51 cb f8 eb                                      bl #0x31056c
004dd824  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
004dd828  00 10 a0 e1                                      mov r1, r0
004dd82c  20 00 84 e5                                      str r0, [r4, #0x20]
004dd830  06 30 a0 e1                                      mov r3, r6
004dd834  05 00 a0 e1                                      mov r0, r5
004dd838  05 e7 f8 eb                                      bl #0x317454
004dd83c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
004dd840  20 20 94 e5                                      ldr r2, [r4, #0x20]
004dd844  05 00 a0 e1                                      mov r0, r5
004dd848  24 10 84 e2                                      add r1, r4, #0x24
004dd84c  03 60 c2 e7                                      strb r6, [r2, r3]
004dd850  52 06 fc eb                                      bl #0x3df1a0
004dd854  01 30 a0 e3                                      mov r3, #1
004dd858  06 00 53 e1                                      cmp r3, r6
004dd85c  04 30 8d e5                                      str r3, [sp, #4]
004dd860  0f 00 00 1a                                      bne #0x4dd8a4
004dd864  25 30 84 e2                                      add r3, r4, #0x25
004dd868  26 20 84 e2                                      add r2, r4, #0x26
004dd86c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd870  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd874  02 00 53 e1                                      cmp r3, r2
004dd878  01 10 20 e0                                      eor r1, r0, r1
004dd87c  01 10 43 e5                                      strb r1, [r3, #-1]
004dd880  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd884  00 10 21 e0                                      eor r1, r1, r0
004dd888  01 10 c2 e5                                      strb r1, [r2, #1]
004dd88c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd890  01 20 42 e2                                      sub r2, r2, #1
004dd894  00 10 21 e0                                      eor r1, r1, r0
004dd898  01 10 43 e5                                      strb r1, [r3, #-1]
004dd89c  01 30 83 e2                                      add r3, r3, #1
004dd8a0  f1 ff ff 3a                                      blo #0x4dd86c
004dd8a4  28 00 94 e5                                      ldr r0, [r4, #0x28]
004dd8a8  00 00 50 e3                                      cmp r0, #0
004dd8ac  00 00 00 0a                                      beq #0x4dd8b4
004dd8b0  e2 ca f8 eb                                      bl #0x310440
004dd8b4  24 00 94 e5                                      ldr r0, [r4, #0x24]
004dd8b8  01 10 a0 e3                                      mov r1, #1
004dd8bc  00 60 a0 e3                                      mov r6, #0
004dd8c0  01 00 80 e0                                      add r0, r0, r1
004dd8c4  28 cb f8 eb                                      bl #0x31056c
004dd8c8  24 20 94 e5                                      ldr r2, [r4, #0x24]
004dd8cc  00 10 a0 e1                                      mov r1, r0
004dd8d0  28 00 84 e5                                      str r0, [r4, #0x28]
004dd8d4  06 30 a0 e1                                      mov r3, r6
004dd8d8  05 00 a0 e1                                      mov r0, r5
004dd8dc  dc e6 f8 eb                                      bl #0x317454
004dd8e0  24 30 94 e5                                      ldr r3, [r4, #0x24]
004dd8e4  28 20 94 e5                                      ldr r2, [r4, #0x28]
004dd8e8  05 00 a0 e1                                      mov r0, r5
004dd8ec  2c 10 84 e2                                      add r1, r4, #0x2c
004dd8f0  03 60 c2 e7                                      strb r6, [r2, r3]
004dd8f4  29 06 fc eb                                      bl #0x3df1a0
004dd8f8  01 30 a0 e3                                      mov r3, #1
004dd8fc  06 00 53 e1                                      cmp r3, r6
004dd900  04 30 8d e5                                      str r3, [sp, #4]
004dd904  0f 00 00 1a                                      bne #0x4dd948
004dd908  2d 30 84 e2                                      add r3, r4, #0x2d
004dd90c  2e 20 84 e2                                      add r2, r4, #0x2e
004dd910  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd914  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd918  02 00 53 e1                                      cmp r3, r2
004dd91c  01 10 20 e0                                      eor r1, r0, r1
004dd920  01 10 43 e5                                      strb r1, [r3, #-1]
004dd924  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd928  00 10 21 e0                                      eor r1, r1, r0
004dd92c  01 10 c2 e5                                      strb r1, [r2, #1]
004dd930  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd934  01 20 42 e2                                      sub r2, r2, #1
004dd938  00 10 21 e0                                      eor r1, r1, r0
004dd93c  01 10 43 e5                                      strb r1, [r3, #-1]
004dd940  01 30 83 e2                                      add r3, r3, #1
004dd944  f1 ff ff 3a                                      blo #0x4dd910
004dd948  30 00 94 e5                                      ldr r0, [r4, #0x30]
004dd94c  00 00 50 e3                                      cmp r0, #0
004dd950  00 00 00 0a                                      beq #0x4dd958
004dd954  b9 ca f8 eb                                      bl #0x310440
004dd958  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
004dd95c  01 10 a0 e3                                      mov r1, #1
004dd960  00 60 a0 e3                                      mov r6, #0
004dd964  01 00 80 e0                                      add r0, r0, r1
004dd968  ff ca f8 eb                                      bl #0x31056c
004dd96c  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
004dd970  00 10 a0 e1                                      mov r1, r0
004dd974  30 00 84 e5                                      str r0, [r4, #0x30]
004dd978  06 30 a0 e1                                      mov r3, r6
004dd97c  05 00 a0 e1                                      mov r0, r5
004dd980  b3 e6 f8 eb                                      bl #0x317454
004dd984  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
004dd988  30 20 94 e5                                      ldr r2, [r4, #0x30]
004dd98c  05 00 a0 e1                                      mov r0, r5
004dd990  34 10 84 e2                                      add r1, r4, #0x34
004dd994  03 60 c2 e7                                      strb r6, [r2, r3]
004dd998  00 06 fc eb                                      bl #0x3df1a0
004dd99c  01 30 a0 e3                                      mov r3, #1
004dd9a0  06 00 53 e1                                      cmp r3, r6
004dd9a4  04 30 8d e5                                      str r3, [sp, #4]
004dd9a8  0f 00 00 1a                                      bne #0x4dd9ec
004dd9ac  35 30 84 e2                                      add r3, r4, #0x35
004dd9b0  36 20 84 e2                                      add r2, r4, #0x36
004dd9b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd9b8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd9bc  02 00 53 e1                                      cmp r3, r2
004dd9c0  01 10 20 e0                                      eor r1, r0, r1
004dd9c4  01 10 43 e5                                      strb r1, [r3, #-1]
004dd9c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd9cc  00 10 21 e0                                      eor r1, r1, r0
004dd9d0  01 10 c2 e5                                      strb r1, [r2, #1]
004dd9d4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd9d8  01 20 42 e2                                      sub r2, r2, #1
004dd9dc  00 10 21 e0                                      eor r1, r1, r0
004dd9e0  01 10 43 e5                                      strb r1, [r3, #-1]
004dd9e4  01 30 83 e2                                      add r3, r3, #1
004dd9e8  f1 ff ff 3a                                      blo #0x4dd9b4
004dd9ec  38 00 94 e5                                      ldr r0, [r4, #0x38]
004dd9f0  00 00 50 e3                                      cmp r0, #0
004dd9f4  00 00 00 0a                                      beq #0x4dd9fc
004dd9f8  90 ca f8 eb                                      bl #0x310440
004dd9fc  34 00 94 e5                                      ldr r0, [r4, #0x34]
004dda00  01 10 a0 e3                                      mov r1, #1
004dda04  00 60 a0 e3                                      mov r6, #0
004dda08  01 00 80 e0                                      add r0, r0, r1
004dda0c  d6 ca f8 eb                                      bl #0x31056c
004dda10  34 20 94 e5                                      ldr r2, [r4, #0x34]
004dda14  00 10 a0 e1                                      mov r1, r0
004dda18  38 00 84 e5                                      str r0, [r4, #0x38]
004dda1c  06 30 a0 e1                                      mov r3, r6
004dda20  05 00 a0 e1                                      mov r0, r5
004dda24  8a e6 f8 eb                                      bl #0x317454
004dda28  34 30 94 e5                                      ldr r3, [r4, #0x34]
004dda2c  38 20 94 e5                                      ldr r2, [r4, #0x38]
004dda30  05 00 a0 e1                                      mov r0, r5
004dda34  3c 10 84 e2                                      add r1, r4, #0x3c
004dda38  03 60 c2 e7                                      strb r6, [r2, r3]
004dda3c  d7 05 fc eb                                      bl #0x3df1a0
004dda40  01 30 a0 e3                                      mov r3, #1
004dda44  06 00 53 e1                                      cmp r3, r6
004dda48  04 30 8d e5                                      str r3, [sp, #4]
004dda4c  0f 00 00 1a                                      bne #0x4dda90
004dda50  3d 30 84 e2                                      add r3, r4, #0x3d
004dda54  3e 20 84 e2                                      add r2, r4, #0x3e
004dda58  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dda5c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dda60  02 00 53 e1                                      cmp r3, r2
004dda64  01 10 20 e0                                      eor r1, r0, r1
004dda68  01 10 43 e5                                      strb r1, [r3, #-1]
004dda6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dda70  00 10 21 e0                                      eor r1, r1, r0
004dda74  01 10 c2 e5                                      strb r1, [r2, #1]
004dda78  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dda7c  01 20 42 e2                                      sub r2, r2, #1
004dda80  00 10 21 e0                                      eor r1, r1, r0
004dda84  01 10 43 e5                                      strb r1, [r3, #-1]
004dda88  01 30 83 e2                                      add r3, r3, #1
004dda8c  f1 ff ff 3a                                      blo #0x4dda58
004dda90  40 00 94 e5                                      ldr r0, [r4, #0x40]
004dda94  00 00 50 e3                                      cmp r0, #0
004dda98  00 00 00 0a                                      beq #0x4ddaa0
004dda9c  67 ca f8 eb                                      bl #0x310440
004ddaa0  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
004ddaa4  01 10 a0 e3                                      mov r1, #1
004ddaa8  00 60 a0 e3                                      mov r6, #0
004ddaac  01 00 80 e0                                      add r0, r0, r1
004ddab0  ad ca f8 eb                                      bl #0x31056c
004ddab4  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
004ddab8  00 10 a0 e1                                      mov r1, r0
004ddabc  40 00 84 e5                                      str r0, [r4, #0x40]
004ddac0  06 30 a0 e1                                      mov r3, r6
004ddac4  05 00 a0 e1                                      mov r0, r5
004ddac8  61 e6 f8 eb                                      bl #0x317454
004ddacc  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
004ddad0  40 20 94 e5                                      ldr r2, [r4, #0x40]
004ddad4  05 00 a0 e1                                      mov r0, r5
004ddad8  44 10 84 e2                                      add r1, r4, #0x44
004ddadc  03 60 c2 e7                                      strb r6, [r2, r3]
004ddae0  ae 05 fc eb                                      bl #0x3df1a0
004ddae4  01 30 a0 e3                                      mov r3, #1
004ddae8  06 00 53 e1                                      cmp r3, r6
004ddaec  04 30 8d e5                                      str r3, [sp, #4]
004ddaf0  0f 00 00 1a                                      bne #0x4ddb34
004ddaf4  45 30 84 e2                                      add r3, r4, #0x45
004ddaf8  46 20 84 e2                                      add r2, r4, #0x46
004ddafc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ddb00  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ddb04  02 00 53 e1                                      cmp r3, r2
004ddb08  01 10 20 e0                                      eor r1, r0, r1
004ddb0c  01 10 43 e5                                      strb r1, [r3, #-1]
004ddb10  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ddb14  00 10 21 e0                                      eor r1, r1, r0
004ddb18  01 10 c2 e5                                      strb r1, [r2, #1]
004ddb1c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ddb20  01 20 42 e2                                      sub r2, r2, #1
004ddb24  00 10 21 e0                                      eor r1, r1, r0
004ddb28  01 10 43 e5                                      strb r1, [r3, #-1]
004ddb2c  01 30 83 e2                                      add r3, r3, #1
004ddb30  f1 ff ff 3a                                      blo #0x4ddafc
004ddb34  48 00 94 e5                                      ldr r0, [r4, #0x48]
004ddb38  00 00 50 e3                                      cmp r0, #0
004ddb3c  00 00 00 0a                                      beq #0x4ddb44
004ddb40  3e ca f8 eb                                      bl #0x310440
004ddb44  44 00 94 e5                                      ldr r0, [r4, #0x44]
004ddb48  01 10 a0 e3                                      mov r1, #1
004ddb4c  00 60 a0 e3                                      mov r6, #0
004ddb50  01 00 80 e0                                      add r0, r0, r1
004ddb54  84 ca f8 eb                                      bl #0x31056c
004ddb58  44 20 94 e5                                      ldr r2, [r4, #0x44]
004ddb5c  00 10 a0 e1                                      mov r1, r0
004ddb60  48 00 84 e5                                      str r0, [r4, #0x48]
004ddb64  06 30 a0 e1                                      mov r3, r6
004ddb68  05 00 a0 e1                                      mov r0, r5
004ddb6c  38 e6 f8 eb                                      bl #0x317454
004ddb70  44 30 94 e5                                      ldr r3, [r4, #0x44]
004ddb74  48 20 94 e5                                      ldr r2, [r4, #0x48]
004ddb78  05 00 a0 e1                                      mov r0, r5
004ddb7c  4c 10 84 e2                                      add r1, r4, #0x4c
004ddb80  03 60 c2 e7                                      strb r6, [r2, r3]
004ddb84  85 05 fc eb                                      bl #0x3df1a0
004ddb88  01 30 a0 e3                                      mov r3, #1
004ddb8c  06 00 53 e1                                      cmp r3, r6
004ddb90  04 30 8d e5                                      str r3, [sp, #4]
004ddb94  0f 00 00 1a                                      bne #0x4ddbd8
004ddb98  4d 30 84 e2                                      add r3, r4, #0x4d
004ddb9c  4e 20 84 e2                                      add r2, r4, #0x4e
004ddba0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ddba4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ddba8  02 00 53 e1                                      cmp r3, r2
004ddbac  01 10 20 e0                                      eor r1, r0, r1
004ddbb0  01 10 43 e5                                      strb r1, [r3, #-1]
004ddbb4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ddbb8  00 10 21 e0                                      eor r1, r1, r0
004ddbbc  01 10 c2 e5                                      strb r1, [r2, #1]
004ddbc0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ddbc4  01 20 42 e2                                      sub r2, r2, #1
004ddbc8  00 10 21 e0                                      eor r1, r1, r0
004ddbcc  01 10 43 e5                                      strb r1, [r3, #-1]
004ddbd0  01 30 83 e2                                      add r3, r3, #1
004ddbd4  f1 ff ff 3a                                      blo #0x4ddba0
004ddbd8  50 00 94 e5                                      ldr r0, [r4, #0x50]
004ddbdc  00 00 50 e3                                      cmp r0, #0
004ddbe0  00 00 00 0a                                      beq #0x4ddbe8
004ddbe4  15 ca f8 eb                                      bl #0x310440
004ddbe8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004ddbec  01 10 a0 e3                                      mov r1, #1
004ddbf0  00 60 a0 e3                                      mov r6, #0
004ddbf4  01 00 80 e0                                      add r0, r0, r1
004ddbf8  5b ca f8 eb                                      bl #0x31056c
004ddbfc  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
004ddc00  00 10 a0 e1                                      mov r1, r0
004ddc04  50 00 84 e5                                      str r0, [r4, #0x50]
004ddc08  06 30 a0 e1                                      mov r3, r6
004ddc0c  05 00 a0 e1                                      mov r0, r5
004ddc10  0f e6 f8 eb                                      bl #0x317454
004ddc14  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
004ddc18  50 20 94 e5                                      ldr r2, [r4, #0x50]
004ddc1c  05 00 a0 e1                                      mov r0, r5
004ddc20  54 10 84 e2                                      add r1, r4, #0x54
004ddc24  03 60 c2 e7                                      strb r6, [r2, r3]
004ddc28  5c 05 fc eb                                      bl #0x3df1a0
004ddc2c  01 30 a0 e3                                      mov r3, #1
004ddc30  06 00 53 e1                                      cmp r3, r6
004ddc34  04 30 8d e5                                      str r3, [sp, #4]
004ddc38  0f 00 00 1a                                      bne #0x4ddc7c
004ddc3c  55 30 84 e2                                      add r3, r4, #0x55
004ddc40  56 20 84 e2                                      add r2, r4, #0x56
004ddc44  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ddc48  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ddc4c  02 00 53 e1                                      cmp r3, r2
004ddc50  01 10 20 e0                                      eor r1, r0, r1
004ddc54  01 10 43 e5                                      strb r1, [r3, #-1]
004ddc58  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ddc5c  00 10 21 e0                                      eor r1, r1, r0
004ddc60  01 10 c2 e5                                      strb r1, [r2, #1]
004ddc64  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ddc68  01 20 42 e2                                      sub r2, r2, #1
004ddc6c  00 10 21 e0                                      eor r1, r1, r0
004ddc70  01 10 43 e5                                      strb r1, [r3, #-1]
004ddc74  01 30 83 e2                                      add r3, r3, #1
004ddc78  f1 ff ff 3a                                      blo #0x4ddc44
004ddc7c  58 00 94 e5                                      ldr r0, [r4, #0x58]
004ddc80  00 00 50 e3                                      cmp r0, #0
004ddc84  00 00 00 0a                                      beq #0x4ddc8c
004ddc88  ec c9 f8 eb                                      bl #0x310440
004ddc8c  54 00 94 e5                                      ldr r0, [r4, #0x54]
004ddc90  01 10 a0 e3                                      mov r1, #1
004ddc94  00 60 a0 e3                                      mov r6, #0
004ddc98  01 00 80 e0                                      add r0, r0, r1
004ddc9c  32 ca f8 eb                                      bl #0x31056c
004ddca0  54 20 94 e5                                      ldr r2, [r4, #0x54]
004ddca4  00 10 a0 e1                                      mov r1, r0
004ddca8  58 00 84 e5                                      str r0, [r4, #0x58]
004ddcac  06 30 a0 e1                                      mov r3, r6
004ddcb0  05 00 a0 e1                                      mov r0, r5
004ddcb4  e6 e5 f8 eb                                      bl #0x317454
004ddcb8  54 30 94 e5                                      ldr r3, [r4, #0x54]
004ddcbc  58 20 94 e5                                      ldr r2, [r4, #0x58]
004ddcc0  05 00 a0 e1                                      mov r0, r5
004ddcc4  5c 10 84 e2                                      add r1, r4, #0x5c
004ddcc8  03 60 c2 e7                                      strb r6, [r2, r3]
004ddccc  33 05 fc eb                                      bl #0x3df1a0
004ddcd0  01 30 a0 e3                                      mov r3, #1
004ddcd4  06 00 53 e1                                      cmp r3, r6
004ddcd8  04 30 8d e5                                      str r3, [sp, #4]
004ddcdc  0f 00 00 1a                                      bne #0x4ddd20
004ddce0  5d 30 84 e2                                      add r3, r4, #0x5d
004ddce4  5e 20 84 e2                                      add r2, r4, #0x5e
004ddce8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ddcec  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ddcf0  02 00 53 e1                                      cmp r3, r2
004ddcf4  01 10 20 e0                                      eor r1, r0, r1
004ddcf8  01 10 43 e5                                      strb r1, [r3, #-1]
004ddcfc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ddd00  00 10 21 e0                                      eor r1, r1, r0
004ddd04  01 10 c2 e5                                      strb r1, [r2, #1]
004ddd08  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ddd0c  01 20 42 e2                                      sub r2, r2, #1
004ddd10  00 10 21 e0                                      eor r1, r1, r0
004ddd14  01 10 43 e5                                      strb r1, [r3, #-1]
004ddd18  01 30 83 e2                                      add r3, r3, #1
004ddd1c  f1 ff ff 3a                                      blo #0x4ddce8
004ddd20  60 00 94 e5                                      ldr r0, [r4, #0x60]
004ddd24  00 00 50 e3                                      cmp r0, #0
004ddd28  00 00 00 0a                                      beq #0x4ddd30
004ddd2c  c3 c9 f8 eb                                      bl #0x310440
004ddd30  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
004ddd34  01 10 a0 e3                                      mov r1, #1
004ddd38  00 60 a0 e3                                      mov r6, #0
004ddd3c  01 00 80 e0                                      add r0, r0, r1
004ddd40  09 ca f8 eb                                      bl #0x31056c
004ddd44  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
004ddd48  00 10 a0 e1                                      mov r1, r0
004ddd4c  60 00 84 e5                                      str r0, [r4, #0x60]
004ddd50  06 30 a0 e1                                      mov r3, r6
004ddd54  05 00 a0 e1                                      mov r0, r5
004ddd58  bd e5 f8 eb                                      bl #0x317454
004ddd5c  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
004ddd60  60 20 94 e5                                      ldr r2, [r4, #0x60]
004ddd64  05 00 a0 e1                                      mov r0, r5
004ddd68  64 10 84 e2                                      add r1, r4, #0x64
004ddd6c  03 60 c2 e7                                      strb r6, [r2, r3]
004ddd70  0a 05 fc eb                                      bl #0x3df1a0
004ddd74  01 30 a0 e3                                      mov r3, #1
004ddd78  06 00 53 e1                                      cmp r3, r6
004ddd7c  04 30 8d e5                                      str r3, [sp, #4]
004ddd80  0f 00 00 1a                                      bne #0x4dddc4
004ddd84  65 30 84 e2                                      add r3, r4, #0x65
004ddd88  66 20 84 e2                                      add r2, r4, #0x66
004ddd8c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ddd90  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ddd94  02 00 53 e1                                      cmp r3, r2
004ddd98  01 10 20 e0                                      eor r1, r0, r1
004ddd9c  01 10 43 e5                                      strb r1, [r3, #-1]
004ddda0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ddda4  00 10 21 e0                                      eor r1, r1, r0
004ddda8  01 10 c2 e5                                      strb r1, [r2, #1]
004dddac  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dddb0  01 20 42 e2                                      sub r2, r2, #1
004dddb4  00 10 21 e0                                      eor r1, r1, r0
004dddb8  01 10 43 e5                                      strb r1, [r3, #-1]
004dddbc  01 30 83 e2                                      add r3, r3, #1
004dddc0  f1 ff ff 3a                                      blo #0x4ddd8c
004dddc4  68 00 94 e5                                      ldr r0, [r4, #0x68]
004dddc8  00 00 50 e3                                      cmp r0, #0
004dddcc  00 00 00 0a                                      beq #0x4dddd4
004dddd0  9a c9 f8 eb                                      bl #0x310440
004dddd4  64 00 94 e5                                      ldr r0, [r4, #0x64]
004dddd8  01 10 a0 e3                                      mov r1, #1
004ddddc  00 60 a0 e3                                      mov r6, #0
004ddde0  01 00 80 e0                                      add r0, r0, r1
004ddde4  e0 c9 f8 eb                                      bl #0x31056c
004ddde8  64 20 94 e5                                      ldr r2, [r4, #0x64]
004dddec  00 10 a0 e1                                      mov r1, r0
004dddf0  68 00 84 e5                                      str r0, [r4, #0x68]
004dddf4  06 30 a0 e1                                      mov r3, r6
004dddf8  05 00 a0 e1                                      mov r0, r5
004dddfc  94 e5 f8 eb                                      bl #0x317454
004dde00  64 30 94 e5                                      ldr r3, [r4, #0x64]
004dde04  68 20 94 e5                                      ldr r2, [r4, #0x68]
004dde08  05 00 a0 e1                                      mov r0, r5
004dde0c  6c 10 84 e2                                      add r1, r4, #0x6c
004dde10  03 60 c2 e7                                      strb r6, [r2, r3]
004dde14  e1 04 fc eb                                      bl #0x3df1a0
004dde18  01 30 a0 e3                                      mov r3, #1
004dde1c  06 00 53 e1                                      cmp r3, r6
004dde20  04 30 8d e5                                      str r3, [sp, #4]
004dde24  0f 00 00 1a                                      bne #0x4dde68
004dde28  6d 30 84 e2                                      add r3, r4, #0x6d
004dde2c  6e 20 84 e2                                      add r2, r4, #0x6e
004dde30  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dde34  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dde38  02 00 53 e1                                      cmp r3, r2
004dde3c  01 10 20 e0                                      eor r1, r0, r1
004dde40  01 10 43 e5                                      strb r1, [r3, #-1]
004dde44  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dde48  00 10 21 e0                                      eor r1, r1, r0
004dde4c  01 10 c2 e5                                      strb r1, [r2, #1]
004dde50  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dde54  01 20 42 e2                                      sub r2, r2, #1
004dde58  00 10 21 e0                                      eor r1, r1, r0
004dde5c  01 10 43 e5                                      strb r1, [r3, #-1]
004dde60  01 30 83 e2                                      add r3, r3, #1
004dde64  f1 ff ff 3a                                      blo #0x4dde30
004dde68  70 00 94 e5                                      ldr r0, [r4, #0x70]
004dde6c  00 00 50 e3                                      cmp r0, #0
004dde70  00 00 00 0a                                      beq #0x4dde78
004dde74  71 c9 f8 eb                                      bl #0x310440
004dde78  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
004dde7c  01 10 a0 e3                                      mov r1, #1
004dde80  00 60 a0 e3                                      mov r6, #0
004dde84  01 00 80 e0                                      add r0, r0, r1
004dde88  b7 c9 f8 eb                                      bl #0x31056c
004dde8c  6c 20 94 e5                                      ldr r2, [r4, #0x6c]
004dde90  00 10 a0 e1                                      mov r1, r0
004dde94  70 00 84 e5                                      str r0, [r4, #0x70]
004dde98  06 30 a0 e1                                      mov r3, r6
004dde9c  05 00 a0 e1                                      mov r0, r5
004ddea0  6b e5 f8 eb                                      bl #0x317454
004ddea4  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
004ddea8  70 20 94 e5                                      ldr r2, [r4, #0x70]
004ddeac  03 60 c2 e7                                      strb r6, [r2, r3]
004ddeb0  08 d0 8d e2                                      add sp, sp, #8
004ddeb4  70 80 bd e8                                      pop {r4, r5, r6, pc}

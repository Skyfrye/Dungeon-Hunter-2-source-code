; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cee48, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestMoveInZone
; alias: _ZN7Structs17v2QuestMoveInZone8finalizeEv
; demangled: Structs::v2QuestMoveInZone::finalize()
; decoder-mode: arm
004cee48  10 40 2d e9                                      push {r4, lr}
004cee4c  00 40 a0 e1                                      mov r4, r0
004cee50  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cee54  00 00 50 e3                                      cmp r0, #0
004cee58  03 00 00 0a                                      beq #0x4cee6c
004cee5c  77 05 f9 eb                                      bl #0x310440
004cee60  00 30 a0 e3                                      mov r3, #0
004cee64  10 30 84 e5                                      str r3, [r4, #0x10]
004cee68  14 30 84 e5                                      str r3, [r4, #0x14]
004cee6c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cee70  00 00 50 e3                                      cmp r0, #0
004cee74  03 00 00 0a                                      beq #0x4cee88
004cee78  70 05 f9 eb                                      bl #0x310440
004cee7c  00 30 a0 e3                                      mov r3, #0
004cee80  18 30 84 e5                                      str r3, [r4, #0x18]
004cee84  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cee88  04 00 a0 e1                                      mov r0, r4
004cee8c  10 40 bd e8                                      pop {r4, lr}
004cee90  6a e6 ff ea                                      b #0x4c8840

; FUNCTION 0x004cee94, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestMoveInZone
; alias: _ZN7Structs17v2QuestMoveInZoneD1Ev
; demangled: Structs::v2QuestMoveInZone::~v2QuestMoveInZone()
; decoder-mode: arm
004cee94  10 40 2d e9                                      push {r4, lr}
004cee98  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cee9c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ceea0  00 40 a0 e1                                      mov r4, r0
004ceea4  03 30 8f e0                                      add r3, pc, r3
004ceea8  14 00 90 e5                                      ldr r0, [r0, #0x14]
004ceeac  02 20 93 e7                                      ldr r2, [r3, r2]
004ceeb0  00 00 50 e3                                      cmp r0, #0
004ceeb4  08 20 82 e2                                      add r2, r2, #8
004ceeb8  00 20 84 e5                                      str r2, [r4]
004ceebc  00 00 00 0a                                      beq #0x4ceec4
004ceec0  5e 05 f9 eb                                      bl #0x310440
004ceec4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004ceec8  00 00 50 e3                                      cmp r0, #0
004ceecc  00 00 00 0a                                      beq #0x4ceed4
004ceed0  5a 05 f9 eb                                      bl #0x310440
004ceed4  04 00 a0 e1                                      mov r0, r4
004ceed8  56 e6 ff eb                                      bl #0x4c8838
004ceedc  04 00 a0 e1                                      mov r0, r4
004ceee0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ceee4  ec 5b 4c 00 44 2e 00 00                          .byte 0xec, 0x5b, 0x4c, 0x00, 0x44, 0x2e, 0x00, 0x00

; FUNCTION 0x004ceeec, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestMoveInZone
; alias: _ZN7Structs17v2QuestMoveInZoneD0Ev
; demangled: Structs::v2QuestMoveInZone::~v2QuestMoveInZone()
; decoder-mode: arm
004ceeec  10 40 2d e9                                      push {r4, lr}
004ceef0  00 40 a0 e1                                      mov r4, r0
004ceef4  e6 ff ff eb                                      bl #0x4cee94
004ceef8  04 00 a0 e1                                      mov r0, r4
004ceefc  4f 05 f9 eb                                      bl #0x310440
004cef00  04 00 a0 e1                                      mov r0, r4
004cef04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cef08, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestMoveInZone
; alias: _ZN7Structs17v2QuestMoveInZoneD2Ev
; demangled: Structs::v2QuestMoveInZone::~v2QuestMoveInZone()
; decoder-mode: arm
004cef08  10 40 2d e9                                      push {r4, lr}
004cef0c  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cef10  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cef14  00 40 a0 e1                                      mov r4, r0
004cef18  03 30 8f e0                                      add r3, pc, r3
004cef1c  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cef20  02 20 93 e7                                      ldr r2, [r3, r2]
004cef24  00 00 50 e3                                      cmp r0, #0
004cef28  08 20 82 e2                                      add r2, r2, #8
004cef2c  00 20 84 e5                                      str r2, [r4]
004cef30  00 00 00 0a                                      beq #0x4cef38
004cef34  41 05 f9 eb                                      bl #0x310440
004cef38  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cef3c  00 00 50 e3                                      cmp r0, #0
004cef40  00 00 00 0a                                      beq #0x4cef48
004cef44  3d 05 f9 eb                                      bl #0x310440
004cef48  04 00 a0 e1                                      mov r0, r4
004cef4c  39 e6 ff eb                                      bl #0x4c8838
004cef50  04 00 a0 e1                                      mov r0, r4
004cef54  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cef58  78 5b 4c 00 44 2e 00 00                          .byte 0x78, 0x5b, 0x4c, 0x00, 0x44, 0x2e, 0x00, 0x00

; FUNCTION 0x005036b8, declared_size=632, range_size=632, mode=arm
; class-group: Structs::v2QuestMoveInZone
; alias: _ZN7Structs17v2QuestMoveInZone4readEP11IStreamBase
; demangled: Structs::v2QuestMoveInZone::read(IStreamBase*)
; decoder-mode: arm
005036b8  70 40 2d e9                                      push {r4, r5, r6, lr}
005036bc  00 40 a0 e1                                      mov r4, r0
005036c0  08 d0 4d e2                                      sub sp, sp, #8
005036c4  01 50 a0 e1                                      mov r5, r1
005036c8  af ff ff eb                                      bl #0x50358c
005036cc  05 00 a0 e1                                      mov r0, r5
005036d0  10 10 84 e2                                      add r1, r4, #0x10
005036d4  b1 6e fb eb                                      bl #0x3df1a0
005036d8  01 30 a0 e3                                      mov r3, #1
005036dc  00 00 53 e3                                      cmp r3, #0
005036e0  04 30 8d e5                                      str r3, [sp, #4]
005036e4  0f 00 00 1a                                      bne #0x503728
005036e8  11 30 84 e2                                      add r3, r4, #0x11
005036ec  12 20 84 e2                                      add r2, r4, #0x12
005036f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005036f4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005036f8  03 00 52 e1                                      cmp r2, r3
005036fc  01 10 20 e0                                      eor r1, r0, r1
00503700  01 10 43 e5                                      strb r1, [r3, #-1]
00503704  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503708  00 10 21 e0                                      eor r1, r1, r0
0050370c  01 10 c2 e5                                      strb r1, [r2, #1]
00503710  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503714  01 20 42 e2                                      sub r2, r2, #1
00503718  00 10 21 e0                                      eor r1, r1, r0
0050371c  01 10 43 e5                                      strb r1, [r3, #-1]
00503720  01 30 83 e2                                      add r3, r3, #1
00503724  f1 ff ff 8a                                      bhi #0x5036f0
00503728  14 00 94 e5                                      ldr r0, [r4, #0x14]
0050372c  00 00 50 e3                                      cmp r0, #0
00503730  00 00 00 0a                                      beq #0x503738
00503734  41 33 f8 eb                                      bl #0x310440
00503738  10 00 94 e5                                      ldr r0, [r4, #0x10]
0050373c  01 10 a0 e3                                      mov r1, #1
00503740  00 60 a0 e3                                      mov r6, #0
00503744  01 00 80 e0                                      add r0, r0, r1
00503748  87 33 f8 eb                                      bl #0x31056c
0050374c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00503750  00 10 a0 e1                                      mov r1, r0
00503754  14 00 84 e5                                      str r0, [r4, #0x14]
00503758  06 30 a0 e1                                      mov r3, r6
0050375c  05 00 a0 e1                                      mov r0, r5
00503760  3b 4f f8 eb                                      bl #0x317454
00503764  10 30 94 e5                                      ldr r3, [r4, #0x10]
00503768  14 20 94 e5                                      ldr r2, [r4, #0x14]
0050376c  05 00 a0 e1                                      mov r0, r5
00503770  18 10 84 e2                                      add r1, r4, #0x18
00503774  03 60 c2 e7                                      strb r6, [r2, r3]
00503778  88 6e fb eb                                      bl #0x3df1a0
0050377c  01 30 a0 e3                                      mov r3, #1
00503780  06 00 53 e1                                      cmp r3, r6
00503784  04 30 8d e5                                      str r3, [sp, #4]
00503788  0f 00 00 1a                                      bne #0x5037cc
0050378c  19 30 84 e2                                      add r3, r4, #0x19
00503790  1a 20 84 e2                                      add r2, r4, #0x1a
00503794  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503798  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050379c  03 00 52 e1                                      cmp r2, r3
005037a0  01 10 20 e0                                      eor r1, r0, r1
005037a4  01 10 43 e5                                      strb r1, [r3, #-1]
005037a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005037ac  00 10 21 e0                                      eor r1, r1, r0
005037b0  01 10 c2 e5                                      strb r1, [r2, #1]
005037b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005037b8  01 20 42 e2                                      sub r2, r2, #1
005037bc  00 10 21 e0                                      eor r1, r1, r0
005037c0  01 10 43 e5                                      strb r1, [r3, #-1]
005037c4  01 30 83 e2                                      add r3, r3, #1
005037c8  f1 ff ff 8a                                      bhi #0x503794
005037cc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005037d0  00 00 50 e3                                      cmp r0, #0
005037d4  00 00 00 0a                                      beq #0x5037dc
005037d8  18 33 f8 eb                                      bl #0x310440
005037dc  18 00 94 e5                                      ldr r0, [r4, #0x18]
005037e0  01 10 a0 e3                                      mov r1, #1
005037e4  00 60 a0 e3                                      mov r6, #0
005037e8  01 00 80 e0                                      add r0, r0, r1
005037ec  5e 33 f8 eb                                      bl #0x31056c
005037f0  18 20 94 e5                                      ldr r2, [r4, #0x18]
005037f4  00 10 a0 e1                                      mov r1, r0
005037f8  1c 00 84 e5                                      str r0, [r4, #0x1c]
005037fc  06 30 a0 e1                                      mov r3, r6
00503800  05 00 a0 e1                                      mov r0, r5
00503804  12 4f f8 eb                                      bl #0x317454
00503808  18 30 94 e5                                      ldr r3, [r4, #0x18]
0050380c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00503810  05 00 a0 e1                                      mov r0, r5
00503814  20 10 84 e2                                      add r1, r4, #0x20
00503818  03 60 c2 e7                                      strb r6, [r2, r3]
0050381c  1b 56 fd eb                                      bl #0x459090
00503820  01 30 a0 e3                                      mov r3, #1
00503824  06 00 53 e1                                      cmp r3, r6
00503828  04 30 8d e5                                      str r3, [sp, #4]
0050382c  0f 00 00 1a                                      bne #0x503870
00503830  21 30 84 e2                                      add r3, r4, #0x21
00503834  22 20 84 e2                                      add r2, r4, #0x22
00503838  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050383c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503840  03 00 52 e1                                      cmp r2, r3
00503844  01 10 20 e0                                      eor r1, r0, r1
00503848  01 10 43 e5                                      strb r1, [r3, #-1]
0050384c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503850  00 10 21 e0                                      eor r1, r1, r0
00503854  01 10 c2 e5                                      strb r1, [r2, #1]
00503858  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050385c  01 20 42 e2                                      sub r2, r2, #1
00503860  00 10 21 e0                                      eor r1, r1, r0
00503864  01 10 43 e5                                      strb r1, [r3, #-1]
00503868  01 30 83 e2                                      add r3, r3, #1
0050386c  f1 ff ff 8a                                      bhi #0x503838
00503870  05 00 a0 e1                                      mov r0, r5
00503874  24 10 84 e2                                      add r1, r4, #0x24
00503878  04 56 fd eb                                      bl #0x459090
0050387c  01 30 a0 e3                                      mov r3, #1
00503880  00 00 53 e3                                      cmp r3, #0
00503884  04 30 8d e5                                      str r3, [sp, #4]
00503888  0f 00 00 1a                                      bne #0x5038cc
0050388c  25 30 84 e2                                      add r3, r4, #0x25
00503890  26 20 84 e2                                      add r2, r4, #0x26
00503894  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503898  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050389c  03 00 52 e1                                      cmp r2, r3
005038a0  01 10 20 e0                                      eor r1, r0, r1
005038a4  01 10 43 e5                                      strb r1, [r3, #-1]
005038a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005038ac  00 10 21 e0                                      eor r1, r1, r0
005038b0  01 10 c2 e5                                      strb r1, [r2, #1]
005038b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005038b8  01 20 42 e2                                      sub r2, r2, #1
005038bc  00 10 21 e0                                      eor r1, r1, r0
005038c0  01 10 43 e5                                      strb r1, [r3, #-1]
005038c4  01 30 83 e2                                      add r3, r3, #1
005038c8  f1 ff ff 8a                                      bhi #0x503894
005038cc  05 00 a0 e1                                      mov r0, r5
005038d0  28 10 84 e2                                      add r1, r4, #0x28
005038d4  ed 55 fd eb                                      bl #0x459090
005038d8  01 30 a0 e3                                      mov r3, #1
005038dc  00 00 53 e3                                      cmp r3, #0
005038e0  04 30 8d e5                                      str r3, [sp, #4]
005038e4  0f 00 00 1a                                      bne #0x503928
005038e8  2a 30 84 e2                                      add r3, r4, #0x2a
005038ec  29 40 84 e2                                      add r4, r4, #0x29
005038f0  01 10 d3 e5                                      ldrb r1, [r3, #1]
005038f4  01 20 54 e5                                      ldrb r2, [r4, #-1]
005038f8  04 00 53 e1                                      cmp r3, r4
005038fc  02 20 21 e0                                      eor r2, r1, r2
00503900  01 20 44 e5                                      strb r2, [r4, #-1]
00503904  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503908  01 20 22 e0                                      eor r2, r2, r1
0050390c  01 20 c3 e5                                      strb r2, [r3, #1]
00503910  01 10 54 e5                                      ldrb r1, [r4, #-1]
00503914  01 30 43 e2                                      sub r3, r3, #1
00503918  01 20 22 e0                                      eor r2, r2, r1
0050391c  01 20 44 e5                                      strb r2, [r4, #-1]
00503920  01 40 84 e2                                      add r4, r4, #1
00503924  f1 ff ff 8a                                      bhi #0x5038f0
00503928  08 d0 8d e2                                      add sp, sp, #8
0050392c  70 80 bd e8                                      pop {r4, r5, r6, pc}
